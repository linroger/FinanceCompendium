# CareerJourney: Application Specification & Build Plan

This document outlines the complete specification for the **CareerJourney** macOS application. It is designed to serve as a blueprint for an AI coding model to build a polished, feature-complete, and production-ready version of the app from scratch.

---

## 1. High-Level Summary

### 1.1. App Essence & Purpose

**CareerJourney** is a native macOS application designed to be the ultimate co-pilot for job seekers. It empowers users to meticulously track, manage, and analyze their job search process, transforming a typically chaotic experience into a structured and data-driven journey. The app serves as a centralized hub for every aspect of a job application, from initial discovery to final offer, providing tools for organization, analysis, and optimization.

### 1.2. Target Audience

The primary audience includes students, new graduates, and experienced professionals actively seeking employment. It caters to individuals who manage multiple job applications simultaneously and wish to approach their job search with the same rigor and analytical mindset they apply to their professional work.

### 1.3. Core Value Proposition

CareerJourney's core value is **clarity and control**. It replaces scattered spreadsheets, notes, and documents with a single, elegant, and intelligent system. By providing insightful analytics, AI-powered assistance, and a beautiful native interface, it helps users understand their job search performance, identify areas for improvement, and ultimately land their dream job faster.

---

## 2. Technical Stack & Frameworks

*   **Platform:** macOS
*   **Language:** Swift
*   **UI Framework:** SwiftUI (latest version)
*   **Data Persistence:** SwiftData for a modern, robust, and type-safe data layer.
*   **AI & Machine Learning:** Apple's `FoundationModels` framework for on-device, privacy-preserving LLM tasks like job description parsing.
*   **Mapping:** MapKit for visualizing job locations.
*   **Charting:** Swift Charts for native and performant data visualizations.
*   **Dependencies:** The project is self-contained and avoids external dependencies, relying on native Apple frameworks to ensure stability and performance.

---

## 3. Project Structure & Conventions

The project follows a clean, feature-oriented architecture.

```
CareerJourney/
├── Core/
│   ├── Models/         # SwiftData models (Job, Document, Note)
│   ├── Services/       # Business logic (Parsing, Sync, Error Handling)
│   └── Utilities/      # Reusable helpers and extensions
├── Features/
│   ├── Jobs/
│   │   ├── Views/
│   │   └── ViewModels/
│   ├── Documents/
│   ├── Notes/
│   ├── Stats/
│   └── Settings/
├── UIComponents/       # Reusable SwiftUI views (Buttons, Cards, Badges)
└── Resources/          # Assets, templates, etc.
```

**Conventions:**

*   **MVVM:** The Model-View-ViewModel pattern is strictly followed.
*   **SwiftData:** All data models are defined using the `@Model` macro. Data access and manipulation are centralized in "Store" classes (`JobStore`, `DocumentStore`, `NoteStore`) which act as the primary ViewModels.
*   **Native UI:** The UI exclusively uses native SwiftUI components, adhering to Apple's Human Interface Guidelines (HIG) for macOS to ensure a seamless and familiar user experience.
*   **Error Handling:** A `UnifiedErrorSystem` provides a centralized, user-friendly way to present errors, warnings, and success messages.
*   **Asynchronous Operations:** `async/await` is used for all long-running tasks to keep the UI responsive.

---

## 4. Build Workflow & Task Breakdown

This section breaks down the development process into phases and discrete tasks, using the **EARS (Easy Approach to Requirements Syntax)** notation where applicable.

### Phase 1: Requirements Definition (User Stories)

| ID | User Story (EARS Format) | Acceptance Criteria |
| :--- | :--- | :--- |
| **Epic 1: Job Application Management** |
| US1.1 | **As a user**, I want to **add a new job application** so that I can track it. | - The system shall provide a form with fields for Company, Title, Status, Date, Location, URL, Salary, Description, Cover Letter, and Notes.<br>- The system shall validate that Company and Title are not empty.<br>- The system shall save the new application to the SwiftData store. |
| US1.2 | **As a user**, I want to **view a list of all my applications** so that I can get an overview. | - The system shall display a list of jobs in a sidebar.<br>- Each list item shall show the Company, Title, and Status.<br>- The system shall allow sorting the list by Date, Company, and Title. |
| US1.3 | **As a user**, I want to **view the details of a selected application** so that I can review all its information. | - When a job is selected from the list, the system shall display all its details in a main content view.<br>- The system shall render the job description as Markdown. |
| US1.4 | **As a user**, I want to **edit an existing application** so that I can update its information. | - The system shall provide a form pre-filled with the selected job's data.<br>- The system shall persist any changes to the SwiftData store. |
| US1.5 | **As a user**, I want to **delete an application** so that I can remove it from my records. | - The system shall prompt for confirmation before deletion.<br>- Upon confirmation, the system shall permanently remove the job and its associated data. |
| **Epic 2: Document & Note Management** |
| US2.1 | **As a user**, I want to **attach documents (PDF, DOCX) to a job application** so that I can keep related files organized. | - The system shall allow uploading one or more documents via a file picker or drag-and-drop.<br>- The system shall display a list of attached documents in the job detail view.<br>- The system shall provide a Quick Look preview for documents. |
| US2.2 | **As a user**, I want to **create and edit notes for each application** so that I can record thoughts and interview details. | - The system shall provide a rich text editor for notes within the job detail view.<br>- The system shall support Markdown formatting for notes. |
| **Epic 3: AI-Powered Parsing** |
| US3.1 | **As a user**, I want to **paste a raw job description and have the app parse it** so that I can add jobs faster. | - When text is pasted into the job description field, the system shall use the `FoundationModels` framework to automatically extract and populate the Title, Company, Location, and Salary fields.<br>- The system shall reformat the raw description into clean Markdown. |
| **Epic 4: Analytics & Insights** |
| US4.1 | **As a user**, I want to **see a dashboard of my job search statistics** so that I can understand my performance. | - The system shall display key metrics: Total Applications, Interview Rate, Offer Rate.<br>- The system shall visualize the distribution of application statuses (e.g., in a pie chart).<br>- The system shall show a timeline of application activity.<br>- The system shall show a timeline of application activity. |

