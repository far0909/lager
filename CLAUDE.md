# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a PHP-based warehouse management system for GaveFabrikken (Gift Factory) that handles file management, status tracking, and warehouse operations. The system supports both regular shops and cardshops with multiple delivery dates. The system consists of a backend controller, frontend view, and JavaScript client interface.

## Architecture

### Core Components

**Backend (PHP)**
- `shopWarehouseController.php`: Main controller extending `baseController` that handles all warehouse operations
- Database models: `WarehouseFiles` and `WarehouseSettings` (ActiveRecord pattern)
- Response handling via `response::success()` method

**Frontend**
- `shopWarehouse_view.php`: Bootstrap 5-based HTML interface with drag-and-drop file upload
- `shopWarehouse.js`: JavaScript class-based architecture with `ShopWarehouse` and `ShopWarehouseTemplate` classes

**Database**
- `warehouse_files.sql`: File storage table structure (includes `expire_date_id` for cardshop delivery dates)
- `warehouse_settings.sql`: Configuration and status tracking table structure (includes `expire_date_id` for cardshop delivery dates)
- `cardshop_settings.sql`: Cardshop configuration and delivery periods
- `expire_date.sql`: Available delivery dates
- `cardshop_expiredate.sql`: Mapping between cardshops and their delivery dates

### Key Functionality

**File Management**
- Multi-file upload via drag-and-drop interface
- File replacement and deactivation (soft delete)
- Token-based file identification and security
- File download with original filename preservation
- Delivery date-specific file organization for cardshops

**Status Management**
- Packaging status workflow (0: No status → 1: Lists not ready → 3: Lists approved → 5: Packaging in progress → 6: Packaging complete → 7: Gift picked/delivered)
- Real-time status monitoring with 60-second polling
- Notes system for warehouse communications
- Separate status tracking per delivery date for cardshops

**Cardshop Support**
- Automatic detection of cardshop vs regular shop
- Dynamic delivery date dropdown for cardshops
- Independent warehouse instances per delivery date
- URL parameter support: `?shopID=52&expireDateId=22`

**Security**
- Token-based file access using `generateTokenWithTime()` function
- Shop ID-based access control
- File validation and secure upload handling

## Development Notes

### File Structure Pattern
- Controllers extend `baseController`
- Models use ActiveRecord pattern (`Model::find()`, `Model::createFiles()`, `Model::updateFiles()`)
- JavaScript uses class-based architecture with async/await

### Database Interaction
- Uses custom `Dbsqli::setSql2()` for direct SQL execution
- ActiveRecord methods for standard CRUD operations
- All database operations are shop_id scoped

### API Endpoints
Base URL: `https://system.gavefabrikken.dk/gavefabrikken_backend/index.php?rt=`

Key endpoints:
- `shopWarehouse/readByShop` - Get files for shop (supports `expire_date_id` parameter)
- `shopWarehouse/readStatus` - Get warehouse status (supports `expire_date_id` parameter)
- `shopWarehouse/multiFileupload` - Upload multiple files (supports `expire_date_id` parameter)
- `shopWarehouse/updateStatus` - Update packaging status (supports `expire_date_id` parameter)
- `shopWarehouse/updateNote` - Update notes (supports `expire_date_id` parameter)
- `shopWarehouse/updateNoteMoveOrder` - Update move order notes (supports `expire_date_id` parameter)
- `shopWarehouse/getDeliveryDates` - Get delivery dates for cardshops
- `shopWarehouse/download` - Download file by token

### JavaScript Architecture
- `ShopWarehouse(shopID, expireDateId)` class handles business logic and API communication
- `ShopWarehouseTemplate` class generates HTML templates
- `StatusHandler` class manages real-time status updates
- Event binding uses jQuery with `.unbind().click()` pattern to prevent duplicate handlers
- Cardshop support: Automatically loads delivery dates and shows dropdown selector

### File Upload System
- Files stored in `upload/warehouse/` directory
- Original filenames preserved in database
- Unique tokens generated for file access
- Drag-and-drop interface with visual feedback
- Files associated with specific delivery dates for cardshops

## Cardshop Implementation

### Database Design
- `expire_date_id` column added to `warehouse_files` and `warehouse_settings`
- Regular shops: `expire_date_id = NULL`
- Cardshops: `expire_date_id` references `expire_date.id`

### Logic Flow
1. Page loads with `shopID` parameter
2. AJAX call to `getDeliveryDates` checks if shop is cardshop
3. If cardshop: Show delivery date dropdown, require selection to proceed
4. If regular shop: Initialize warehouse module directly
5. All operations scoped by `shop_id` + `expire_date_id` combination

### URL Structure
- Regular shop: `shopWarehouse_view.php?shopID=123`
- Cardshop: `shopWarehouse_view.php?shopID=123&expireDateId=45`