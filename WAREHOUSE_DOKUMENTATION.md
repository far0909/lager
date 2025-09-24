# Warehouse Modul - Komplet Dokumentation

## Oversigt

Warehouse modulet håndterer fil-upload, lagring og administration for butikker i Gavefabrikken systemet. Modulet understøtter både almindelige butikker og cardshops med multiple leveringsdatoer.

## Funktionalitet

### Hovedfunktioner
- **Fil upload**: Multiple filer kan uploades til lager
- **Fil håndtering**: Download, erstat og slet filer
- **Status styring**: Pakkeristatus med forskellige stadier
- **Note system**: To forskellige note-typer (salgssupport og overflytningsordre)
- **Cardshop support**: Separate lager-instanser per leveringsdato
- **Adresse rapporter**: Integration med warehouse portal

### Butiks Typer

#### Almindelige Butikker
- Har én lager-instans per butik
- Bruger kun `shop_id` til identifikation
- Ingen leveringsdato-dropdown

#### Cardshops
- Har multiple lager-instanser per leveringsdato
- Bruger `shop_id` + `expire_date_id` til identifikation
- Dropdown til valg af leveringsdato
- Automatisk initialisering af warehouse_settings records

## Database Struktur

### Tabeller

#### `warehouse_files`
```sql
- id (int, auto_increment)
- filename (varchar) - Genereret filnavn med token
- real_filename (varchar) - Originalt filnavn
- file_size (int) - Filstørrelse i bytes
- extension (varchar) - Filtype
- token (varchar) - Unik identifikation
- shop_id (int) - Butiks ID
- expire_date_id (int, nullable) - Leveringsdato ID (kun for cardshops)
- user_id (int) - Bruger der uploadede
- active (tinyint) - Om filen er aktiv (1) eller slettet (0)
- replace_file (varchar, nullable) - Token for erstattet fil
- replace_file_time (datetime, nullable) - Tidspunkt for erstatning
- created_at (timestamp)
- updated_at (timestamp)
```

#### `warehouse_settings`
```sql
- id (int, auto_increment)
- shop_id (int) - Butiks ID
- expire_date_id (int, nullable) - Leveringsdato ID (kun for cardshops)
- token (varchar) - Unik identifikation
- packaging_status (int) - Pakkeristatus (0-7)
- noter (text) - Salgssupport note
- note_move_order (text) - Overflytningsordre note
- note_from_warehouse_to_gf (text) - Note fra lager til GF
- created_at (timestamp)
- updated_at (timestamp)
```

#### `cardshop_expiredate`
```sql
- id (int, auto_increment)
- shop_id (int) - Cardshop ID
- expire_date_id (int) - Reference til expire_date
- reservation_code (varchar, nullable)
- packing_state (int) - Pakkestand
```

#### `expire_date`
```sql
- id (int, auto_increment)
- expire_date (date) - Leveringsdato
- week_no (int) - Ugenummer
- display_date (varchar) - Formateret dato til visning
- blocked (tinyint) - Om datoen er blokeret
- is_delivery (tinyint) - Om det er en leveringsdato (ekskluderes fra cardshop)
- is_home_delivery (tinyint) - Hjemmelevering
- is_jgk_50 (tinyint) - JGK 50 flag
- is_special_private (int) - Særlig privat
- is_floating (int) - Flydende dato
```

#### `cardshop_settings`
```sql
- shop_id (int) - Identificerer cardshops
- [andre felter...]
```

## PHP Controller (`shopWarehouseController.php`)

### Klasse: `shopWarehouseController`

#### Metoder

##### `Index()`
Tom index metode.

##### `move()`
Flytter filer fra `upload/move/` til `upload/warehouse/`.
- Udtrækker shop_id fra filnavn (første 4 karakterer)
- Genererer nye filnavne med token
- Opretter database records (kommenteret ud)

##### `updateStatus()`
Opdaterer pakkeristatus for butik/leveringsdato.

**Input**:
- `$_POST['shop_id']` (required)
- `$_POST['packaging_status']` (required)
- `$_POST['expire_date_id']` (optional, kun cardshops)

**Pakkeristatus værdier**:
- 0: Ingen status sat
- 1: Lister ikke klar
- 3: Lister godkendt
- 5: Pakkeri igang
- 6: Pakkeri færdig
- 7: Gave plukket / leveret

##### `updateNote()`
Opdaterer salgssupport note.

**Input**:
- `$_POST['shop_id']` (required)
- `$_POST['note']` (required)
- `$_POST['expire_date_id']` (optional)

##### `updateNoteMoveOrder()`
Opdaterer overflytningsordre note.

**Input**:
- `$_POST['shop_id']` (required)
- `$_POST['note']` (required)
- `$_POST['expire_date_id']` (optional)

##### `readStatus()`
Læser warehouse settings for butik/leveringsdato.

