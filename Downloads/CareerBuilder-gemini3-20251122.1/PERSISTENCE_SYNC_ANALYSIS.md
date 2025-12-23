# CareerJourney Persistence & Sync Analysis

**Generated**: December 23, 2025
**Agent**: Persistence & Sync Specialist
**Focus**: CloudKit Integration, SwiftData Configuration, Offline Capability, Backup Strategy

---

## Executive Summary

This report defines the persistence and synchronization strategy for "CareerJourney". The app will use **SwiftData** backed by **CloudKit** to ensure seamless synchronization between macOS and iOS devices. The architecture prioritizes **offline-first** usage, where the local database is the source of truth, and synchronization happens opportunistically in the background.

## 1. SwiftData & CloudKit Configuration

### 1.1 Model Container Setup
We will use a single `ModelContainer` configured for the `JobApplication` schema. CloudKit requires a specific configuration to enable the mirroring delegate.

```swift
import SwiftData
import Foundation

@MainActor
final class DataController {
    static let shared = DataController()
    
    let container: ModelContainer
    
    init() {
        let schema = Schema([
            JobApplication.self,
            Company.self,
            Contact.self,
            Interaction.self,
            Attachment.self
        ])
        
        // CloudKit-enabled configuration
        let modelConfiguration = ModelConfiguration(
            "CareerJourney",
            schema: schema,
            isStoredInMemoryOnly: false,
            allowsSave: true,
            cloudKitDatabase: .private // Explicitly target private user database
        )
        
        do {
            container = try ModelContainer(for: schema, configurations: modelConfiguration)
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }
}
```

### 1.2 CloudKit Requirements
To support `NSPersistentCloudKitContainer` mirroring (which SwiftData uses under the hood):

1.  **Entitlements**:
    *   Enable **iCloud** capability.
    *   Check **CloudKit**.
    *   Create a generic iCloud Container: `iCloud.com.yourcompany.CareerJourney`.
2.  **Background Modes**:
    *   Enable **Remote notifications** (to receive silent push notifications for data changes).
3.  **Model Compliance**:
    *   All relationships must be **optional** (`?`).
    *   Properties should have default values where possible.
    *   The schema defined in `DATA_MANAGEMENT_ANALYSIS_REPORT.md` adheres to these rules (relationships are optional or arrays, which are supported).

## 2. Sync Strategy

### 2.1 Private Database
We will strictly use the **Private Database** (`.private`). This ensures:
*   **Privacy**: User data is encrypted and only accessible to them.
*   **Quota**: Data counts against the user's iCloud storage, not the developer's public quota.
*   **Automatic Sync**: SwiftData handles the mirroring of local changes to the private database automatically.

### 2.2 Conflict Resolution
*   **Strategy**: **Last-Writer-Wins (LWW)** (Default behavior).
*   **Justification**: For a single-user job tracker, complex merge policies are rarely needed. If a user edits a note on iPhone and Mac simultaneously, the latest save persists.
*   **Implementation**: SwiftData manages this internally. We do not need custom merge policy logic for V1.

### 2.3 Large Data Handling (Attachments)
The `Attachment` entity uses `@Attribute(.externalStorage)`.
*   **Behavior**: SwiftData stores the binary data (`Data?`) in a separate file on disk and keeps a reference in the database.
*   **Sync**: CloudKit mirrors these as `CKAsset`.
*   **Constraint**: We must limit file sizes (e.g., max 10MB per resume) in the UI to prevent excessive iCloud bandwidth usage and storage costs for the user.

## 3. Schema Migration

We will use `SchemaMigrationPlan` to handle future changes safely.

### 3.1 Versioning Strategy
We will define a `VersionedSchema` for the initial launch (V1).

```swift
enum JobApplicationSchemaV1: VersionedSchema {
    static var versionIdentifier: Schema.Version = Schema.Version(1, 0, 0)
    
    static var models: [any PersistentModel.Type] {
        [JobApplication.self, Company.self, Contact.self, Interaction.self, Attachment.self]
    }
}
```

### 3.2 Migration Plan
When V2 is needed (e.g., adding a new property), we will define a migration stage.

```swift
enum MigrationPlan: SchemaMigrationPlan {
    static var schemas: [any VersionedSchema.Type] {
        [JobApplicationSchemaV1.self, /* JobApplicationSchemaV2.self */]
    }
    
    static var stages: [MigrationStage] {
        [
            // Example:
            // .lightweight(from: JobApplicationSchemaV1.self, to: JobApplicationSchemaV2.self)
        ]
    }
}
```

## 4. Backup & Export (Data Portability)

Users should feel safe that their career data isn't locked in.

### 4.1 JSON Export (Full Backup)
We will implement a `DataExportService` that serializes the object graph to JSON.

```swift
struct ExportData: Codable {
    let applications: [JobApplicationDTO]
    let generatedAt: Date
    let version: String
}
```

*   **Format**: Human-readable JSON.
*   **Images/PDFs**: Exported to a companion folder (Zip archive containing `data.json` + `attachments/`).

### 4.2 CSV Export (Reporting)
*   **Format**: Flattened CSV file.
*   **Focus**: `JobApplications` table.
*   **Columns**: Company, Position, Status, Date Applied, Salary, etc.
*   **Use Case**: Analysis in Excel/Numbers.

## 5. Offline & Network Handling

*   **Offline-First**: SwiftData writes to the local SQLite database immediately. The UI updates instantly.
*   **Sync Status**: We will not expose granular sync status (e.g., "Syncing...") in the primary UI to avoid clutter, as CloudKit is designed to be invisible.
*   **Error Handling**: Silent failures in sync are retried by the OS. We will only alert users for **Account Status** issues (e.g., "iCloud Drive is full" or "Not signed in").

## 6. Implementation Checklist

- [ ] Add iCloud Capability to Xcode Project.
- [ ] Create `DataController` with CloudKit configuration.
- [ ] Implement `Codable` conformance for all SwiftData models (for export).
- [ ] Build `DataExportService` (JSON/CSV).
- [ ] Test sync between macOS Simulator and iOS Simulator (using signed-in iCloud account).

## 7. Testing Implications

*   **Unit Tests**: Use `ModelConfiguration(isStoredInMemoryOnly: true)` to test logic without disk/sync side effects.
*   **Integration Tests**: UI Tests should run against a local persistent store (not in-memory) to verify persistence, but disable CloudKit entitlements in test targets to avoid polluting the developer's real iCloud account.

## Conclusion
The persistence layer is straightforward but robust, leveraging the modern **SwiftData + CloudKit** stack. By adhering to the `.private` database and standard mirroring, we gain multi-device sync with minimal code. The critical path is ensuring the initial Schema is stable to minimize early migration complexities.