### Phase 2: Design & Architecture

| ID | Design Task | Implementation Details |
| :--- | :--- | :--- |
| DA2.1 | **Data Model Architecture** | - Define three primary SwiftData models: `SwiftDataJobApplication`, `SwiftDataJobDocument`, `SwiftDataNote`.<br>- `SwiftDataJobApplication` will have a to-many relationship with `SwiftDataJobDocument`.<br>- `SwiftDataNote` will have an optional to-one relationship with `SwiftDataJobApplication`.<br>- Use `Codable` conformance for easy import/export. |
| DA2.2 | **ViewModel/Store Architecture** | - Create `@MainActor @Observable` classes: `JobStore`, `DocumentStore`, `NoteStore`.<br>- Each store will hold a reference to the `ModelContext` and manage a published array of its corresponding data type.<br>- All CRUD operations and business logic will be encapsulated within these stores. |
| DA2.3 | **UI Architecture** | - The main `ContentView` will use a `NavigationSplitView`.<br>- The sidebar will contain the `ConsolidatedJobSidebar` view, which displays the list of jobs.<br>- The detail pane will contain a `TabView` to switch between `ConsolidatedJobDetailView`, `NativeStatsView`, `EnhancedDocumentsMainView`, and `ConsolidatedNotesView`. |
| DA2.4 | **AI Parser Service** | - Create a `JobPostingParser` class.<br>- This class will encapsulate the `LanguageModelSession` from `FoundationModels`.<br>- It will define a `@Generable` struct `ParsedJobPosting` to guide the LLM's output.<br>- It will include a fallback mechanism using regex for systems where Foundation Models are unavailable. |

### Phase 3: Implementation Plan

| ID | Task | Description |
| :--- | :--- | :--- |
| **Sprint 1: Core Application Shell & Job Management** |
| T1.1 | **Project Setup** | Create a new Xcode project for a native macOS app using SwiftUI and SwiftData. |
| T1.2 | **Data Models** | Implement the `SwiftDataJobApplication`, `SwiftDataJobDocument`, and `SwiftDataNote` models. |
| T1.3 | **Main View** | Create the main `ContentView` with a `NavigationSplitView` and placeholder sidebar/detail views. |
| T1.4 | **JobStore** | Implement the `JobStore` with functions for adding, fetching, and deleting jobs. |
| T1.5 | **Job Sidebar** | Build the `ConsolidatedJobSidebar` to display a list of jobs from the `JobStore`. |
| T1.6 | **Job Detail View** | Build the `ConsolidatedJobDetailView` to display the details of the selected job. |
| T1.7 | **Add/Edit Forms** | Create the `AddJobView` and `EditJobView` using a shared `JobFormSection` component. |
| **Sprint 2: Document & Note Integration** |
| T2.1 | **DocumentStore** | Implement the `DocumentStore` for managing document uploads and storage. |
| T2.2 | **Document UI** | Integrate document uploading (drag-and-drop, file picker) and viewing (Quick Look) into the job detail view. |
| T2.3 | **NoteStore** | Implement the `NoteStore` for managing notes. |
| T2.4 | **Notes UI** | Add a Markdown-enabled `TextEditor` to the job detail view for notes. |
| **Sprint 3: AI & Analytics** |
| T3.1 | **AI Parser Service** | Implement the `JobPostingParser` using `FoundationModels`. |
| T3.2 | **Parser Integration** | Integrate the parser into the `AddJobView` to auto-fill fields from pasted text. |
| T3.3 | **Stats ViewModel** | Create a `StatsViewModel` to calculate key metrics from the `JobStore`. |
| T3.4 | **Stats View** | Build the `NativeStatsView` with `Swift Charts` to visualize the data from the `StatsViewModel`. |
| **Sprint 4: Polishing & Final Features** |
| T4.1 | **Settings View** | Create the `EnhancedSettingsView` to manage app preferences. |
| T4.2 | **Import/Export** | Implement JSON import and export functionality for backing up user data. |
| T4.3 | **Error Handling** | Integrate the `UnifiedErrorSystem` throughout the app. |
| T4.4 | **UI Polish** | Conduct a full UI/UX review, ensuring adherence to HIG, consistent styling, and smooth animations. |

---

## 5. Detailed Feature Descriptions

### 5.1. Job Application Management

The core of the app. It allows users to perform full CRUD (Create, Read, Update, Delete) operations on their job applications.

*   **View:** A vertically scrollable list in the sidebar (`ConsolidatedJobSidebar`). Each row (`JobRowView`) is a compact summary showing company, title, and status.
*   **States:**
    *   **Empty:** A welcoming view (`EmptyJobsView`) prompts the user to add their first job.
    *   **List:** The default state, showing all jobs, sorted as per user's choice.
    *   **Filtered:** The list is dynamically filtered by search text, status, or favorite status.
    *   **No Results:** A view (`NoSearchResultsView`) appears when filters yield no results, offering to clear them.
