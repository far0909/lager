# Warehouse Portal Cardshop Support - Dokumentation

## Oversigt

Denne dokumentation beskriver ændringerne til warehouse portal systemet for at understøtte cardshops med multiple leveringsdatoer (expire_date_id). Portalen bruges af lagere til at se og håndtere butiks information, filer og status.

## Hovedændringer

### 1. Cardshop Identifikation
- Cardshops vises som separate rækker for hver leveringsdato
- Normale butikker vises som én række per butik
- Visuel skelnen mellem cardshops og normale butikker

### 2. Nye Tabelkolonner
- **Shop Type**: "Normal" eller "Cardshop"
- **Expire Date**: Leveringsdato for cardshops (formateret)
- **Expire ID**: expire_date_id nummer for reference

### 3. Data Segregering
- Alle warehouse data (filer, status, noter) er separate per expire_date_id
- Modal system håndterer expire_date_id context
- Filtrering og søgning fungerer med cardshop data

## Tekniske Implementering

### warehousePortalController.php Ændringer

#### readShopData() Metode
**Original funktionalitet**: Henter butiks data via shop_id
**Ny funktionalitet**:
- Identificerer cardshops via cardshop_settings
- Henter alle expire_date_id for cardshops
- Returnerer separate rækker per leveringsdato
- Tilføjer shop_type og expire_date information

#### readStatus() Metode
**Ny funktionalitet**:
- Accepterer optional expire_date_id parameter
- Håndterer både normale butikker og cardshops
- Returnerer korrekte warehouse_settings baseret på shop_id + expire_date_id

#### readShopDownloadData() Metode
**Ny funktionalitet**:
- Filtrerer warehouse_files baseret på expire_date_id for cardshops
- Bibeholder original funktionalitet for normale butikker

#### Update Metoder (updateStatus, updateNoteToGf, approval)
**Ny funktionalitet**:
- Accepterer optional expire_date_id parameter
- Opdaterer korrekte warehouse_settings records
- Håndterer både cardshops og normale butikker

### warehousePortal.js Ændringer

#### mainTemplate() Funktion
**Nye kolonner**:
```javascript
// Tilføjede kolonner i tabel header
<th>Shop Type</th>      // Kolonne 14
<th>Expire Date</th>    // Kolonne 15
<th>Expire ID</th>      // Kolonne 16
```

**Række data**:
- shop_type: "Cardshop" eller "Normal"
- expire_date: Formateret leveringsdato for cardshops
- expire_date_id: Numerisk ID for cardshops

#### Event Handlers
**Modificerede click handlers**:
- `.hent-filer` sender expire_date_id til backend
- `.info` sender expire_date_id til backend
- Modal system håndterer expire_date_id context

#### DataTable Konfiguration
**Nye kolonner**:
```javascript
{"data": "14"}, // Shop Type
{"data": "15"}, // Expire Date
{"data": "16"}  // Expire ID
```

## Database Queries

### Cardshop Detection Query
```sql
-- Identificer cardshops
SELECT shop_id FROM cardshop_settings WHERE shop_id = ?
```

### Cardshop Expire Dates Query
```sql
-- Hent leveringsdatoer for cardshop
SELECT ce.expire_date_id, ed.display_date, ed.week_no
FROM cardshop_expiredate ce
INNER JOIN expire_date ed ON ed.id = ce.expire_date_id
WHERE ce.shop_id = ? AND ed.is_delivery != 1
```

### Modified readShopData Query
```sql
-- Udvidet query for cardshops
SELECT
    shop.*,
    warehouse_settings.*,
    shop_metadata.*,
    company.*,
    -- Cardshop felter
    cs.shop_id as is_cardshop,
    ce.expire_date_id,
    ed.display_date as expire_display_date,
    ed.week_no as expire_week_no
FROM shop
LEFT JOIN cardshop_settings cs ON cs.shop_id = shop.id
LEFT JOIN cardshop_expiredate ce ON ce.shop_id = shop.id
LEFT JOIN expire_date ed ON ed.id = ce.expire_date_id AND ed.is_delivery != 1
LEFT JOIN warehouse_settings ON warehouse_settings.shop_id = shop.id
    AND (warehouse_settings.expire_date_id = ce.expire_date_id OR warehouse_settings.expire_date_id IS NULL)
-- ... existing joins ...
WHERE navision_location.token LIKE ?
    AND shop.is_gift_certificate = 0
    AND (shop.shop_mode = 1 OR shop.shop_mode = 6)
```

### Warehouse Settings Queries (cardshop-aware)
```sql
-- readStatus for cardshops
SELECT * FROM warehouse_settings
WHERE shop_id IN (SELECT id FROM shop WHERE token LIKE ?)
    AND (expire_date_id = ? OR expire_date_id IS NULL)

-- readShopDownloadData for cardshops
SELECT * FROM warehouse_files
WHERE shop_id IN (SELECT id FROM shop WHERE token LIKE ?)
    AND active = 1
    AND (expire_date_id = ? OR expire_date_id IS NULL)
```

## API Endpoints Ændringer

### Nye/Modificerede Parametre

