# CareerKit v2.0 - Import/Export Test Guide

## Summary of Fixes Applied

1. **Import Permission Error** - Fixed by adding security-scoped resource handling in DataExportService.swift
2. **Publishing Changes Warnings** - Fixed by wrapping initializeDataIfNeeded() calls in Task { @MainActor in } blocks
3. **Missing SF Symbols** - Replaced invalid symbols:
   - "house.laptop" → "laptopcomputer.and.iphone"
   - "doc.stack" → "doc.on.doc.fill"
4. **Layout Constraint Conflicts** - Fixed NSHostingView setup in window controllers
5. **App Initialization** - Cleaned up malformed error handling in CareerKit_v2_0App.swift

## Testing Import Functionality

### Prerequisites
- Have a valid .json backup file from previous export
- Ensure the app has necessary file access permissions

### Test Steps
1. **Open Import Dialog**
   - Click the import/export button in the toolbar (square with arrow icon)
   - Select "Import Data..."
   - Or use keyboard shortcut: ⌘⇧I

2. **Select File**
   - Navigate to your backup .json file
   - Select the file and click "Open"
   - The file picker should now properly handle permissions

3. **Verify Import**
   - Check that all job applications appear in the sidebar
   - Verify documents are imported with correct associations
   - Confirm notes are linked to appropriate jobs
   - Check that all custom fields (skills, locations) are preserved

### Expected Results
- Import completes without permission errors
- Progress indicator shows during import
- Success notification appears
- All data is correctly imported and displayed

## Testing Export Functionality

### Test Steps
1. **Create Test Data**
   - Add at least 2-3 job applications with various statuses
   - Attach documents to some jobs
   - Create notes for different jobs
   - Add custom skills and locations

2. **Export Data**
   - Click the import/export button in the toolbar
   - Select "Export All Jobs..."
   - Or use keyboard shortcut: ⌘⇧E

3. **Save Export**
   - Choose a save location
   - Name the file (e.g., "CareerKit_Backup_2025.json")
   - Click "Save"

4. **Verify Export**
   - Check that the file is created at the specified location
   - Open the JSON file in a text editor
   - Verify it contains:
     - Schema version
     - Export metadata
     - All job applications
     - Associated documents (base64 encoded)
     - Notes with proper associations

### Expected Export Format
```json
{
  "version": "2.0",
  "schemaVersion": 1,
  "exportDate": "2025-07-20T...",
  "applicationInfo": {
    "appVersion": "2.0",
    "platform": "macOS",
    "exportedBy": "User Name"
  },
  "data": {
    "jobs": [...],
    "documents": [...],
    "notes": [...],
    "skills": [...],
    "locations": [...]
  }
}
```

## Edge Cases to Test

1. **Empty Database Export**
   - Export with no jobs
   - Should create valid JSON with empty arrays

2. **Large Files**
   - Import jobs with multiple large PDF documents
   - Verify memory usage remains reasonable

3. **Special Characters**
   - Create jobs with special characters in titles/companies
   - Ensure proper JSON encoding/decoding

4. **Interrupted Operations**
   - Cancel import/export mid-operation
   - Verify app remains stable

## Performance Considerations

- Import/export operations show progress indicators
- Large files are handled efficiently with streaming
- Security-scoped resources are properly released after use

## Troubleshooting

If import fails:
1. Check Console.app for detailed error messages
2. Verify file permissions in System Settings > Privacy & Security
3. Ensure the JSON file is not corrupted
4. Try exporting a fresh backup and comparing structure

## Future Enhancements

- Add selective export (date range, status filter)
- Support CSV export for spreadsheet compatibility
- Implement automatic backup scheduling
- Add cloud sync capabilities