*   **Interactions:**
    *   Single-click/tap selects a job, displaying its details.
    *   A "+" button opens the "Add Job" sheet.
    *   Context menu on a job row offers Edit, Duplicate, Toggle Favorite, and Delete.
    *   Drag-and-drop functionality for future features like reordering or grouping.

### 5.2. Document Management

Integrated directly with job applications.

*   **View:** A dedicated "Documents" tab (`EnhancedDocumentsMainView`) within the job detail view. It features a grid or list of document cards (`DocumentCard`).
*   **Functionality:**
    *   **Upload:** Users can add documents via a file picker or by dragging files onto the application window.
    *   **Preview:** Clicking a document opens a native Quick Look preview.
    *   **Categorization:** Documents can be categorized (e.g., "Resume," "Cover Letter," "Portfolio"). Categories are managed in a dedicated sidebar (`EnhancedDocumentsSidebar`).
    *   **Templates:** A `DocumentTemplatesView` allows users to create and manage templates (e.g., for cover letters) with placeholders like `[Company Name]`.

### 5.3. AI-Powered Parsing

A key feature to reduce manual data entry.

*   **Trigger:** Automatically invoked when a user pastes text into the job description field in the "Add Job" view. A manual "AI Parse" button is also available.
*   **Process:**
    1.  The text is sent to the `JobPostingParser` service.
    2.  The service uses an on-device `LanguageModelSession` to analyze the text against the `ParsedJobPosting` schema.
    3.  The structured data (JSON) is returned.
    4.  The `AddJobView`'s `JobViewModel` is updated with the extracted data.
    5.  The original job description is replaced with the cleaned Markdown version.
*   **UI Feedback:** A loading indicator is displayed during parsing. Upon completion, a success notification is shown, and the form fields are populated.

### 5.4. Statistics & Analytics

Provides users with insights into their job search.

*   **View:** A dedicated "Statistics" tab (`NativeStatsView`).
*   **Components:**
    *   **Key Metrics:** A set of `StatCard` views displaying headline numbers (Total Applications, Interview Rate, etc.).
    *   **Status Distribution:** A donut chart showing the breakdown of jobs by status.
    *   **Application Timeline:** A line or bar chart showing the number of applications over time.
    *   **Top Companies/Skills:** Bar charts displaying the most frequently applied-to companies and most common skills in job descriptions.
    *   **Activity Graph:** A GitHub-style contribution graph (`ApplicationActivityGraphView`) showing daily application activity.

---

## 6. Advanced Feature Specifications

This section details the features that elevate CareerJourney from a simple tracker to an indispensable career management tool.

### 6.1. Interview Hub

For each job application that progresses to the interview stage, a dedicated "Interview Hub" becomes available. This is a centralized dashboard for managing the entire interview process for that specific role.

*   **Data Model:**
    *   A new `InterviewStage` SwiftData model will be created.
    *   **Properties:** `id: UUID`, `type: InterviewType`, `date: Date`, `interviewer: Contact?`, `notes: String`, `feedback: String`.
    *   `InterviewType` will be an enum: `PhoneScreen`, `Technical`, `Behavioral`, `TeamFit`, `HiringManager`, `OnSiteLoop`, `Final`.
    *   `SwiftDataJobApplication` will have a to-many relationship with `InterviewStage`.

*   **UI/UX:**
    *   Within the `ConsolidatedJobDetailView`, when a job's status is `Interview` or later, a new "Interview" tab appears.
    *   This tab displays a timeline or Kanban board of scheduled interviews.
    *   Each interview card shows the type, date, and interviewer.
    *   Clicking a card opens a detail view for that specific interview, with dedicated fields for notes, questions asked, and post-interview feedback.

*   **Functionality:**
    *   Users can add, edit, and delete interview stages.
    *   **Calendar Integration:** When adding an interview with a date, the app will offer to create an event in the user's default Calendar app, pre-filled with the job title, company, and any notes.

### 6.2. Contact & Network Management

A lightweight CRM to manage professional contacts acquired during the job search.

*   **Data Model:**
    *   A new `Contact` SwiftData model.
    *   **Properties:** `id: UUID`, `name: String`, `title: String`, `company: String`, `email: String?`, `phone: String?`, `linkedinURL: String?`.
    *   `InterviewStage` will have an optional to-one relationship with `Contact`.
    *   `SwiftDataJobApplication` can be linked to multiple contacts (e.g., Recruiter, Hiring Manager).

*   **UI/UX:**
    *   A new top-level section in the main sidebar for "Contacts".
    *   A simple list/detail view for managing all contacts.
    *   When viewing a job, associated contacts are clearly displayed and clickable.
    *   When adding an interviewer to an `InterviewStage`, users can select from existing contacts or create a new one.

*   **Functionality:**
    *   **Contacts App Integration:** Offer a one-time import from the user's macOS Contacts app.
    *   Automatically suggest creating a new contact when parsing a name/email from a job description or notes.

### 6.3. Integrated Task Management

A simple, context-aware to-do list to keep the user on track.

*   **Data Model:**
    *   A new `JobTask` SwiftData model.
    *   **Properties:** `id: UUID`, `title: String`, `isCompleted: Bool`, `dueDate: Date?`, `priority: TaskPriority`.
    *   `TaskPriority` will be an enum: `Low`, `Medium`, `High`.
    *   `JobTask` will have an optional to-one relationship with `SwiftDataJobApplication`.