**Cardshop logik**:
1. Checker om butik er cardshop via `cardshop_settings`
2. Henter alle leveringsdatoer fra `cardshop_expiredate`
3. Opretter warehouse_settings records for alle gyldige datoer (hvor `is_delivery != 1`)
4. Returnerer settings for specifik leveringsdato

**Normal butik logik**:
1. Søger på kun `shop_id`
2. Opretter record hvis ingen findes

##### `replace()`
Erstatter eksisterende fil.

**Input**:
- `$_POST['token']` - Token for fil der skal erstattes
- `$_FILES['file']` - Ny fil

**Process**:
1. Deaktiverer gammel fil (`active = 0`)
2. Uploader ny fil
3. Opretter ny database record med reference til erstattet fil

##### `deactive()`
Deaktiverer/sletter fil.

**Input**:
- `$_POST['token']` - Token for fil der skal slettes

##### `download()`
Download fil.

**Input**:
- `$_GET['token']` - Token for fil der skal downloades

##### `multiFileupload()`
Upload af multiple filer.

**Input**:
- `$_FILES['files']` - Array af filer
- `$_GET['shop_id']` - Butiks ID
- `$_GET['expire_date_id']` - Leveringsdato ID (optional)

##### `readByShop()`
Henter alle aktive filer for butik/leveringsdato.

**Input**:
- `$_POST['shop_id']` (required)
- `$_POST['expire_date_id']` (optional)

##### `getDeliveryDates()`
Henter leveringsdatoer for cardshop.

**Output**:
```json
{
  "is_cardshop": true/false,
  "delivery_dates": [
    {
      "id": 23,
      "expire_date": "2025-11-02",
      "week_no": 48,
      "display_date": "02-11-2025"
    }
  ]
}
```

### Hjælpefunktion

#### `generateTokenWithTime()`
Genererer unik token med timestamp.
- Bruger `random_bytes(16)` + timestamp
- Base64 encoder resultat

## JavaScript (`shopWarehouse.js`)

### Klasse: `ShopWarehouse`

#### Constructor
```javascript
function ShopWarehouse(shopID, expireDateId = null)
```

**Parametre**:
- `shopID` (number, required) - Butiks ID
- `expireDateId` (number, optional) - Leveringsdato ID for cardshops

#### Metoder

##### `checkAndInitializeCardshop()`
Checker om butik er cardshop og initialiserer dropdown.

**Process**:
1. Kalder `getDeliveryDates` endpoint
2. Hvis cardshop: Viser dropdown og populerer med datoer
3. Hvis ikke cardshop: Skjuler dropdown
4. Auto-vælger første dato hvis ingen valgt

##### `init()`
Initialiserer warehouse interface.

**Process**:
1. Læser filer via `readFiles()`
2. Bygger tabel via `template.buildTable()`
3. Læser status via `readStatus()`
4. Sætter event handlers
5. Opdaterer UI med status

##### `setPackagingStatus(status)`
Opdaterer UI med pakkeristatus og noter.

##### `setEvents()`
Sætter event handlers for:
- Download knapper (`.swh-download`)
- Erstat knapper (`.swh-replace`)
- Slet knapper (`.swh-delete`)
- Status dropdown (`#packaging-status`)
- Update knapper for status og noter
- Warehouse dropdown (`.dropdown-item`)
- Adresse rapport knap (`#getAddressBtn`)

##### `readFiles(shopID)`
Async metode der henter filer fra server.

**Return**: Promise med fil data

##### `readStatus(shopID)`
Async metode der henter status fra server.

**Return**: Promise med status data

### Klasse: `ShopWarehouseTemplate`

#### `buildTable(data)`
Genererer HTML tabel med filer og UI elementer.

**Indhold**:
- Pakkeristatus dropdown
- Fil tabel med handlinger
- Note områder (salgssupport og overflytningsordre)
- Gem knapper

## HTML View (`shopWarehouse_view.php`)

### Struktur

#### Head Section
- Bootstrap 5.3.0 CSS
- jQuery 3.6.0
- ShopWarehouse.js script
- Custom styling for drag & drop

#### Body Content

##### Warehouse Dropdown
Dropdown til valg af warehouse for adresse rapporter.

##### Delivery Date Selector
```html
<div id="delivery-date-selector" class="d-none">
    <label for="delivery-date-dropdown">Vælg Leveringsdato:</label>
    <select id="delivery-date-dropdown" class="form-select">
    </select>
</div>
```

##### File Upload Area
Drag & drop zone med file input og upload knap.

##### Warehouse Container
Container hvor fil tabel og noter indsættes via JavaScript.

##### Modal
Info modal til visning af hjælp eller dokumentation.

