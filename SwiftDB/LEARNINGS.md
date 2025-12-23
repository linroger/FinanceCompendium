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

---

## 11. Liquid Glass UI (macOS 26 Tahoe)

### Core Liquid Glass API
*Derived from Apple's Landmarks (Liquid Glass edition) sample code*

*   **GlassEffectContainer**: Wrap related glass elements together for optimized rendering and cohesive animations.
    ```swift
    GlassEffectContainer(spacing: Constants.badgeGlassSpacing) {
        VStack(spacing: Constants.badgeSpacing) {
            ForEach(items) { item in
                ItemView(item: item)
                    .glassEffect(.regular, in: .rect(cornerRadius: 12))
                    .glassEffectID(item.id, in: namespace)
            }
        }
    }
    ```

*   **Glass Effect Modifier**: Apply glass material to any view with shape clipping.
    ```swift
    .glassEffect(.regular, in: .rect(cornerRadius: Constants.badgeCornerRadius))
    .glassEffect(.regular, in: Capsule())
    ```

*   **Glass Animation IDs**: Use `@Namespace` with `.glassEffectID()` for smooth hero transitions.
    ```swift
    @Namespace private var namespace

    // In view body:
    BadgeLabel(badge: badge)
        .glassEffect(.regular, in: .rect(cornerRadius: 12))
        .glassEffectID(badge.id, in: namespace)
    ```

*   **Button Styles**: Use `.buttonStyle(.glass)` or `.buttonStyle(.glassProminent)` for native glass buttons.
    ```swift
    Button { action() } label: { Label("Action", systemImage: "star") }
        .buttonStyle(.glass)
        .glassEffectID("button", in: namespace)
    ```

*   **Platform Tint Handling**: Clear tint on macOS for proper glass appearance.
    ```swift
    .buttonStyle(.glass)
    #if os(macOS)
    .tint(.clear)
    #endif
    ```

### Material vs Glass Hierarchy
*   **Material Layer**: Use `.background(.thinMaterial)` for content backgrounds (sidebars, cards).
*   **Glass Layer**: Use `.glassEffect()` for interactive controls and navigation elements.
*   **Rule**: Glass floats above material. Never mix glass into material content areas.

---

## 12. Advanced Navigation Architecture (Landmarks Pattern)

### NavigationOptions Enum Pattern
*   **Purpose**: Centralize navigation destinations in a type-safe enum with associated data.
    ```swift
    enum NavigationOptions: Equatable, Hashable, Identifiable {
        case landmarks
        case map
        case collections

        static let mainPages: [NavigationOptions] = [.landmarks, .map, .collections]

        var id: String {
            switch self {
            case .landmarks: return "Landmarks"
            case .map: return "Map"
            case .collections: return "Collections"
            }
        }

        var name: LocalizedStringResource {
            switch self {
            case .landmarks: LocalizedStringResource("Landmarks", comment: "Sidebar tab")
            case .map: LocalizedStringResource("Map", comment: "Sidebar tab")
            case .collections: LocalizedStringResource("Collections", comment: "Sidebar tab")
            }
        }

        var symbolName: String {
            switch self {
            case .landmarks: "building.columns"
            case .map: "map"
            case .collections: "book.closed"
            }
        }

        @MainActor @ViewBuilder func viewForPage() -> some View {
            switch self {
            case .landmarks: LandmarksView()
            case .map: MapView()
            case .collections: CollectionsView()
            }
        }
    }
    ```

### Split View with Nested NavigationStack
*   **Pattern**: Wrap content views in `NavigationStack` with shared path binding for deep navigation.
    ```swift
    NavigationSplitView(preferredCompactColumn: $preferredColumn) {
        List {
            Section {
                ForEach(NavigationOptions.mainPages) { page in
                    NavigationLink(value: page) {
                        Label(page.name, systemImage: page.symbolName)
                    }
                }
            }
        }
        .navigationDestination(for: NavigationOptions.self) { page in
            NavigationStack(path: $modelData.path) {
                page.viewForPage()
            }
            .navigationDestination(for: Landmark.self) { landmark in
                LandmarkDetailView(landmark: landmark)
            }
            .navigationDestination(for: Collection.self) { collection in
                CollectionDetailView(collection: collection)
            }
        }
        .frame(minWidth: 150)
    } detail: {
        NavigationStack(path: $modelData.path) {
            NavigationOptions.landmarks.viewForPage()
        }
        .navigationDestination(for: Landmark.self) { landmark in
            LandmarkDetailView(landmark: landmark)
        }
    }
    .searchable(text: $modelData.searchString, prompt: "Search")
    .inspector(isPresented: $modelData.isInspectorPresented) {
        // Inspector content
    }
    ```