*   **UI/UX:**
    *   A "Tasks" tab within the `ConsolidatedJobDetailView` shows tasks for that specific job.
    *   A global "Tasks" view, accessible from the main sidebar, shows all tasks, which can be filtered (e.g., "Due Today," "Overdue").
    *   **Smart Suggestions:** The app will proactively suggest tasks. For example:
        *   After an interview is added, suggest: "Send thank-you note to [Interviewer Name]".
        *   If an application was submitted 7 days ago, suggest: "Follow up on [Job Title] application".

*   **Functionality:**
    *   **Reminders:** For tasks with a due date, the app will schedule a notification using the `UserNotifications` framework.

### 6.4. Advanced Analytics & Reporting

Goes beyond basic charts to provide actionable insights.

*   **View:** The `NativeStatsView` will be enhanced with more advanced charting and filtering options.
*   **New Charts & Insights:**
    *   **Application Funnel:** A funnel chart visualizing the drop-off from `Applied` -> `Interview` -> `Offer`.
    *   **Time-to-Response:** A histogram showing how long it takes to hear back from companies after applying.
    *   **Skill-Based Analysis:** A view that correlates skills listed in job descriptions with interview/offer rates. Answers: "Which of my skills are most in-demand?"
    *   **Resume Performance:** If a user attaches different resume files to different applications, the app will analyze and report which resume version yields a higher interview rate.
*   **Reporting:**
    *   A feature to generate a comprehensive, beautifully designed PDF report of the user's entire job search for a given period. The report will include all key metrics, charts, and a summary of activities.

---

## 7. User Interface & User Experience (UI/UX) Philosophy

The app must feel like a first-class macOS citizen. The design should be clean, modern, and intuitive, prioritizing clarity and ease of use.

*   **Native Components:** Exclusively use standard SwiftUI controls styled to match the macOS aesthetic. Avoid custom controls that feel out of place.
*   **Materials & Translucency:** Extensively use materials like `.regularMaterial` and `.sidebar` to create a sense of depth and integration with the desktop wallpaper. The main window should have a translucent sidebar and a slightly less translucent detail pane.
*   **Animation:**
    *   All animations will be purposeful and fluid, using `spring` animations for a natural feel.
    *   `matchedGeometryEffect` will be used for seamless transitions, such as when selecting a job from the list and seeing its header animate into the detail view.
    *   Subtle hover effects (`.onHover`) will be applied to all interactive elements to provide visual feedback.
*   **Keyboard Navigation:**
    *   The app will be fully navigable via the keyboard. A `KeyboardShortcutManager` will manage focus between distinct areas (`FocusArea` enum: `.sidebar`, `.jobList`, `.jobDetail`, etc.).
    *   Standard shortcuts (e.g., `⌘N` for New, `⌘,` for Settings) will be implemented.
    *   Arrow keys will navigate lists, and `Enter` will confirm selections.
*   **Customization:**
    *   The `SettingsManager` will allow users to customize the app's appearance, including accent color, base font size, and density of the UI.
    *   The main toolbar will be customizable by the user (right-click -> "Customize Toolbar...").

---

## 8. Data Management & Synchronization

Data integrity, portability, and accessibility are paramount.

*   **Cloud Sync:**
    *   The app will offer **optional, end-to-end encrypted CloudKit synchronization**.
    *   SwiftData's native CloudKit integration will be used (`ModelConfiguration(cloudKitDatabase: .private)`).
    *   The user must explicitly enable this feature in Settings. The app will clearly explain that their data will be stored in their private iCloud account, inaccessible to the developer.
*   **Import/Export:**
    *   **JSON Backup:** A robust, versioned JSON export (`EnhancedBackupData`) will allow users to back up their entire dataset. This format is designed to be human-readable and durable.
    *   **CSV Import:** To help new users get started, the app will support importing a simple CSV file with columns like `Company`, `Title`, `Date`, `URL`.
*   **Data Migration:**
    *   A `DataMigrationService` will handle schema changes between app versions, ensuring a smooth upgrade path for users without data loss.

---

## 9. System Integrations

The app will integrate deeply with macOS for a seamless workflow.

*   **Share Extension:** A Safari Share Extension will allow users to send a job posting URL directly from their browser into CareerJourney, which will then automatically trigger the AI parsing workflow to create a new application draft.
*   **Spotlight Indexing:** All job applications, notes, and document metadata will be indexed for Spotlight search, allowing users to find their application data directly from the macOS search interface.
*   **Widgets:** A set of configurable SwiftUI widgets for the Notification Center and Desktop will provide at-a-glance information, such as:
    *   Upcoming interviews and tasks.
    *   A summary of recent application activity.
    *   A "heatmap" of application success rates.

---

## 10. Accessibility

The app will be built with accessibility as a core principle, not an afterthought, ensuring it is usable by everyone.

*   **VoiceOver:** Every UI element will have a clear and descriptive accessibility label, value, and hint. Custom actions will be implemented for complex controls.
*   **Dynamic Type:** All text will respect the user's system-wide font size settings. The UI will reflow gracefully at larger text sizes.
*   **Reduced Motion:** All non-essential animations will be disabled when the user has "Reduced Motion" enabled in System Settings.
*   **Color Contrast:** All default color schemes will meet or exceed WCAG AA contrast ratio standards. A high-contrast theme will also be available.
*   **Focus Management:** The keyboard navigation system is central to accessibility, ensuring a logical and predictable path through the application for users of assistive technologies.

---

## 11. Onboarding & Help

A user's first experience should be welcoming and informative.

*   **First-Launch Onboarding:** Upon first launch, the app will present a brief, interactive tour highlighting the three core features: adding a job, parsing a description, and viewing stats.
*   **Sample Data:** New users will be given the option to populate the app with sample data to explore its features without having to enter their own information first.
*   **Contextual Tips:** Subtle, non-intrusive tips will appear to guide users when they first encounter a new feature area.
*   **Help Book:** A comprehensive, searchable in-app help system will be available, explaining every feature in detail.