### JavaScript Initialization
```javascript
$(document).ready(async function() {
    let shopWarehouse = new ShopWarehouse(<?= $shop_id ?>, <?= $expire_date_id ?? 'null' ?>);

    // Check if cardshop and initialize dropdown
    await shopWarehouse.checkAndInitializeCardshop();

    // Initialize warehouse
    await shopWarehouse.init();

    // Set up delivery date change handler
    $('#delivery-date-dropdown').change(function() {
        let selectedExpireDateId = $(this).val();
        if(selectedExpireDateId) {
            window.location.href = `?shop_id=<?= $shop_id ?>&expire_date_id=${selectedExpireDateId}`;
        }
    });

    // Set up file upload handlers
    // ... upload logic
});
```

## API Endpoints

Alle endpoints bruger base URL: `https://system.gavefabrikken.dk/gavefabrikken_backend/index.php?rt=shopWarehouse/`

### POST Endpoints

#### `/updateStatus`
Opdater pakkeristatus.

**Request**:
```json
{
  "shop_id": 123,
  "packaging_status": 3,
  "expire_date_id": 23  // optional
}
```

#### `/updateNote`
Opdater salgssupport note.

**Request**:
```json
{
  "shop_id": 123,
  "note": "Note tekst",
  "expire_date_id": 23  // optional
}
```

#### `/updateNoteMoveOrder`
Opdater overflytningsordre note.

**Request**:
```json
{
  "shop_id": 123,
  "note": "Overflytningsordre tekst",
  "expire_date_id": 23  // optional
}
```

#### `/readStatus`
Læs warehouse settings.

**Request**:
```json
{
  "shop_id": 123,
  "expire_date_id": 23  // optional
}
```

#### `/readByShop`
Læs filer for butik.

**Request**:
```json
{
  "shop_id": 123,
  "expire_date_id": 23  // optional
}
```

#### `/getDeliveryDates`
Hent leveringsdatoer for cardshop.

**Request**:
```json
{
  "shop_id": 123
}
```

#### `/replace`
Erstat fil.

**Request**: FormData med:
- `file`: Ny fil
- `token`: Token for fil der skal erstattes

#### `/deactive`
Deaktiver fil.

**Request**:
```json
{
  "token": "fil_token"
}
```

#### `/multiFileupload`
Upload multiple filer.

**Request**: FormData med:
- `files[]`: Array af filer
- URL parametre: `shop_id`, `expire_date_id` (optional)

### GET Endpoints

#### `/download`
Download fil.

**Parametre**:
- `token`: Fil token

## Fejlhåndtering

### Frontend
- Alert beskeder for success/error
- Validation af påkrævede felter
- Confirm dialogs for sletning

### Backend
- Response format:
```json
{
  "status": "success|error",
  "data": "...",
  "message": "..."
}
```

## Sikkerhed

### Fil Upload
- Token-baseret adgang til filer
- Filstørrelse begrænsninger
- Extension validation
- Placering udenfor web root

### Database
- Prepared statements (gennem ActiveRecord)
- Input validation
- User ID logging

## Deployment

### Påkrævede Filer
- `shopWarehouseController.php`
- `shopWarehouse.js`
- `shopWarehouse_view.php`
- Database migration scripts

### Folder Struktur
```
upload/
├── warehouse/     # Uploadede filer
└── move/         # Filer til automatisk flytning
```

### Database Migrationer
1. Tilføj `expire_date_id` til `warehouse_files` og `warehouse_settings`
2. Kør cardshop setup scripts hvis nødvendigt

## Vedligeholdelse

### Logning
- Upload aktivitet logges med user_id
- Fil erstatninger trackes med timestamps
- Status ændringer gemmes

### Backup
- Database backup før migrationer
- Fil backup af upload mapper

### Monitoring
- Overvåg disk plads i upload mapper
- Check for ødelagte filer
- Verificer database konsistens

## Troubleshooting

### Almindelige Problemer

#### Dropdown ikke synlig
- Check CSS klasser (`d-none` removal)
- Verificer cardshop detection
- Console log delivery dates response

#### Duplicate records
- Verificer ActiveRecord vs SQL mixing
- Check expire_date_id parametre
- Validate database constraints

#### File upload fejl
- Check folder permissions
- Verificer fil størrelse limits
- Validate extension whitelist

#### JavaScript errors
- Check jQuery loading
- Verificer BASE_AJAX_URL
- Validate JSON parsing

### Debug Tips
- Brug browser console til JavaScript debugging
- Check PHP error logs
- Verificer database queries med logging
- Test med både cardshop og normal butik

## Fremtidige Forbedringer

### Mulige Udvidelser
- Bulk fil operationer
- Advanced search/filtering
- File versioning system
- Email notifikationer
- API rate limiting
- Mobile responsivt design forbedringer

### Performance Optimering
- Database indexing
- Fil caching
- AJAX request batching
- Lazy loading af store fil lister