### Global Search Pattern
*   **Placement**: Apply `.searchable()` at the `NavigationSplitView` level for global search.
*   **Binding**: Bind to `@Observable` model's `searchString` property.
*   **Detection**: Use `@Environment(\.isSearching)` in child views to detect active search state.

---

## 13. Flexible Header (Scroll-Based Stretching)

### Implementation Pattern
*   **Purpose**: Create iOS-style stretchy headers that expand when over-scrolling.
*   **Components**:
    1. `FlexibleHeaderGeometry` - Observable class tracking scroll offset
    2. `FlexibleHeaderScrollViewModifier` - Tracks scroll position
    3. `FlexibleHeaderContentModifier` - Applies stretch effect to content

```swift
@Observable private class FlexibleHeaderGeometry {
    var offset: CGFloat = 0
}

private struct FlexibleHeaderContentModifier: ViewModifier {
    @Environment(ModelData.self) private var modelData
    @Environment(FlexibleHeaderGeometry.self) private var geometry

    func body(content: Content) -> some View {
        let height = (modelData.windowSize.height / 2) - geometry.offset
        content
            .frame(height: height)
            .padding(.bottom, geometry.offset)
            .offset(y: geometry.offset)
    }
}

private struct FlexibleHeaderScrollViewModifier: ViewModifier {
    @State private var geometry = FlexibleHeaderGeometry()

    func body(content: Content) -> some View {
        content
            .onScrollGeometryChange(for: CGFloat.self) { geometry in
                min(geometry.contentOffset.y + geometry.contentInsets.top, 0)
            } action: { _, offset in
                geometry.offset = offset
            }
            .environment(geometry)
    }
}

// Usage extensions:
extension ScrollView {
    @MainActor func flexibleHeaderScrollView() -> some View {
        modifier(FlexibleHeaderScrollViewModifier())
    }
}

extension View {
    func flexibleHeaderContent() -> some View {
        modifier(FlexibleHeaderContentModifier())
    }
}
```

### Usage Pattern
```swift
ScrollView(showsIndicators: false) {
    VStack {
        Image(imageName)
            .resizable()
            .flexibleHeaderContent()  // Stretches on over-scroll

        // Rest of content...
    }
}
.flexibleHeaderScrollView()  // Tracks scroll geometry
.ignoresSafeArea(edges: .top)
```

---

## 14. CoreLocation Integration Pattern

### Observable Location Finder
*   **Pattern**: Wrap `CLLocationManager` in an `@Observable` class for SwiftUI integration.
```swift
@Observable
class LocationFinder: NSObject, CLLocationManagerDelegate {
    var currentLocation: CLLocation?
    private let manager = CLLocationManager()

    override init() {
        super.init()
        manager.desiredAccuracy = kCLLocationAccuracyKilometer
        manager.delegate = self
    }

    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
        case .authorizedWhenInUse, .authorizedAlways:
            manager.requestLocation()
        case .notDetermined:
            manager.requestWhenInUseAuthorization()
        default:
            manager.stopUpdatingLocation()
        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentLocation = locations.last
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Location error: \(error.localizedDescription)")
        manager.stopUpdatingLocation()
    }
}
```