---

## **Feature Implementation Deep Dive**

### **1. Safari Share Extension: "Clip to CareerJourney"**

This feature allows a user browsing a job posting in Safari to send it directly to CareerJourney, which then automatically parses it and creates a new application draft.

#### **1.1. Feasibility**

**Yes, this is entirely possible.** This is a standard feature of macOS and is implemented by creating a "Share Extension" target within the main Xcode project. The primary technical challenge is the secure communication between the sandboxed Share Extension and the main application.

#### **1.2. Core Concepts**

*   **App Extensions:** Small, focused bundles of code that extend the functionality of macOS. They run in a separate process from the main app.
*   **App Groups:** A capability that allows multiple apps (and their extensions) from the same developer to share a container on disk. This is the standard mechanism for sharing data.
*   **URL Schemes:** A method for one application to launch another and pass data to it via a custom URL format (e.g., `careerjourney://...`).

#### **1.3. Step-by-Step Implementation Plan**

1.  **Create the Share Extension Target:**
    *   In Xcode, add a new target to the `CareerJourney.xcodeproj`.
    *   Select the "Share Extension" template.
    *   Name it `Job Clipper` or similar. This creates a new folder in the project with a `ShareViewController.swift`, an `Info.plist`, and a storyboard (which can be removed if building the UI in SwiftUI).

2.  **Configure the Extension (`Info.plist`):**
    *   The extension's `Info.plist` file must be configured to specify what kind of data it can accept.
    *   Under `NSExtension` -> `NSExtensionAttributes` -> `NSExtensionActivationRule`, set the rule to accept URLs. The predicate would be: `SUBQUERY (extensionItems, $extensionItem, SUBQUERY ($extensionItem.attachments, $attachment, ANY $attachment.registeredTypeIdentifiers UTI-CONFORMS-TO "public.url").@count == 1).@count == 1`.
    *   This rule activates the extension only when a single URL is being shared.

3.  **Enable App Groups for Data Sharing:**
    *   In the "Signing & Capabilities" tab for **both** the main `CareerJourney` app target and the `Job Clipper` extension target, add the "App Groups" capability.
    *   Create a new App Group with an identifier like `group.com.yourdomain.CareerJourney`. This creates a shared container accessible by both the app and the extension.

4.  **Implement the Share Extension Logic (`ShareViewController.swift`):**
    *   The `ShareViewController` is the entry point for the extension. Its purpose is to grab the URL from the host app (Safari) and pass it to the main CareerJourney app.
    *   The most robust method is using a custom URL scheme.

    ```swift
    // Inside ShareViewController
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let extensionItem = extensionContext?.inputItems.first as? NSExtensionItem,
              let attachment = extensionItem.attachments?.first,
              attachment.hasItemConformingToTypeIdentifier("public.url") else {
            self.extensionContext?.cancelRequest(withError: anError)
            return
        }

        attachment.loadItem(forTypeIdentifier: "public.url", options: nil) { [weak self] (item, error) in
            if let url = item as? URL {
                self?.sendURLToMainApp(url)
            }
            self?.extensionContext?.completeRequest(returningItems: [], completionHandler: nil)
        }
    }

    private func sendURLToMainApp(_ jobURL: URL) {
        // Encode the URL to be safely passed as a parameter
        guard let urlString = jobURL.absoluteString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return }

        // Construct the custom URL scheme
        let customURLString = "careerjourney://clipJob?url=\(urlString)"
        guard let customURL = URL(string: customURLString) else { return }

        // Use NSWorkspace to open the URL, which launches the main app
        // This is executed from a helper app to break out of the extension's sandbox
        NSWorkspace.shared.open(customURL)
    }
    ```

5.  **Register the Custom URL Scheme:**
    *   In the `CareerJourney` app target's `Info.plist`, add a "URL Types" entry.
    *   Set the "URL Schemes" to `careerjourney`. This tells macOS that your app is responsible for handling `careerjourney://` URLs.

6.  **Handle the URL in the Main App:**
    *   In the main `CareerJourneyApp.swift` file, use the `.onOpenURL` modifier to receive the URL from the extension.

    ```swift
    // In CareerJourneyApp.swift
    @main
    struct CareerJourneyApp: App {
        var body: some Scene {
            WindowGroup {
                ContentView()
                    .onOpenURL { url in
                        handleIncomingURL(url)
                    }
            }
        }

        private func handleIncomingURL(_ url: URL) {
            guard url.scheme == "careerjourney",
                  url.host == "clipJob",
                  let components = URLComponents(url: url, resolvingAgainstBaseURL: false),
                  let queryItem = components.queryItems?.first(where: { $0.name == "url" }),
                  let jobURLString = queryItem.value,
                  let jobURL = URL(string: jobURLString) else {
                return
            }

            // Now you have the jobURL.
            // Trigger the AI parsing workflow.
            // This could involve showing the "Add Job" sheet and pre-filling the
            // description with the content fetched from jobURL, then starting the parse.
            NotificationCenter.default.post(name: .ClipperDidImport, object: jobURL)
        }
    }
    ```

---

### **2. Spotlight Indexing**

This feature allows users to search for their job applications directly from macOS Spotlight.

#### **2.1. Feasibility**

**Yes, this is entirely possible and highly recommended for a data-driven app.** It's implemented using the `CoreSpotlight` framework.

#### **2.2. Core Concepts**

