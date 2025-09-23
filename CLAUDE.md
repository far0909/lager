# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a PHP-based warehouse management system for GaveFabrikken (Gift Factory) that handles file management, status tracking, and warehouse operations. The system consists of a backend controller, frontend view, and JavaScript client interface.

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
- `warehouse_files.sql`: File storage table structure
- `warehouse_settings.sql`: Configuration and status tracking table structure

### Key Functionality

**File Management**
- Multi-file upload via drag-and-drop interface
- File replacement and deactivation (soft delete)
- Token-based file identification and security
- File download with original filename preservation

**Status Management**
- Packaging status workflow (0: No status → 1: Lists not ready → 3: Lists approved → 5: Packaging in progress → 6: Packaging complete → 7: Gift picked/delivered)
- Real-time status monitoring with 60-second polling
- Notes system for warehouse communications

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
- `shopWarehouse/readByShop` - Get files for shop
- `shopWarehouse/readStatus` - Get warehouse status
- `shopWarehouse/multiFileupload` - Upload multiple files
- `shopWarehouse/updateStatus` - Update packaging status
- `shopWarehouse/download` - Download file by token

### JavaScript Architecture
- `ShopWarehouse` class handles business logic and API communication
- `ShopWarehouseTemplate` class generates HTML templates
- `StatusHandler` class manages real-time status updates
- Event binding uses jQuery with `.unbind().click()` pattern to prevent duplicate handlers

### File Upload System
- Files stored in `upload/warehouse/` directory
- Original filenames preserved in database
- Unique tokens generated for file access
- Drag-and-drop interface with visual feedback