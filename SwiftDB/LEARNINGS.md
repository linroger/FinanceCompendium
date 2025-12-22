# LEARNINGS.md: macOS App Development Masterclass

This document records high-value insights derived directly from analyzing Apple's official sample code (`GardenApp`, `FoodTruck`, `Trips`, `Landmarks`, etc.). It serves as the "Ground Truth" for building native, high-quality macOS applications.

## 1. Project Structure & Organization

### The "App" Entry Point
*   **Pattern**: Do not put logic in `@main`. Use it strictly for composition.
*   **WindowGroup**: This is your primary scene.
*   **WindowGroup with Data**: Use `WindowGroup("Name", for: Type.self) { $item in ... }` to support opening multiple windows for specific data items (e.g., Book Details).
*   **Auxiliary Windows**: Use `Window("Name", id: "id")` for unique, single-instance windows (e.g., Activity Log).
*   **Commands**: macOS apps *must* have a `.commands { ... }` block in `App.swift` to attach native menu bar items. Use `.commandsRemoved()` on auxiliary windows to prevent menu clutter.
*   **Settings**: Use `Settings { SettingsView() }` scene.
    *   **Structure**: `SettingsView` should use a `TabView` with `.tabItem` labels (General, Appearance, etc.).
    *   **Sizing**: Apply a fixed frame (e.g., `.frame(width: 400, height: 200)`) to the `TabView` content to ensure a consistent, non-resizable dialog feel standard on macOS.

### The "Model Container" (SwiftData)
*   **Singleton Pattern**: Create a shared `DataModel` or `ModelContainer` provider.
    ```swift
    @main
    struct TripsApp: App {
        let modelContainer = DataModel.shared.modelContainer
        var body: some Scene {
            WindowGroup { ContentView() }
            .modelContainer(modelContainer)
        }
    }
    ```
*   **Why**: This ensures previews, tests, and the main app all use the same schema but can swap storage configurations (in-memory vs. disk).

## 2. Architecture & Data Flow

### Modern Navigation (The "Holy Grail")
*   **Root View**: Always use `NavigationSplitView`.
*   **NavigationModel Pattern**: Separate *View State* (selection, path) from *Data*.
    *   Create a `NavigationModel: Codable, Observable` singleton.
    *   Implement `save()`/`load()` using `JSONEncoder` to `.cachesDirectory` to persist navigation state between sessions.
*   **State**: Use an **Enum** for sidebar selection (`enum Panel: Hashable`).
*   **Inspector**: Use `.inspector(isPresented:)` for auxiliary detail instead of extra columns to keep the UI stable.
*   **Compact Column**: Bind `preferredCompactColumn` to state to control behavior on narrow windows.

### Data Modeling (SwiftData / Core Data)
*   **Swift 6 Pattern**: Use the `@Observable` macro instead of `ObservableObject` for cleaner, more performant state updates.
*   **Macros**: Use `#Index` and `#Unique` inside the `@Model` class.
*   **Relationships**: Always define `inverse` relationships with delete rules.
    ```swift
    @Relationship(deleteRule: .cascade, inverse: \Child.parent)
    var children: [Child]
    ```
*   **Inheritance**: SwiftData supports polymorphism (e.g., `class BusinessTrip: Trip`).

## 3. UI/UX & The "Mac" Feel

### Visual Vocabulary
*   **Sidebar Search**: Search bars on macOS belong in the sidebar, not the content area.
    ```swift
    .searchable(text: $text, placement: .sidebar)
    ```
*   **Window Constraints**: Always set a minimum window size on the root view to prevent layout collapse.
    ```swift
    .frame(minWidth: 600, minHeight: 450)
    ```
*   **Geometry Changes**: Use `.onGeometryChange` instead of `GeometryReader` to react to window resizing without performance hits.
*   **Tables**: For dense data, use `Table` instead of `List`. It provides sortable columns headers automatically.

### Visual Effects & Transitions
*   **Scroll Transitions**: Use `.scrollTransition` to animate views as they enter/exit the scroll port.
*   **Visual Effects**: Use `.visualEffect { content, proxy in ... }` for geometry-aware effects without `GeometryReader`.
*   **Materials**: Use `.background(.thinMaterial)` for sidebars to match macOS translucency.

## 4. Text Handling & Rich Content
*   **Storage**: Use `AttributedString` for rich text. Persist it directly in SwiftData models.
*   **Editing**: Use `TextEditor(text: $vm.text)` bound to a `@Bindable` view model.
*   **TextKit 2**: For complex text (exclusion paths, interactive attachments), use `NSTextLayoutManager` and `NSTextAttachmentViewProvider`.

## 5. Concurrency & Performance
*   **View Models**: Annotate with `@MainActor` to ensure safe UI updates.
*   **Heavy Logic**: Move work to `nonisolated` structs or actors to keep the main thread free.
*   **Parallelism**: Use `withTaskGroup` for batch operations (e.g., image grids).
*   **Large Data**: Use `NSBatchInsertRequest` for Core Data imports to bypass object creation overhead.

## 6. Commands & Keyboard Shortcuts
*   **CommandMenu**: Create custom top-level menus in the menu bar.
*   **Global Shortcuts**: Attach `.keyboardShortcut` to menu items so they work even when the view is not focused.
*   **FocusedValues**: Use `@FocusedBinding` to allow menu items to communicate with the currently active window/view.

## 7. Localization & Formatting
*   **Rule**: Never manually format dates/units.
*   **Formatters**: Use `RelativeDateTimeFormatter` ("Yesterday") and `DateComponentsFormatter` ("2h 15m").
*   **Measurements**: Use `MeasurementFormatter` to automatically convert grams to ounces or miles to km based on user locale.

## 8. AppKit Integration (Advanced)
*   **Tree Controller**: `NSTreeController` is the best way to bind hierarchical data to `NSOutlineView`.
*   **File Promises**: Use `NSFilePromiseProvider` for modern drag-and-drop to Finder.
*   **State Restoration**: Implement `NSRestorableState` on ViewControllers to persist text field content or selections.

## 9. Advanced macOS Techniques

### Focus & Keyboard Navigation
*   **Grid Navigation**: For `LazyVGrid`, handle arrow keys with `.onMoveCommand`.
*   **Type-to-Select**: Use `.onKeyPress(characters: .alphanumerics)` to jump to items.
*   **Handled Results**: Return `.handled` to stop event bubbling.

### Accessibility Excellence
*   **Grouping**: Use `.accessibilityElement(children: .combine)` to merge cell UI.
*   **Priority**: Use `.accessibilitySortPriority` to control VoiceOver reading order.
*   **Rotors**: Use `.accessibilityRotor` for custom navigation points.

### Siri & Shortcuts (App Intents)
*   **Snippet Views**: Return `some IntentResult & ShowsSnippetView` to render SwiftUI inside Siri.
*   **Natural Language**: Use `AppShortcutsProvider` to register voice phrases.

## 10. Build & Workflow
*   **Dependency Injection**: Use `@Environment` for shared singletons (Models, Navigation).
*   **Previews**: Always provide `#Preview(traits: .sampleData)` with an in-memory container.
*   **OSLog**: Use `Logger` instead of `print()` for persistent, categorized diagnostics.