*   **`CoreSpotlight`:** The framework for adding, updating, and deleting app-specific content from the Spotlight index.
*   **`CSSearchableItem`:** An object representing a single item to be indexed (in our case, a job application).
*   **`CSSearchableItemAttributeSet`:** A set of metadata (title, description, keywords) attached to a `CSSearchableItem`.
*   **User Activity:** A mechanism to handle what happens when a user clicks a Spotlight result, allowing the app to open and navigate to the specific item.

#### **2.3. Step-by-Step Implementation Plan**

1.  **Create an Indexing Service:**
    *   Create a new class, `SpotlightIndexer`, to encapsulate all indexing logic.

2.  **Define Indexing Logic:**
    *   Create a method `indexJob(_ job: SwiftDataJobApplication)` within `SpotlightIndexer`.

    ```swift
    // In SpotlightIndexer.swift
    import CoreSpotlight

    class SpotlightIndexer {
        static let shared = SpotlightIndexer()
        private let index = CSSearchableIndex.default()

        func indexJob(_ job: SwiftDataJobApplication) {
            let attributeSet = CSSearchableItemAttributeSet(contentType: .text)
            attributeSet.title = "\(job.jobTitle) at \(job.companyName)"
            attributeSet.contentDescription = job.jobDescription
            attributeSet.keywords = [job.jobTitle, job.companyName, job.location] + job.desiredSkillNames

            // The unique identifier must be stable and unique to this item.
            let uniqueIdentifier = job.id.uuidString
            let domainIdentifier = "com.yourdomain.CareerJourney.job"

            let searchableItem = CSSearchableItem(
                uniqueIdentifier: uniqueIdentifier,
                domainIdentifier: domainIdentifier,
                attributeSet: attributeSet
            )

            index.indexSearchableItems([searchableItem]) { error in
                if let error = error {
                    print("Indexing error: \(error.localizedDescription)")
                }
            }
        }

        func deindexJob(identifier: String) {
            index.deleteSearchableItems(withIdentifiers: [identifier]) { error in
                if let error = error {
                    print("De-indexing error: \(error.localizedDescription)")
                }
            }
        }
    }
    ```

3.  **Integrate with `JobStore`:**
    *   Call `SpotlightIndexer.shared.indexJob(newJob)` whenever a job is added or updated.
    *   Call `SpotlightIndexer.shared.deindexJob(identifier: job.id.uuidString)` whenever a job is deleted.

4.  **Handle Clicks from Spotlight:**
    *   When a user clicks a result, Spotlight launches the app and provides a "user activity" object. The app must handle this to navigate to the correct content.
    *   In `CareerJourneyApp.swift`, add the `.onContinueUserActivity` modifier.

    ```swift
    // In CareerJourneyApp.swift
    @main
    struct CareerJourneyApp: App {
        @EnvironmentObject var jobStore: JobStore

        var body: some Scene {
            WindowGroup {
                ContentView()
                    .onContinueUserActivity(CSSearchableItemActionType) { userActivity in
                        handleSpotlightSelection(userActivity)
                    }
            }
        }

        private func handleSpotlightSelection(_ userActivity: NSUserActivity) {
            if let uniqueIdentifier = userActivity.userInfo?[CSSearchableItemActivityIdentifier] as? String,
               let jobID = UUID(uuidString: uniqueIdentifier) {
                // The user selected a job.
                // Tell the JobStore to select this job, which will update the UI.
                jobStore.selectedJobIDs = [jobID]
            }
        }
    }
    ```

---

### **3. Widgets**

This feature provides at-a-glance information on the user's desktop or in the Notification Center.

#### **3.1. Feasibility**

**Yes, this is entirely possible.** It's implemented using the `WidgetKit` framework. The main prerequisite is setting up the App Group to share the SwiftData store between the main app and the widget extension.

#### **3.2. Core Concepts**

*   **`WidgetKit`:** The framework for creating widgets.
*   **`TimelineProvider`:** The object that provides `WidgetKit` with a series of "timeline entries" that tell it when to update the widget's view.
*   **`TimelineEntry`:** A single snapshot of data for the widget at a specific time.
*   **Widget View:** A SwiftUI view that renders a single `TimelineEntry`. It must be simple and cannot contain complex interactions or animations.

#### **3.3. Step-by-Step Implementation Plan**

1.  **Create the Widget Extension Target:**
    *   In Xcode, add a new target and select the "Widget Extension" template. Name it `CareerJourneyWidgets`.

2.  **Share the SwiftData Store:**
    *   Ensure the "App Groups" capability is enabled for the widget extension, using the same group identifier as the main app (`group.com.yourdomain.CareerJourney`).
    *   Modify the `ModelContainer` initialization in **both** the main app and the widget extension to use the shared App Group container URL.

    ```swift
    // In both CareerJourneyApp.swift and the Widget's TimelineProvider
    let container: ModelContainer = {
        let groupID = "group.com.yourdomain.CareerJourney"
        guard let url = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: groupID) else {
            fatalError("Could not find shared container.")
        }
        let storeURL = url.appendingPathComponent("CareerJourney.sqlite")
        let config = ModelConfiguration(url: storeURL)
        return try! ModelContainer(for: SwiftDataJobApplication.self, configurations: [config])
    }()
    ```