#### readStatus
```json
{
  "token": "shop_token",
  "expire_date_id": 23  // optional, kun for cardshops
}
```

#### readShopDownloadData
```json
{
  "token": "shop_token",
  "expire_date_id": 23  // optional, kun for cardshops
}
```

#### updateStatus
```json
{
  "token": "shop_token",
  "packaging_status": 3,
  "expire_date_id": 23  // optional, kun for cardshops
}
```

#### updateNoteToGf
```json
{
  "token": "shop_token",
  "note_from_warehouse_to_gf": "Note tekst",
  "expire_date_id": 23  // optional, kun for cardshops
}
```

#### approval
```json
{
  "token": "shop_token",
  "expire_date_id": 23,  // optional, kun for cardshops
  "approved_count_date": "01-01-2025",
  "approved_count_date_approved_by": "JD",
  // ... andre approval felter
}
```

## Frontend Visning

### Tabel Layout
```
| SO-NR | Shop navn | ... | Shop Type | Expire Date | Expire ID | Handling |
|-------|-----------|-----|-----------|-------------|-----------|----------|
| SO123 | Butik A   | ... | Normal    |             |           | [Knapper]|
| SO456 | Cardshop B| ... | Cardshop  | 02-11-2025  | 23        | [Knapper]|
| SO456 | Cardshop B| ... | Cardshop  | 16-11-2025  | 25        | [Knapper]|
```

### Visuel Skelnen
- **Cardshop rækker**: Lyseblå baggrund (#E3F2FD)
- **Normal butik rækker**: Standard hvid/grå baggrund
- **Shop Type kolonne**: Tydelig "Cardshop" vs "Normal" markering
- **Expire Date**: Formateret som DD-MM-YYYY med uge nummer

### Modal Ændringer
- Modal titel inkluderer expire_date information for cardshops
- Status og fil operationer er kontekst-bevidst (expire_date_id)
- Approval formularer håndterer expire_date_id

## Filtrering og Søgning

### Nye Filter Optioner
- **Shop Type Filter**: "Alle", "Normale Butikker", "Cardshops"
- **Expire Date Filter**: Dropdown med tilgængelige leveringsdatoer
- **Eksisterende filters**: Fungerer med nye data

### DataTable Integration
```javascript
// Nye kolonne definitions
"columnDefs": [
    {"width": "80px", "targets": 14},   // Shop Type
    {"width": "100px", "targets": 15},  // Expire Date
    {"width": "70px", "targets": 16},   // Expire ID
    {"type": "date-dk", "targets": 15}, // Date sorting
    {"orderable": true, "targets": [14, 15, 16]}
]
```

## Bagudkompatibilitet

### Normal Butik Håndtering
- Alle existing funktioner fungerer uændret
- expire_date_id er NULL for normale butikker
- SQL queries håndterer NULL expire_date_id korrekt
- Frontend viser tomme celler for normale butikker

### Existing Data
- Warehouse_settings records med NULL expire_date_id fortsætter arbejde
- Ingen migration påkrævet for existing data
- Nye cardshop records oprettes automatisk ved behov

## Test Scenarier

### Cardshop Tests
1. **Visning**: Cardshop vises som multiple rækker (én per expire_date_id)
2. **Filtrering**: Kan filtrere på shop type og expire date
3. **Modal**: Åbner korrekt modal med expire_date context
4. **Status Update**: Opdaterer kun den specifikke expire_date_id
5. **File Download**: Henter kun filer for den specifikke expire_date_id

### Normal Butik Tests
1. **Visning**: Vises som enkelte rækker som før
2. **Funktionalitet**: Alle existing funktioner fungerer uændret
3. **Modal**: Åbner uden expire_date_id context
4. **Kompatibilitet**: Ingen ændringer i behavior

### Edge Cases
1. **Cardshop uden expire_date**: Håndteres gracefully
2. **Mixed data**: Portalen kan vise både cardshops og normale butikker
3. **Tomme resultater**: Korrekt håndtering af shops uden warehouse data

## Deployment Noter

### Krævet Setup
- Ingen database ændringer nødvendige (expire_date_id kolonner findes allerede)
- Cardshop_settings, cardshop_expiredate, expire_date tabeller skal være populated
- Existing warehouse portal login credentials fungerer uændret

### Performance Overvejelser
- SQL queries er mere komplekse pga. cardshop joins
- DataTable håndterer flere rækker for cardshops
- Modal operationer kan være lidt langsommere pga. expire_date_id lookups

### Monitoring
- Overvåg SQL query performance i readShopData()
- Check for korrekt expire_date_id håndtering i logs
- Verificer at normale butikker ikke påvirkes negativt

## Fremtidige Udvidelser

### Mulige Forbedringer
- Bulk operations på multiple expire_date_id
- Advanced filtering på expire date ranges
- Export funktioner der håndterer cardshop data korrekt
- Dashboard views for cardshop oversigt

### Vedligeholdelse
- Regular cleanup af orphaned warehouse_settings records
- Monitoring af cardshop_expiredate synchronization
- Performance tuning af complex SQL queries