*   **Key Points**:
    - Use `kCLLocationAccuracyKilometer` for low-power location (landmarks don't need GPS precision)
    - Handle all authorization states in `locationManagerDidChangeAuthorization`
    - Gracefully handle errors without crashing

---

## 15. View Composition with Custom Modifiers

### Overlay View Modifier Pattern
*   **Purpose**: Create reusable view overlays (badges, indicators) via modifiers.
```swift
private struct ShowsBadgesViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            content
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    BadgesView()
                        .padding()
                }
            }
        }
    }
}

extension View {
    func showsBadges() -> some View {
        modifier(ShowsBadgesViewModifier())
    }
}

// Usage:
NavigationStack(path: $modelData.path) {
    page.viewForPage()
}
.showsBadges()  // Adds badge overlay to bottom-trailing corner
```

### Readability Enhancement Pattern
*   **Purpose**: Add gradient overlays to improve text legibility over images.
```swift
struct ReadabilityRoundedRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: Constants.cornerRadius)
            .foregroundStyle(.clear)
            .background(
                LinearGradient(
                    colors: [.black.opacity(0.8), .clear],
                    startPoint: .bottom,
                    endPoint: .center
                )
            )
            .containerRelativeFrame(.vertical)
            .clipped()
    }
}
```

---

## 16. Constants & Cross-Platform Design

### Centralized Constants Pattern
*   **Purpose**: Single source of truth for layout values with platform-specific overrides.
```swift
struct Constants {
    // Platform-agnostic values
    static let standardPadding: CGFloat = 20.0
    static let cornerRadius: CGFloat = 10.0

    // Platform-specific values
    #if os(macOS)
    static let leadingContentInset: CGFloat = 20.0
    static let landmarkListMinimumHeight: CGFloat = 300.0
    #else
    static let leadingContentInset: CGFloat = 16.0
    static let landmarkListMinimumHeight: CGFloat = 200.0
    #endif

    // Computed layout values
    static let landmarkListPercentOfHeight: CGFloat = 0.35

    // Collection grid settings
    static let collectionGridItemMinSize: CGFloat = 200.0
    static let collectionGridItemMaxSize: CGFloat = 300.0
    static let collectionGridSpacing: CGFloat = 20.0
}
```

### Container Relative Sizing Pattern
*   **Purpose**: Size views relative to their container with fallback minimums.
```swift
LandmarkHorizontalListView(landmarkList: landmarkList)
    .containerRelativeFrame(.vertical) { height, axis in
        let proposedHeight = height * Constants.landmarkListPercentOfHeight
        if proposedHeight > Constants.landmarkListMinimumHeight {
            return proposedHeight
        }
        return Constants.landmarkListMinimumHeight
    }
```

---

## 17. Toolbar Architecture (macOS Native)

### Toolbar with Spacers Pattern
*   **Purpose**: Create visually balanced toolbars with flexible/fixed spacing.
```swift
.toolbar {
    ToolbarSpacer(.flexible)  // Push items to right

    ToolbarItem {
        ShareLink(item: item, preview: item.sharePreview)
    }

    ToolbarSpacer(.fixed)  // Small gap

    ToolbarItemGroup {
        FavoriteButton(item: item)
        CollectionsMenu(item: item)
    }

    ToolbarSpacer(.fixed)

    ToolbarItem {
        Button("Info", systemImage: "info") {
            modelData.selectedItem = item
            modelData.isInspectorPresented.toggle()
        }
    }
}
.toolbar(removing: .title)  // Remove default title for custom header
```

### Inspector Toggle Pattern
*   **Purpose**: Use toolbar buttons to toggle inspector panels.
*   **State Flow**: Button sets `selectedItem` AND toggles `isInspectorPresented`.
```swift
Button("Info", systemImage: "info") {
    modelData.selectedLandmark = landmark
    modelData.isLandmarkInspectorPresented.toggle()
}
```

---

## 18. Data Model Patterns (Landmarks)

### Observable Model with MainActor
```swift
@Observable
@MainActor
public class ModelData {
    var landmarks: [Landmark] = []
    var landmarksById: [Int: Landmark] = [:]
    var landmarksByContinent: [Continent: [Landmark]] = [:]
    var userCollections: [LandmarkCollection] = []

    // Navigation state
    var path: [AnyHashable] = []
    var searchString: String = ""
    var selectedLandmark: Landmark?
    var isLandmarkInspectorPresented: Bool = false

    // Window tracking for flexible header
    var windowSize: CGSize = .zero

    // Computed properties
    var featuredLandmark: Landmark? {
        landmarks.first { $0.isFeatured }
    }

    var earnedBadges: [Badge] {
        Badge.allCases.filter { badgeProgress[$0]?.earned ?? false }
    }
}
```

### Transferable Protocol for Drag & Drop
```swift
struct Landmark: Codable, Identifiable, Hashable, Transferable {
    let id: Int
    let name: String
    // ... other properties

    static var transferRepresentation: some TransferRepresentation {
        CodableRepresentation(for: Landmark.self, contentType: .landmark)
    }

    var sharePreview: SharePreview<String, Image> {
        SharePreview(name, image: Image(thumbnailImageName))
    }
}
```

### Enum with Associated Values for Data Modeling
*   **Purpose**: Model data with multiple valid shapes without optionals.
```swift
enum Elevation: Codable, Hashable {
    case fixed(Measurement<UnitLength>)
    case openRange(low: Measurement<UnitLength>)
    case closedRange(low: Measurement<UnitLength>, high: Measurement<UnitLength>)

    static func formatted(_ elevation: Elevation?) -> String {
        guard let elevation else { return "" }
        let formatter = MeasurementFormatter()
        formatter.unitStyle = .short
        formatter.unitOptions = .providedUnit

        switch elevation {
        case .fixed(let value):
            return formatter.string(from: value)
        case .openRange(let low):
            return "≥ \(formatter.string(from: low))"
        case .closedRange(let low, let high):
            return "\(formatter.string(from: low)) - \(formatter.string(from: high))"
        }
    }
}
```

---

## 19. Preview Best Practices (Landmarks)

### Full-Featured Preview Pattern
```swift
#Preview {
    @Previewable @State var modelData = ModelData()
    let previewLandmark = modelData.landmarksById[1016] ?? modelData.landmarks.first!

    NavigationSplitView {
        List {
            Section {
                ForEach(NavigationOptions.mainPages) { page in
                    NavigationLink(value: page) {
                        Label(page.name, systemImage: page.symbolName)
                    }
                }
            }
        }
    } detail: {
        LandmarkDetailView(landmark: previewLandmark)
    }
    .inspector(isPresented: $modelData.isLandmarkInspectorPresented) {
        if let landmark = modelData.selectedLandmark {
            LandmarkDetailInspectorView(landmark: landmark,
                inspectorIsPresented: $modelData.isLandmarkInspectorPresented)
        } else {
            EmptyView()
        }
    }
    .environment(modelData)
    .onGeometryChange(for: CGSize.self) { geometry in
        geometry.size
    } action: {
        modelData.windowSize = $0
    }
}
```

### Key Preview Patterns
*   **@Previewable @State**: Create mutable state for previews.
*   **Fallback Data**: Use `??` with `.first!` to handle missing preview data.
*   **Full Environment**: Include navigation, inspector, and geometry tracking.
*   **Window Size Tracking**: Use `.onGeometryChange` to populate `windowSize` for flexible headers.

---

## 20. Native Mac App Structure (GardenApp)

### The Scene & Window Architecture
*   **WindowGroup**: The root scene for document-based or main app windows.
*   **Commands**: Essential for macOS menu bar integration using `.commands { ... }`.
*   **Settings**: Modern `Settings` scene replacement for `NSPreferences`.

```swift
@main
struct GardenApp: App {
    @StateObject private var store = Store()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
        }
        .commands {
            SidebarCommands() // Built-in sidebar toggling
            ImportExportCommands(store: store) // Custom commands
        }
        Settings {
            SettingsView()
                .environmentObject(store)
        }
    }
}
```

### State Persistence with SceneStorage
*   **Problem**: Preserving selection state across app launches per-window.
*   **Solution**: `@SceneStorage`.

```swift
struct ContentView: View {
    @SceneStorage("selection") private var selectedGardenID: Garden.ID?
    
    // Computed binding handles fallback to default logic
    private var selection: Binding<Garden.ID?> {
        Binding(get: { selectedGardenID ?? defaultGardenID }, 
                set: { selectedGardenID = $0 })
    }
}
```

### Proper Sidebar Implementation
*   **DisclosureGroups**: Standard for hierarchical sidebars.
*   **Badges**: Native `.badge()` modifier for counts.
*   **Min Width**: `.frame(minWidth: 250)` is the sweet spot for macOS sidebars.

```swift
List(selection: $selection) {
    DisclosureGroup(isExpanded: $isExpanded) {
        ForEach(gardens) { garden in
            SidebarLabel(garden: garden)
                .badge(garden.plantCount)
        }
    } label: {
        Label("Current", systemImage: "chart.bar")
    }
}
```

---

## 21. Apple Intelligence Integration (Writing Tools)

### The Writing Tools Coordinator
To support system-wide Apple Intelligence features (Rewriting, Summarizing, Proofreading) in custom text views, you must implement the `NSWritingToolsCoordinator` protocol.

*   **Context Scope**: The system asks for context (the text to analyze).
*   **Replacement**: The system proposes replacements (e.g., the rewritten text).
*   **Animation**: The system coordinates overlay animations during the "thinking" phase.

```swift
extension DocumentView: NSWritingToolsCoordinator.Delegate {
    // 1. Provide Context
    func writingToolsCoordinator(_ coordinator: NSWritingToolsCoordinator, 
                               requestsContextsFor scope: ContextScope, 
                               completion: @escaping ([Context]) -> Void) {
        let context = Context(attributedString: viewModel.allText, range: fullRange)
        completion([context])
    }

    // 2. Handle Replacement (The AI Result)
    func writingToolsCoordinator(_ coordinator: NSWritingToolsCoordinator, 
                               replace range: NSRange, 
                               in context: Context, 
                               proposedText replacement: NSAttributedString, 
                               reason: TextReplacementReason, 
                               animationParameters: AnimationParameters?, 
                               completion: @escaping (NSAttributedString?) -> Void) {
        
        viewModel.replaceText(inRange: range, with: replacement)
        completion(replacement)
    }
    
    // 3. Handle Overlay Animations (Visual Feedback)
    func writingToolsCoordinator(_ coordinator: NSWritingToolsCoordinator, 
                               prepareFor animation: TextAnimation, 
                               for range: NSRange, 
                               in context: Context, 
                               completion: @escaping () -> Void) {
        // Add temporary overlay views to hide the text being animated by the system
        let rects = viewModel.selectionRects(for: range)
        addOverlayViews(rects)
        completion()
    }
}
```

---

## 22. High-Performance Video Processing (VideoToolbox)

### The VTFrameProcessor Pattern
Do not use raw Core Image for video effects if you can use `VideoToolbox`. Apple provides hardware-accelerated frame processors.

*   **VTSuperResolutionScaler**: Built-in ML supersampling.
*   **Async Processing**: Use Actors to process frames off the main thread.

```swift
actor SuperResolutionScaler: AsyncFrameProcessor {
    let configuration: VTSuperResolutionScalerConfiguration
    let frameProcessor = VTFrameProcessor()
    
    init(scale: Int, inputDim: CMVideoDimensions) throws {
        // Configure hardware scaler
        self.configuration = VTSuperResolutionScalerConfiguration(
            frameWidth: Int(inputDim.width),
            frameHeight: Int(inputDim.height),
            scaleFactor: scale
        )!
        try frameProcessor.startSession(configuration: configuration)
    }

    func process(frame: SampleBuffer) async throws -> SampleBuffer {
        // Convert to VTFrame
        let currentFrame = VTFrameProcessorFrame(buffer: frame.imageBuffer!, 
                                                 presentationTimeStamp: frame.pts)
        
        // Setup Parameters
        let params = VTSuperResolutionScalerParameters(sourceFrame: currentFrame, 
                                                       destinationFrame: destFrame)
        
        // Execute Hardware Process
        try await frameProcessor.process(parameters: params)
        return result
    }
}
```

### The Video Pipeline Actor Pattern
Manage the stream of frames using Swift Concurrency streams.

```swift
nonisolated func processVideo(url: URL) async throws {
    try await withThrowingTaskGroup(of: Void.self) { group in
        // 1. Reader Task
        group.addTask { try await assetReader.run() }
        
        // 2. Processor Task
        group.addTask { try await frameProcessor.run() }
        
        // 3. Writer Task
        group.addTask { try await assetWriter.run() }
        
        try await group.waitForAll()
    }
}
```

---

## 23. Metal Architecture Pattern

### The Renderer Class (Standard)
Don't mix Metal logic with View logic. Use a dedicated `Renderer` class.

*   **Init**: Setup Device, CommandQueue, Pipelines.
*   **BeginFrame**: Wait on Semaphore (CPU-GPU sync).
*   **EncodePasses**: Record commands.
*   **EndFrame**: Commit buffer.

```swift
class Renderer: NSObject {
    let inFlightSemaphore = DispatchSemaphore(value: 3) // Triple buffering
    
    func draw(in view: MTKView) {
        // 1. Wait for GPU
        inFlightSemaphore.wait()
        
        // 2. Create Buffer
        let commandBuffer = commandQueue.makeCommandBuffer()
        
        // 3. Signal Semaphore on Completion
        commandBuffer?.addCompletedHandler { _ in 
            self.inFlightSemaphore.signal() 
        }
        
        // 4. Encode Work
        if let encoder = commandBuffer?.makeRenderCommandEncoder(descriptor: desc) {
            encoder.setRenderPipelineState(pipeline)
            encoder.drawPrimitives(...)
            encoder.endEncoding()
        }
        
        // 5. Present & Commit
        commandBuffer?.present(view.currentDrawable!)
        commandBuffer?.commit()
    }
}
```