3.  **Implement the "Upcoming Interviews" Widget:**
    *   **TimelineEntry:**
        ```swift
        struct UpcomingInterviewEntry: TimelineEntry {
            let date: Date
            let interview: InterviewInfo? // A simple struct, not the full SwiftData model
        }
        struct InterviewInfo: Hashable {
            let jobTitle: String
            let companyName: String
            let interviewDate: Date
        }
        ```
    *   **TimelineProvider:**
        *   In `getTimeline`, fetch all `SwiftDataJobApplication`s with an `Interview` status and upcoming interview dates.
        *   Create a `TimelineEntry` for each of the next 1-3 upcoming interviews. Set the `date` of the entry to the interview time.
        *   Create a final entry for some time in the future (e.g., 1 hour after the last interview) to prompt a refresh.
    *   **Widget View:**
        *   Display the `jobTitle`, `companyName`, and a relative time to the interview (e.g., "in 2 hours," "Tomorrow at 10 AM").
        *   If `interview` is `nil`, show a "No upcoming interviews" message.

4.  **Implement the "Recent Activity" Widget:**
    *   **TimelineEntry:**
        ```swift
        struct RecentActivityEntry: TimelineEntry {
            let date: Date
            let recentJobs: [JobInfo] // Simple struct with title, company, status
        }
        ```
    *   **TimelineProvider:**
        *   In `getTimeline`, fetch the 3-5 most recently modified `SwiftDataJobApplication`s.
        *   Create a single `TimelineEntry` with the current date and the fetched job info.
        *   Set a refresh policy to update the timeline periodically (e.g., every hour) using `TimelineReloadPolicy.atEnd`.
    *   **Widget View:**
        *   Display a simple list of the recent jobs, showing the company name and job title for each.

5.  **Implement the "Success Heatmap" Widget:**
    *   **TimelineEntry:**
        ```swift
        struct SuccessHeatmapEntry: TimelineEntry {
            let date: Date
            let successRate: Double // 0.0 to 1.0
            let offerCount: Int
        }
        ```
    *   **TimelineProvider:**
        *   In `getTimeline`, fetch all jobs.
        *   Calculate the success rate: `(offers + accepted) / total`.
        *   Create a single `TimelineEntry` with the current date and the calculated rate.
        *   Set a refresh policy to update once a day.
    *   **Widget View:**
        *   This view would be highly visual. It could be a simple gauge, a colored square (from red to green), or a progress ring.
        *   Display the percentage prominently (e.g., "35%").
        *   Include a subtitle like "\(offerCount) Offers".

---

## **UI/UX Deep Dive: The Core Experience**

This section moves beyond feature lists to define the tangible, pixel-perfect implementation of CareerJourney's user interface. The guiding principle is to create an application that is not just functional, but also intuitive, beautiful, and a joy to use.

### **12. The Main Application Window (`ContentView`)**

The `ContentView` is the root of the application's interface, orchestrating the primary layout and user flow.

*   **Layout:** A three-pane `NavigationSplitView` is the foundation, configured with a `.balanced` style to provide an equitable distribution of space between the sidebar and the detail pane.
    *   **Pane 1 (Sidebar):** The `ConsolidatedJobSidebar`. This pane is always visible and has a minimum width defined by the `ResponsiveLayout` helper (`sidebarMinWidth`) to ensure usability on smaller screens.
    *   **Pane 2 (Detail):** The main content area, which displays the `TabView` containing the job details, stats, documents, and notes.
*   **Background & Materials:** The entire `ContentView` is backed by a `.regularMaterial`, allowing the user's desktop wallpaper to subtly show through, creating a sense of depth and integration with macOS.
*   **State Management:**
    *   The `ContentView` is the source of truth for the currently selected `SidebarSection` (Job Details, Stats, etc.), passing this state down to the detail `TabView`.
    *   It observes the `JobStore`'s `selectedJobIDs` to determine whether to show the detail content or the `noSelectionView`.
*   **Toolbar (`toolbarContent`):** The toolbar is a central point of interaction, designed for clarity and efficiency.
    *   **Placement:** It uses the `.unified` window toolbar style for a modern, clean look.
    *   **Leading Group:** A "Toggle Sidebar" button (`sidebar.left`) is always present.
    *   **Principal Group (Center):** This area is dedicated to context-sensitive filtering and sorting controls for the job list. It includes:
        *   A toggle button for "Favorites" (`star`).
        *   A `Menu` for filtering by `JobStatus` (`line.3.horizontal.decrease.circle`).
        *   A `Menu` for `JobSortOption` (`arrow.up.arrow.down`).
    *   **Trailing Group:** Contains global actions:
        *   A `Menu` for Import/Export (`square.and.arrow.up.on.square`).
        *   A "Help" button (`questionmark.circle`) that opens the `KeyboardHelpView` sheet.
        *   A "Settings" button (`gear`) that opens the `EnhancedSettingsView` sheet.
        *   A primary "Add Job" button (`plus`) with a prominent style.
*   **Keyboard Navigation:** The `ContentView` is the root for the `KeyboardShortcutManager`, handling global shortcuts like `⌘S` to toggle the sidebar and `⌘,` for settings. It manages the `focusedArea` state to programmatically shift focus between the sidebar and detail panes.

### **13. The Job Sidebar (`ConsolidatedJobSidebar`)**

This is the primary navigation and discovery tool for the user's applications.

*   **Header:** A clean header displays "Job Applications" and a live-updating count of filtered vs. total jobs (e.g., "Showing 15 of 82").
*   **Search Bar:**
    *   **Appearance:** A pill-shaped `TextField` with a magnifying glass icon, implemented as the `SearchBar` component. It uses `.regularMaterial` for its background.
    *   **Interaction:** As the user types, the job list filters in real-time (with a 0.3-second debounce to prevent performance issues on large lists). A clear button (`xmark.circle.fill`) appears when text is entered. When focused, the search bar is highlighted with the app's accent color.
*   **Filter Chips:** A horizontally scrolling row of `FilterChip` views provides one-click access to filters.
    *   **Appearance:** Each chip is a capsule-shaped button. An inactive chip has a subtle gray background. An active chip uses the app's accent color with higher contrast text.
    *   **Interaction:** Clicking a status chip filters the list. Clicking the currently active chip clears that filter. The "Favorites" toggle works independently.
*   **Job List Row (`JobRowView`):** This is a high-density, information-rich component.
    *   **Layout:** A `VStack` containing three `HStack`s for a clear visual hierarchy.
    *   **Visual States:**
        *   **Default:** Standard text colors.
        *   **Hover:** The row's background subtly changes to `Theme.Colors.hover` (`.onHover`).
        *   **Selected:** The row has a distinct background color (`Theme.Colors.selection`) and a visible border in the accent color. The transition between states is animated with a gentle spring animation.
    *   **Badges:**
        *   `StatusBadge`: A colored, pill-shaped badge that makes the job's status instantly recognizable.
        *   `DeadlineBadge`: A small, attention-grabbing badge that *only* appears if a job's deadline is within the next two weeks, creating a sense of urgency.
*   **Context Menu:** Right-clicking a `JobRowView` provides quick access to all primary actions: Edit, Duplicate, Toggle Favorite, Change Status (via a sub-menu), and Delete.
*   **Empty & No Results States:**
    *   **`EmptyJobsView`:** Displayed when the user has zero applications. It features a large, friendly icon (`briefcase`), a clear message, and a prominent "Add Your First Job" button. It also includes secondary buttons for "Paste Job" and "Import Backup" to facilitate onboarding.
    *   **`NoSearchResultsView`:** Displayed when filters result in an empty list. It shows the search query, explains that no jobs match, and provides buttons to "Clear Search" and "Clear Filters".

### **14. The Job Detail Pane (`ConsolidatedJobDetailView`)**

This view provides a deep dive into a selected application.

*   **Layout:** The default layout is a single, unified `ScrollView`. An alternative `TabView` layout can be selected by the user.
*   **Header Section (`enhancedJobInfoSection`):**
    *   **Appearance:** This section has a distinct background material (`companyInfoMaterial`) to visually separate it from the content below.
    *   **Typography:** The job title uses `Theme.Typography.title`, and the company name uses `Theme.Typography.title2`, establishing a clear hierarchy.
    *   **Favorite Button:** The star icon is large and tappable. When toggled, it uses a bouncy spring animation (`.spring(response: 0.3, dampingFraction: 0.6)`) and haptic feedback to feel satisfying.
*   **Section Container (`SectionContainer`):**
    *   This is a reusable view that wraps each content block (Description, Notes, etc.).
    *   It includes a section title with an SF Symbol.
    *   **Hover Interaction:** When the user hovers over a section, an "Edit" button gracefully fades in on the trailing edge, providing a clean, context-aware editing entry point.
*   **Description & Notes Sections:**
    *   **Empty State:** When a field like "Job Description" is empty, it doesn't just show nothing. It displays a `ContentUnavailableView` with an icon, a clear title ("No description provided"), and a call-to-action button ("Add Description"). This guides the user and makes the app feel more helpful.
    *   **Content Display:** Populated content is rendered using the `MarkdownRenderer`, which provides beautiful, native formatting for headers, lists, links, and code blocks.

### **15. The "Add/Edit Job" Experience**

This is a critical workflow, optimized for speed and accuracy.

*   **Presentation:** The form is presented as a modal **sheet** (`.sheet`) attached to the main window, not a separate window. This is a modern macOS pattern that keeps the user in context.
*   **Layout (`JobFormSection`):**
    *   The form is wrapped in a `ScrollView` to be fully accessible on any screen size without truncation.
    *   Fields are grouped logically into sections like "Core Information" and "Salary & Compensation".
*   **Inline Validation:**
    *   Validation happens live as the user types.
    *   If a field is invalid (e.g., an empty required field, an invalid URL), a small, red error message appears directly below it.
    *   The main "Save" button remains disabled until all validation rules pass, providing clear, immediate feedback.
*   **AI-Powered Workflow:**
    *   The "Paste" button is enhanced. When clicked, it not only pastes the clipboard content but immediately triggers the AI parsing workflow.
    *   While parsing, the entire `TextEditor` for the job description is overlaid with a translucent material and a `ProgressView`, indicating that the AI is working. The user can see the original text underneath.
    *   Upon completion, the form fields animate their population, and the `TextEditor` is updated with the cleaned Markdown, providing a "magical" user experience.

### **16. Theming and Visual Identity**

The app's visual identity is defined by the `Theme` enum and applied consistently.

*   **Colors (`Theme.Colors`):** The `accentColor` chosen by the user in Settings is applied to all interactive elements: button backgrounds, selection highlights, focus rings, and active icons. Semantic colors (`.success`, `.warning`, `.error`) are used for feedback and status indicators.
*   **Typography (`Theme.Typography`):** All `Text` views use fonts defined in the theme (e.g., `.font(Theme.Typography.sectionHeader)`). This ensures consistency and allows for future customization (like adding different font choices).
*   **Spacing & Radius (`Theme.Spacing`, `Theme.Radius`):** All padding, spacing, and corner radii use predefined values from the theme, ensuring a harmonious and balanced layout.
*   **Animations (`Theme.Animation`):** All animations are defined in the theme to ensure a consistent feel. For example, all hover effects use `Theme.Animation.hoverEffect`, and all button presses use `Theme.Animation.buttonPress`. This makes the app's motion language predictable and coherent.
