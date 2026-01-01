# Comprehensive macOS Native UI Style Guide

**Version**: 2.0 (Merged & Enhanced)
**Target**: macOS 26 Tahoe | Swift 6.2 | Xcode 26
**Last Updated**: 2025-10-28

> **Purpose**: This comprehensive guide provides meticulous, implementation-level details for creating truly native macOS applications that are indistinguishable from Apple's own apps. Every spacing value, color, interaction pattern, and state transition is documented to achieve pixel-perfect native macOS UI.

---

## 🎯 Table of Contents

### Fundamentals
1. [Core Design Principles](#core-design-principles)
2. [Typography](#typography)
3. [Spacing and Layout](#spacing-and-layout)
4. [Color System](#color-system)
5. [Animation and Transitions](#animation-and-transitions)
6. [Window Layout and Structure](#window-layout-and-structure)

### Navigation & Structure
7. [Navigation Patterns](#navigation-patterns)
8. [Toolbars](#toolbars)
9. [Sidebars](#sidebars)
10. [Content Areas](#content-areas)

### UI Components
11. [Buttons](#buttons)
12. [Controls and Components](#controls-and-components)
13. [Lists and Tables](#lists-and-tables)
14. [Swift Charts](#swift-charts)
15. [Swift Tables](#swift-tables)
16. [Disclosure Groups](#disclosure-groups)
17. [Dialogs and Sheets](#dialogs-and-sheets)
18. [Menus and Context Menus](#menus-and-context-menus)
19. [Settings Windows](#settings-windows)

### Implementation
20. [State Management and Data Flow](#state-management-and-data-flow)
21. [Accessibility](#accessibility)
22. [Performance Optimization](#performance-optimization)
23. [Best Practices](#best-practices)

### Advanced Topics
24. [Complete Examples](#complete-examples)
25. [Advanced Patterns](#advanced-patterns)
26. [Troubleshooting](#troubleshooting)
27. [Integration Patterns](#integration-patterns)
28. [Testing Strategies](#testing-strategies)
29. [Code Organization](#code-organization)

---

## Core Design Principles

### The Native macOS Feel

A truly native macOS app exhibits these characteristics:

1. **Vibrancy and Depth**: Uses system materials and blur effects
2. **Responsive and Immediate**: 60fps minimum, 120fps on ProMotion displays
3. **Keyboard-First**: Every action accessible via keyboard shortcuts
4. **Context-Aware**: Right-click menus everywhere appropriate
5. **Predictable**: Follows established macOS patterns exactly
6. **Accessible**: Full VoiceOver support with meaningful labels

### Liquid Glass Design (macOS 26 Tahoe)

macOS 26 introduces the refined "Liquid Glass" design language, building on translucency and depth:

- **Material Foundation**: Use Liquid Glass for floating UI elements like toolbars, sidebars, and controls
- **Transparency**: Employ appropriate transparency levels to create depth without reducing readability
- **Adaptive Colors**: Leverage system colors that automatically adapt to light/dark mode
- **Fluid Animations**: Implement smooth transitions that match system behaviors
- **Concentric Corners**: Ensure all UI elements maintain consistent corner radii with their containers
- **Depth and Dimension**: Create visual hierarchy through layering and subtle shadows
- **Content Focus**: Design interfaces that emphasize user content over chrome

**Implementation**:
```swift
// Apply Liquid Glass effect to views
.background(.ultraThinMaterial)
.background(.thinMaterial)
.background(.regularMaterial)
.background(.thickMaterial)
.background(.ultraThickMaterial)

// Glass effect button (new in macOS 26)
Button("Action") {
    performAction()
}
.buttonStyle(.glass)

// Apply glass background to panels
VStack {
    // Content
}
.glassBackgroundEffect()
```

### Visual Hierarchy

```
Primary Actions → Secondary Actions → Tertiary Actions
System Font Regular → System Font Semibold → System Font Bold
Standard Controls → Prominent Controls → Glass/Vibrancy Effects
```

### The Three Rules

1. **If Apple does it this way, you do it this way**
2. **When in doubt, refer to System Settings or Finder**
3. **Test your UI next to a native Apple app - they should be indistinguishable**

### Design Philosophy

1. **Native First**: Match Apple's own apps pixel-for-pixel
2. **Clarity Over Cleverness**: Users should never wonder how to use your interface
3. **Consistency**: Follow platform conventions ruthlessly
4. **Feedback**: Every action produces visible, immediate feedback
5. **Forgiveness**: Make it hard to do destructive things accidentally
6. **Accessibility**: Design for all users from the start, not as an afterthought

---

## Typography

### Font System

macOS 26 uses the SF Pro font family with specific semantic styles:

**System Fonts**:
- **SF Pro Text**: Interface elements (< 20pt)
- **SF Pro Display**: Large text (≥ 20pt)
- **SF Mono**: Code and monospaced content
- **New York**: Serif text for reading experiences

### Font Weights

Apply weights according to visual hierarchy:
- **Regular (400)**: Body text, descriptions
- **Medium (500)**: Labels, secondary headings
- **Semibold (600)**: Section headers, important labels
- **Bold (700)**: Primary headings, emphasis

### Text Sizes (Exact Specifications)

```swift
// Apple's official text size scale for macOS
.font(.largeTitle)      // 26pt
.font(.title)           // 22pt
.font(.title2)          // 17pt
.font(.title3)          // 15pt
.font(.headline)        // 13pt bold
.font(.body)            // 13pt
.font(.callout)         // 12pt
.font(.subheadline)     // 11pt
.font(.footnote)        // 10pt
.font(.caption)         // 10pt
.font(.caption2)        // 9pt
```

### Typography Best Practices

```swift
// ✅ GOOD - Semantic sizing
Text("Dashboard")
    .font(.largeTitle)

Text("Recent Activity")
    .font(.headline)

Text(description)
    .font(.body)
    .foregroundStyle(.secondary)

// ❌ BAD - Arbitrary sizing
Text("Title")
    .font(.system(size: 24))  // Don't hardcode sizes

// ✅ GOOD - Dynamic Type support
Text("User content")
    .font(.body)
    .dynamicTypeSize(.large...DynamicTypeSize.accessibility3)

// Line spacing for readability
Text(longContent)
    .font(.body)
    .lineSpacing(4)
    .multilineTextAlignment(.leading)
```

---

## Spacing and Layout

### Grid System

macOS 26 uses an **8pt grid system** for all spacing:

- **Micro spacing**: 4pt (half-grid for tight relationships)
- **Default spacing**: 8pt (standard control spacing)
- **Section spacing**: 16pt (group separation)
- **Major spacing**: 24pt (major section breaks)
- **Module spacing**: 32pt (independent content blocks)

### Padding Standards

```swift
// Window content padding
.padding(.horizontal, 20)
.padding(.vertical, 16)

// Section groups
VStack(spacing: 16) {
    Section1()
    Section2()
}

// Controls within groups
VStack(spacing: 8) {
    TextField("Name", text: $name)
    TextField("Email", text: $email)
}

// Major sections
VStack(spacing: 24) {
    ProfileSection()
    SettingsSection()
}
```

### Control Heights

Standard control heights ensure consistency:

- **Large**: 32pt (prominent actions)
- **Regular**: 24pt (standard controls)
- **Small**: 20pt (compact interfaces)
- **Mini**: 16pt (dense information displays)

```swift
Button("Action") { }
    .controlSize(.large)    // 32pt height

TextField("Input", text: $text)
    .controlSize(.regular)  // 24pt height

Button("Compact") { }
    .controlSize(.small)    // 20pt height
```

### Layout Containers

```swift
// Vertical stacking with proper spacing
VStack(alignment: .leading, spacing: 16) {
    Text("Section Header")
        .font(.headline)

    VStack(alignment: .leading, spacing: 8) {
        TextField("Field 1", text: $field1)
        TextField("Field 2", text: $field2)
    }
}
.padding()

// Horizontal alignment
HStack(spacing: 12) {
    Button("Cancel") { }
        .buttonStyle(.bordered)
    Button("Save") { }
        .buttonStyle(.borderedProminent)
}
```

---

## Color System

### Semantic Colors

macOS 26 provides adaptive semantic colors that automatically adjust for light/dark mode:

```swift
// Content colors
Color.primary         // Primary text (full opacity)
Color.secondary       // Secondary text (60% opacity)
Color.tertiary        // Tertiary text (30% opacity)

// Background colors
Color.windowBackground      // Main window background
Color.contentBackground     // Content area background
Color.groupedBackground     // Grouped content background

// UI Element colors
Color.controlBackground     // Control backgrounds
Color.separator            // Dividers and borders
Color.selectedContentBackground  // Selected items

// Accent colors
Color.accentColor          // Primary accent (user-customizable)
Color.blue                 // System blue
Color.purple               // System purple
Color.red                  // System red
Color.orange               // System orange
Color.yellow               // System yellow
Color.green                // System green

// Status colors
Color.red                  // Errors, destructive actions
Color.yellow               // Warnings, caution
Color.green                // Success, confirmation
Color.blue                 // Information, links
```

### Color Usage Guidelines

```swift
// ✅ GOOD - Semantic usage
Text("Title")
    .foregroundStyle(.primary)

Text("Subtitle")
    .foregroundStyle(.secondary)

Button("Delete") { }
    .tint(.red)
    .buttonStyle(.bordered)

// ❌ BAD - Hardcoded colors
Text("Title")
    .foregroundColor(Color(red: 0, green: 0, blue: 0))  // Don't do this

// ✅ GOOD - Adaptive backgrounds
VStack {
    // Content
}
.background(.regularMaterial)

// ✅ GOOD - Status indicators
HStack {
    Image(systemName: "checkmark.circle.fill")
        .foregroundStyle(.green)
    Text("Success")
        .foregroundStyle(.secondary)
}
```

---

## Animation and Transitions

### Animation Durations (Official Timing)

Match system animations for native feel:

```swift
// Animation duration standards
let microInteraction: TimeInterval = 0.15    // 0.1-0.2s for immediate feedback
let viewTransition: TimeInterval = 0.25      // 0.2-0.3s for view changes
let modalPresentation: TimeInterval = 0.35   // 0.3-0.4s for modals
let complexAnimation: TimeInterval = 0.5     // 0.4-0.6s for complex changes

// Implementation
.animation(.easeInOut(duration: 0.15), value: isHovered)
.animation(.easeInOut(duration: 0.25), value: selectedTab)
.transition(.opacity.animation(.easeInOut(duration: 0.25)))
```

### Easing Functions

```swift
// Standard easing (most common)
.animation(.easeInOut, value: state)

// Spring animations (for interactive elements)
.animation(.spring(response: 0.3, dampingFraction: 0.7), value: scale)

// Custom timing curves
.animation(.timingCurve(0.4, 0.0, 0.2, 1.0), value: offset)
```

### Animation Best Practices

```swift
// ✅ GOOD - Animate state changes
@State private var isExpanded = false

DisclosureGroup("Details", isExpanded: $isExpanded) {
    DetailView()
}
.animation(.easeInOut(duration: 0.25), value: isExpanded)

// ✅ GOOD - Smooth transitions
TabView(selection: $selectedTab) {
    ContentView()
}
.animation(.easeInOut(duration: 0.25), value: selectedTab)

// ❌ BAD - No animation performance consideration
.animation(.default)  // Too vague, doesn't specify what's animating

// ✅ GOOD - Specific animation targets
.animation(.easeInOut(duration: 0.15), value: isHovered)
.animation(.easeInOut(duration: 0.25), value: offset)
```

### Performance Targets

- **Frame Rate**: 60fps minimum (120fps on ProMotion displays)
- **Animation Smoothness**: No dropped frames during transitions
- **Responsiveness**: <100ms from user input to visual feedback

---

## Window Layout and Structure

### Main Window Anatomy

```
┌──────────────────────────────────────────────────────────┐
│  Title Bar (Integrated with Toolbar)              ● ● ●  │
├──────────────────────────────────────────────────────────┤
│  [←] [Sidebar]  Search...              [+] [Share] [···] │  Toolbar
├──────────────────────────────────────────────────────────┤
│  │                │                    │                  │
│  │    Sidebar     │   Content List    │  Detail View     │  Content
│  │                │                    │                  │
│  │  ● Recent      │  Item 1            │  [Detail Panel]  │
│  │  ● Favorites   │  Item 2            │                  │
│  │                │  Item 3            │                  │
│  │  Collections   │  ...               │                  │
│  │  ▸ Work        │                    │                  │
│  │  ▾ Personal    │                    │                  │
│  │    ○ Docs      │                    │                  │
│  │    ○ Photos    │                    │                  │
│  │                │                    │                  │
├──────────────────────────────────────────────────────────┤
│  Status: 42 items                                        │  Status Bar
└──────────────────────────────────────────────────────────┘
```

### Window Sizing

```swift
WindowGroup {
    ContentView()
        .frame(minWidth: 600, minHeight: 400)      // Minimum size
        .frame(idealWidth: 800, idealHeight: 600)   // Preferred size
}
.windowStyle(.titleBar)
.windowToolbarStyle(.unified)
.defaultWindowPlacement { content, context in
    // Center on screen
    let displayBounds = context.defaultDisplay.bounds
    let size = content.sizeThatFits(.unspecified)
    let position = CGPoint(
        x: displayBounds.midX - size.width / 2,
        y: displayBounds.midY - size.height / 2
    )
    return WindowPlacement(position, size: size)
}
```

### Window Styles

```swift
// Standard document window
WindowGroup {
    ContentView()
}
.windowStyle(.automatic)          // Adaptive to content
.defaultWindowPlacement(.center)

// Utility window (Inspector, Tools)
Window("Inspector", id: "inspector") {
    InspectorView()
}
.windowStyle(.utility)
.windowResizingBehavior(.contentSize)
.defaultSize(width: 300, height: 400)

// Hideable title bar
WindowGroup {
    ContentView()
}
.windowStyle(.titleBar)
.windowToolbarStyle(.unified)

// Fullscreen support
.windowFullScreenBehavior(.automatic)
```

### Title Bar Integration

```swift
// Integrated title bar with toolbar
ContentView()
    .toolbar {
        // Toolbar items
    }
    .navigationTitle("Document Name")
    .navigationSubtitle("Last edited today")
```

---

## Navigation Patterns

### NavigationSplitView (Primary Pattern)

The standard three-column layout for macOS apps:

```swift
struct ContentView: View {
    @State private var columnVisibility: NavigationSplitViewVisibility = .all
    @State private var selectedSidebar: SidebarItem.ID?
    @State private var selectedContent: ContentItem.ID?

    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility) {
            // Sidebar (200-300pt wide)
            SidebarView(selection: $selectedSidebar)
                .listStyle(.sidebar)
                .navigationSplitViewColumnWidth(
                    min: 200,
                    ideal: 250,
                    max: 300
                )
        } content: {
            // Content list (300-500pt wide)
            ContentListView(
                sidebarSelection: selectedSidebar,
                selection: $selectedContent
            )
            .navigationSplitViewColumnWidth(
                min: 300,
                ideal: 400,
                max: 500
            )
        } detail: {
            // Detail view (flexible)
            DetailView(item: selectedContent)
                .navigationSplitViewColumnWidth(min: 400)
        }
        .navigationSplitViewStyle(.balanced)
        .toolbar {
            ToolbarItem(placement: .navigation) {
                Button {
                    withAnimation {
                        columnVisibility = columnVisibility == .all ? .detailOnly : .all
                    }
                } label: {
                    Label("Toggle Sidebar", systemImage: "sidebar.left")
                }
            }
        }
    }
}
```

### Navigation Split View Column Widths

```swift
// Sidebar column
.navigationSplitViewColumnWidth(min: 200, ideal: 250, max: 300)

// Content column
.navigationSplitViewColumnWidth(min: 300, ideal: 400, max: 500)

// Detail column (flexible, no max)
.navigationSplitViewColumnWidth(min: 400)
```

### Tab-Based Navigation

For simpler applications or settings:

```swift
TabView {
    DashboardView()
        .tabItem {
            Label("Dashboard", systemImage: "square.grid.2x2")
        }

    LibraryView()
        .tabItem {
            Label("Library", systemImage: "books.vertical")
        }

    SettingsView()
        .tabItem {
            Label("Settings", systemImage: "gear")
        }
}
.tabViewStyle(.sidebarAdaptable)
```

### Adaptive Navigation

Respond to window size changes:

```swift
@Environment(\.horizontalSizeClass) private var horizontalSizeClass

var body: some View {
    Group {
        if horizontalSizeClass == .compact {
            // Narrow window: use tabs
            CompactNavigationView()
        } else {
            // Wide window: use split view
            NavigationSplitView {
                SidebarView()
            } content: {
                ContentView()
            } detail: {
                DetailView()
            }
        }
    }
}
```

### Navigation Transitions

```swift
// Slide transition (default)
.navigationTransition(.slide)

// Opacity transition (for replacing content)
.navigationTransition(.opacity)

// Scale transition (for zooming)
.navigationTransition(.scale)
```

---

## Toolbars

### Toolbar Structure

Standard macOS toolbar layout:

**Leading Edge** (left):
- Navigation controls (back/forward)
- Sidebar toggle
- Window controls

**Center Area**:
- Search field
- Primary content controls
- View mode switchers

**Trailing Edge** (right):
- Primary actions
- Secondary actions
- Share/export
- More menu (···)

### Toolbar Implementation

```swift
.toolbar {
    // LEADING: Navigation controls
    ToolbarItemGroup(placement: .navigation) {
        Button {
            toggleSidebar()
        } label: {
            Label("Toggle Sidebar", systemImage: "sidebar.left")
        }
        .help("Show or hide the sidebar")

        Divider()

        Button {
            goBack()
        } label: {
            Label("Back", systemImage: "chevron.left")
        }
        .disabled(!canGoBack)
        .help("Go back to previous view")
    }

    // CENTER: Search
    ToolbarItem(placement: .principal) {
        TextField("Search", text: $searchText)
            .textFieldStyle(.roundedBorder)
            .frame(width: 220)
    }

    // TRAILING: Primary actions
    ToolbarItem(placement: .primaryAction) {
        Button {
            createNew()
        } label: {
            Label("New", systemImage: "plus")
        }
        .buttonStyle(.borderedProminent)
        .keyboardShortcut("n", modifiers: .command)
        .help("Create new item")
    }

    // TRAILING: Secondary actions
    ToolbarItem(placement: .secondaryAction) {
        Button {
            share()
        } label: {
            Label("Share", systemImage: "square.and.arrow.up")
        }
        .help("Share this item")
    }

    // TRAILING: More menu
    ToolbarItem(placement: .automatic) {
        Menu {
            Button("Export...") { export() }
            Button("Print...") { print() }
            Divider()
            Button("Settings") { openSettings() }
        } label: {
            Label("More", systemImage: "ellipsis.circle")
        }
        .menuStyle(.borderlessButton)
    }

    // STATUS: Progress indicator
    ToolbarItem(placement: .status) {
        if isLoading {
            ProgressView()
                .controlSize(.small)
        }
    }
}
```

### Toolbar Styling

```swift
// Toolbar roles define behavior
.toolbarRole(.browser)     // Browser-style apps (Mail, Finder)
.toolbarRole(.editor)      // Document editors
.toolbarRole(.window)      // Utility windows

// Toolbar customization
.toolbar(removing: .sidebarToggle)  // Remove specific items
.toolbarVisibility(.hidden, for: .navigation)  // Hide navigation toolbar

// Unified title bar + toolbar
.windowStyle(.titleBar)
.windowToolbarStyle(.unified)
```

### Toolbar Item Heights

All toolbar items should be **24pt** height for consistency:

```swift
Button("Action") { }
    .controlSize(.regular)  // 24pt height
    .buttonStyle(.bordered)
```

---

## Sidebars

### Sidebar Structure

```swift
struct SidebarView: View {
    @Binding var selection: SidebarItem.ID?
    @State private var recentExpanded = true
    @State private var collectionsExpanded = true

    var body: some View {
        List(selection: $selection) {
            // Top-level items (no section header)
            Section {
                NavigationLink(value: SidebarItem.inbox) {
                    Label("Inbox", systemImage: "tray")
                        .badge(12)
                }

                NavigationLink(value: SidebarItem.starred) {
                    Label("Starred", systemImage: "star")
                }
            }

            // Categorized sections
            Section("Collections") {
                ForEach(collections) { collection in
                    NavigationLink(value: SidebarItem.collection(collection)) {
                        Label {
                            Text(collection.name)
                        } icon: {
                            Image(systemName: collection.icon)
                                .foregroundStyle(collection.color)
                        }
                    }
                    .badge(collection.count)
                }
            }

            // Collapsible sections
            Section("Smart Folders") {
                DisclosureGroup("Recent", isExpanded: $recentExpanded) {
                    ForEach(recentItems) { item in
                        NavigationLink(value: SidebarItem.item(item)) {
                            Text(item.name)
                                .lineLimit(1)
                        }
                        .font(.subheadline)
                    }
                }
            }
        }
        .listStyle(.sidebar)
        .frame(minWidth: 200, idealWidth: 250, maxWidth: 300)
        .toolbar {
            ToolbarItem {
                Button {
                    createCollection()
                } label: {
                    Label("New Collection", systemImage: "plus")
                }
                .help("Create a new collection")
            }
        }
    }
}
```

### Sidebar Row Heights

```swift
// Standard sidebar row heights
.large     // 32pt (with badges or multiple lines)
.regular   // 28pt (standard single line)
.small     // 24pt (compact mode)

// Implementation
List {
    ForEach(items) { item in
        SidebarRow(item: item)
            .frame(height: 28)  // Regular height
    }
}
```

### Sidebar Icons

Use SF Symbols consistently:

```swift
// ✅ GOOD - Standard SF Symbols
Label("Documents", systemImage: "doc.text")
Label("Photos", systemImage: "photo")
Label("Music", systemImage: "music.note")

// ✅ GOOD - Colored icons for categories
Label("Work", systemImage: "briefcase")
    .foregroundStyle(.blue)

Label("Personal", systemImage: "person")
    .foregroundStyle(.purple)

// ❌ BAD - Custom images (unless brand-specific)
Label("Custom", image: "my-custom-icon")
```

### Hierarchical Sidebar

For nested content:

```swift
OutlineGroup(data, children: \.children) { item in
    NavigationLink(value: item) {
        Label {
            Text(item.name)
        } icon: {
            Image(systemName: item.icon)
        }
    }
}
.listStyle(.sidebar)
```

---

## Content Areas

### Layout Containers

```swift
// Vertical stacking
VStack(alignment: .leading, spacing: 16) {
    HeaderView()
    ContentView()
    FooterView()
}
.padding()

// Horizontal arrangement
HStack(alignment: .top, spacing: 12) {
    LeadingView()
    Spacer()
    TrailingView()
}

// Layered content
ZStack(alignment: .topLeading) {
    BackgroundView()
    ForegroundView()
}

// Scrollable content
ScrollView {
    LazyVStack(spacing: 16) {
        ForEach(items) { item in
            ItemView(item: item)
        }
    }
    .padding()
}
```

### Content Insets

```swift
// Standard content padding
.padding()                      // 16pt all sides
.padding(.horizontal, 20)       // 20pt horizontal (standard window padding)
.padding(.vertical, 16)         // 16pt vertical

// Custom insets
.padding(EdgeInsets(
    top: 16,
    leading: 20,
    bottom: 16,
    trailing: 20
))

// Safe area insets
.safeAreaInset(edge: .top) {
    HeaderView()
}
```

### Empty States

Always provide empty states:

```swift
if items.isEmpty {
    ContentUnavailableView(
        "No Items",
        systemImage: "tray",
        description: Text("Create or import items to get started")
    )
} else {
    List(items) { item in
        ItemRow(item: item)
    }
}
```

---

## Buttons

### Button Styles

macOS 26 provides several native button styles:

```swift
// 1. Bordered Prominent (Primary action)
Button("Save") {
    save()
}
.buttonStyle(.borderedProminent)
.buttonBorderShape(.capsule)
.controlSize(.large)
.keyboardShortcut(.defaultAction)

// 2. Bordered (Secondary action)
Button("Cancel") {
    cancel()
}
.buttonStyle(.bordered)
.buttonBorderShape(.capsule)
.keyboardShortcut(.cancelAction)

// 3. Borderless (Tertiary action)
Button("Learn More") {
    showHelp()
}
.buttonStyle(.borderless)

// 4. Plain (Inline actions)
Button("Details") {
    showDetails()
}
.buttonStyle(.plain)

// 5. Glass (New in macOS 26)
Button("Action") {
    performAction()
}
.buttonStyle(.glass)
```

### Button Sizes

```swift
Button("Large") { }
    .controlSize(.large)        // 32pt height, 15pt text

Button("Regular") { }
    .controlSize(.regular)      // 24pt height, 13pt text (default)

Button("Small") { }
    .controlSize(.small)        // 20pt height, 11pt text

Button("Mini") { }
    .controlSize(.mini)         // 16pt height, 9pt text
```

### Button Border Shapes

```swift
// Capsule (recommended for most buttons)
.buttonBorderShape(.capsule)

// Rounded rectangle
.buttonBorderShape(.roundedRectangle)

// Automatic (adapts to context)
.buttonBorderShape(.automatic)
```

### Icon Buttons

```swift
// Icon-only button
Button {
    toggleFavorite()
} label: {
    Image(systemName: isFavorite ? "star.fill" : "star")
}
.buttonStyle(.plain)
.help("Add to favorites")

// Icon + text
Button {
    share()
} label: {
    Label("Share", systemImage: "square.and.arrow.up")
}
.labelStyle(.titleAndIcon)
```

### Button Groups

```swift
HStack(spacing: 8) {
    Button("Cancel") {
        cancel()
    }
    .buttonStyle(.bordered)

    Button("Save") {
        save()
    }
    .buttonStyle(.borderedProminent)
}

// Segmented control (button group)
Picker("Alignment", selection: $alignment) {
    Label("Left", systemImage: "text.alignleft").tag(Alignment.left)
    Label("Center", systemImage: "text.aligncenter").tag(Alignment.center)
    Label("Right", systemImage: "text.alignright").tag(Alignment.right)
}
.pickerStyle(.segmented)
```

### Button States

```swift
Button("Submit") {
    submit()
}
.disabled(!canSubmit)
.help("Submit the form")
.keyboardShortcut(.return, modifiers: .command)
```

---

## Controls and Components

### Text Fields

```swift
// Standard text field
TextField("Enter name", text: $name)
    .textFieldStyle(.roundedBorder)
    .frame(height: 24)

// Secure field
SecureField("Password", text: $password)
    .textFieldStyle(.roundedBorder)

// Multiline text editor
TextEditor(text: $notes)
    .frame(minHeight: 100)
    .border(Color.separator, width: 1)
    .cornerRadius(6)

// Text field with validation
TextField("Email", text: $email)
    .textFieldStyle(.roundedBorder)
    .textContentType(.emailAddress)
    .autocapitalization(.none)
    .overlay(alignment: .trailing) {
        if !email.isEmpty {
            Image(systemName: isValidEmail ? "checkmark.circle.fill" : "xmark.circle.fill")
                .foregroundStyle(isValidEmail ? .green : .red)
                .padding(.trailing, 8)
        }
    }
```

### Pickers

```swift
// Pop-up button (most common on macOS)
Picker("Priority", selection: $priority) {
    ForEach(Priority.allCases) { priority in
        Text(priority.rawValue).tag(priority)
    }
}
.pickerStyle(.menu)
.frame(width: 150)

// Segmented picker
Picker("View Mode", selection: $viewMode) {
    Text("List").tag(ViewMode.list)
    Text("Grid").tag(ViewMode.grid)
    Text("Columns").tag(ViewMode.columns)
}
.pickerStyle(.segmented)

// Inline picker (for forms)
Picker("Category", selection: $category) {
    ForEach(categories) { category in
        Text(category.name).tag(category)
    }
}
.pickerStyle(.inline)
```

### Sliders

```swift
// Standard slider
Slider(value: $volume, in: 0...100, step: 1) {
    Text("Volume")
} minimumValueLabel: {
    Image(systemName: "speaker.fill")
} maximumValueLabel: {
    Image(systemName: "speaker.wave.3.fill")
}

// Slider with live value display
VStack {
    HStack {
        Text("Brightness")
        Spacer()
        Text("\(Int(brightness))%")
            .foregroundStyle(.secondary)
    }
    Slider(value: $brightness, in: 0...100, step: 1)
}
```

### Toggles and Checkboxes

```swift
// Toggle switch
Toggle("Enable Feature", isOn: $isEnabled)
    .toggleStyle(.switch)

// Checkbox (default on macOS)
Toggle("Show hidden files", isOn: $showHidden)

// Button toggle
Toggle(isOn: $isBold) {
    Label("Bold", systemImage: "bold")
}
.toggleStyle(.button)
```

### Steppers

```swift
Stepper(value: $count, in: 0...10) {
    HStack {
        Text("Count:")
        Text("\(count)")
            .foregroundStyle(.secondary)
    }
}
```

---

## Lists and Tables

### List Styles

```swift
// Sidebar list (most common)
List(items, selection: $selection) {
    ForEach(items) { item in
        ItemRow(item: item)
    }
}
.listStyle(.sidebar)

// Inset list
List(items) {
    ForEach(items) { item in
        ItemRow(item: item)
    }
}
.listStyle(.inset)
.alternatingRowBackgrounds(.enabled)

// Plain list
List(items) {
    ForEach(items) { item in
        ItemRow(item: item)
    }
}
.listStyle(.plain)
```

### List with Sections

```swift
List {
    Section("Recent") {
        ForEach(recentItems) { item in
            ItemRow(item: item)
        }
    }

    Section("All Items") {
        ForEach(allItems) { item in
            ItemRow(item: item)
        }
    }
}
.listStyle(.inset)
```

### List Operations

```swift
List(items, selection: $selection) {
    ForEach(items) { item in
        ItemRow(item: item)
    }
    .onDelete(perform: deleteItems)
    .onMove(perform: moveItems)
}
.contextMenu(forSelectionType: Item.ID.self) { selection in
    Button("Open") { openItems(selection) }
    Button("Duplicate") { duplicateItems(selection) }
    Divider()
    Button("Delete", role: .destructive) { deleteItems(selection) }
}
```

### Outline Groups (Hierarchical Lists)

```swift
OutlineGroup(data, children: \.children) { item in
    NavigationLink(value: item) {
        Label {
            Text(item.name)
        } icon: {
            Image(systemName: item.icon)
        }
    }
}
```

---

## Swift Charts

### Basic Chart Types

```swift
// Bar Chart
Chart(data) {
    BarMark(
        x: .value("Category", $0.category),
        y: .value("Value", $0.value)
    )
    .foregroundStyle(by: .value("Category", $0.category))
}
.chartXAxis {
    AxisMarks(values: .automatic)
}
.chartYAxis {
    AxisMarks(position: .leading)
}
.frame(height: 250)

// Line Chart
Chart(data) {
    LineMark(
        x: .value("Date", $0.date),
        y: .value("Value", $0.value)
    )
    .lineStyle(StrokeStyle(lineWidth: 2))
    .interpolationMethod(.catmullRom)
    .symbol(Circle())
}
.chartScrollableAxes(.horizontal)
.frame(height: 250)

// Area Chart
Chart(data) {
    AreaMark(
        x: .value("Date", $0.date),
        y: .value("Value", $0.value)
    )
    .foregroundStyle(
        LinearGradient(
            colors: [.blue.opacity(0.3), .blue.opacity(0)],
            startPoint: .top,
            endPoint: .bottom
        )
    )
}
```

### Chart Customization

```swift
Chart(data) {
    ForEach(data) { point in
        BarMark(
            x: .value("Month", point.month),
            y: .value("Sales", point.sales)
        )
        .foregroundStyle(Color.accentColor.gradient)
        .annotation(position: .top) {
            Text("\(point.sales)")
                .font(.caption2)
                .foregroundStyle(.secondary)
        }
    }

    // Reference line
    RuleMark(y: .value("Target", targetValue))
        .lineStyle(StrokeStyle(lineWidth: 1, dash: [5]))
        .foregroundStyle(.secondary)
        .annotation(position: .leading, alignment: .center) {
            Text("Target")
                .font(.caption2)
                .foregroundStyle(.secondary)
        }
}
.chartXAxis {
    AxisMarks(values: .stride(by: .month)) { value in
        AxisGridLine()
        AxisValueLabel(format: .dateTime.month(.abbreviated))
    }
}
.chartYAxis {
    AxisMarks(position: .leading) { value in
        AxisGridLine()
        AxisValueLabel()
    }
}
.chartLegend(.visible)
.frame(height: 300)
.padding()
```

### 3D Charts (macOS 26)

```swift
Chart3D {
    SurfacePlot(
        x: .value("X", xValues),
        y: .value("Y", yValues),
        z: .value("Z", zValues)
    )
    .surfaceStyle(.grid(width: 1, color: .gray.opacity(0.5)))
}
.chart3DRenderingStyle(.interactive)
.frame(height: 400, depth: 300)
```

### Chart Interactivity

```swift
@State private var selectedElement: DataPoint?

Chart(data) {
    ForEach(data) { point in
        BarMark(
            x: .value("Category", point.category),
            y: .value("Value", point.value)
        )
        .foregroundStyle(selectedElement?.id == point.id ? .accentColor : .blue)
    }
}
.chartOverlay { proxy in
    GeometryReader { geometry in
        Rectangle()
            .fill(.clear)
            .contentShape(Rectangle())
            .onTapGesture { location in
                guard let element = proxy.value(at: location, as: (String, Double).self) else {
                    return
                }
                selectedElement = data.first { $0.category == element.0 }
            }
    }
}
```

---

## Swift Tables

### Basic Table

```swift
Table(items, selection: $selection) {
    TableColumn("Name") { item in
        Text(item.name)
    }
    .width(min: 120, ideal: 200, max: 300)

    TableColumn("Type") { item in
        Label(item.type, systemImage: item.typeIcon)
    }
    .width(min: 80, ideal: 120)

    TableColumn("Size") { item in
        Text(item.size, format: .byteCount(style: .file))
    }
    .width(min: 60, ideal: 80)

    TableColumn("Modified") { item in
        Text(item.modifiedDate, style: .relative)
            .foregroundStyle(.secondary)
    }
    .width(min: 100, ideal: 150)
}
.tableStyle(.inset(alternatesRowBackgrounds: true))
```

### Sortable Table

```swift
Table(items, selection: $selection, sortOrder: $sortOrder) {
    TableColumn("Name", value: \.name)
    TableColumn("Date", value: \.date)
    TableColumn("Amount", value: \.amount)
}
.onChange(of: sortOrder) { _, newOrder in
    items.sort(using: newOrder)
}
```

### Hierarchical Table

```swift
Table(of: Item.self, children: \.children) {
    TableColumn("Name") { item in
        Text(item.name)
    }
    TableColumn("Count") { item in
        Text("\(item.count)")
    }
} rows: {
    ForEach(items) { item in
        TableRow(item)
    }
}
```

### Table Context Menu

```swift
Table(items, selection: $selection) {
    // Columns
}
.contextMenu(forSelectionType: Item.ID.self) { selection in
    Button("Open") { openItems(selection) }
    Button("Get Info") { showInfo(selection) }
    Divider()
    Button("Move to Trash", role: .destructive) {
        deleteItems(selection)
    }
}
```

---

## Disclosure Groups

### Basic Disclosure Group

```swift
DisclosureGroup("Advanced Settings", isExpanded: $isExpanded) {
    VStack(alignment: .leading, spacing: 8) {
        Toggle("Enable Debug Mode", isOn: $debugMode)
        Slider(value: $threshold, in: 0...100) {
            Text("Threshold")
        }
        Picker("Log Level", selection: $logLevel) {
            ForEach(LogLevel.allCases) { level in
                Text(level.name).tag(level)
            }
        }
    }
    .padding(.leading, 16)
    .padding(.vertical, 8)
}
```

### Nested Disclosure Groups

```swift
DisclosureGroup("Preferences", isExpanded: $preferencesExpanded) {
    DisclosureGroup("Appearance", isExpanded: $appearanceExpanded) {
        VStack(alignment: .leading, spacing: 8) {
            Picker("Theme", selection: $theme) {
                Text("Light").tag(Theme.light)
                Text("Dark").tag(Theme.dark)
                Text("Auto").tag(Theme.auto)
            }
            Toggle("Show Sidebar", isOn: $showSidebar)
        }
        .padding(.leading, 16)
    }

    DisclosureGroup("Privacy", isExpanded: $privacyExpanded) {
        VStack(alignment: .leading, spacing: 8) {
            Toggle("Analytics", isOn: $analytics)
            Toggle("Crash Reports", isOn: $crashReports)
        }
        .padding(.leading, 16)
    }
}
```

---

## Dialogs and Sheets

### Alerts

```swift
// Simple alert
.alert("Delete Item?", isPresented: $showDeleteAlert) {
    Button("Delete", role: .destructive) {
        deleteItem()
    }
    Button("Cancel", role: .cancel) { }
} message: {
    Text("This action cannot be undone.")
}

// Alert with text field
.alert("Rename Item", isPresented: $showRenameAlert) {
    TextField("Name", text: $newName)
    Button("Rename") {
        renameItem(to: newName)
    }
    Button("Cancel", role: .cancel) { }
}
```

### Confirmation Dialogs

```swift
.confirmationDialog(
    "Choose Action",
    isPresented: $showActions,
    titleVisibility: .visible
) {
    Button("Export...") { export() }
    Button("Duplicate") { duplicate() }
    Divider()
    Button("Delete", role: .destructive) { delete() }
} message: {
    Text("Select an action to perform on the selected items")
}
```

### Sheets

```swift
.sheet(isPresented: $showSheet) {
    NavigationStack {
        SheetContentView()
            .navigationTitle("New Item")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        showSheet = false
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Done") {
                        saveAndDismiss()
                    }
                    .disabled(!canSave)
                }
            }
    }
    .frame(minWidth: 500, minHeight: 400)
}
```

### Popovers

```swift
.popover(isPresented: $showPopover, arrowEdge: .bottom) {
    VStack(alignment: .leading, spacing: 12) {
        Text("Quick Info")
            .font(.headline)

        Text(detailInfo)
            .font(.body)
            .foregroundStyle(.secondary)

        Button("More Details...") {
            showFullDetails()
        }
    }
    .padding()
    .frame(width: 300)
}
```

### File Importers/Exporters

```swift
// File importer
.fileImporter(
    isPresented: $showImporter,
    allowedContentTypes: [.json, .xml],
    allowsMultipleSelection: true
) { result in
    switch result {
    case .success(let urls):
        importFiles(urls)
    case .failure(let error):
        handleError(error)
    }
}

// File exporter
.fileExporter(
    isPresented: $showExporter,
    document: document,
    contentType: .json,
    defaultFilename: "Export.json"
) { result in
    switch result {
    case .success(let url):
        print("Saved to: \(url)")
    case .failure(let error):
        handleError(error)
    }
}
```

---

## Menus and Context Menus

### Main Menu Commands

```swift
@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            // Add to existing menus
            CommandGroup(after: .newItem) {
                Button("Import...") {
                    importFiles()
                }
                .keyboardShortcut("i", modifiers: [.command, .shift])
            }

            // Custom menu
            CommandMenu("Tools") {
                Button("Process Data") {
                    processData()
                }
                .keyboardShortcut("p", modifiers: [.command, .option])

                Divider()

                Button("Settings...") {
                    openSettings()
                }
                .keyboardShortcut(",", modifiers: .command)
            }
        }
    }
}
```

### Context Menus

```swift
.contextMenu {
    Button {
        copy()
    } label: {
        Label("Copy", systemImage: "doc.on.doc")
    }
    .keyboardShortcut("c", modifiers: .command)

    Button {
        paste()
    } label: {
        Label("Paste", systemImage: "doc.on.clipboard")
    }
    .keyboardShortcut("v", modifiers: .command)

    Divider()

    Menu("Share") {
        Button("Mail") { shareViaMail() }
        Button("Messages") { shareViaMessages() }
    }

    Divider()

    Button(role: .destructive) {
        delete()
    } label: {
        Label("Delete", systemImage: "trash")
    }
    .keyboardShortcut(.delete, modifiers: .command)
}
```

### Menu Buttons

```swift
Menu {
    Button("New Document") { createDocument() }
    Button("New Folder") { createFolder() }
    Divider()
    Button("Import...") { import() }
} label: {
    Label("New", systemImage: "plus")
}
.menuStyle(.borderlessButton)
```

---

## Settings Windows

### Settings Scene

```swift
Settings {
    SettingsView()
}
```

### Settings View

```swift
struct SettingsView: View {
    var body: some View {
        TabView {
            GeneralSettingsView()
                .tabItem {
                    Label("General", systemImage: "gear")
                }
                .tag(SettingsTab.general)

            AppearanceSettingsView()
                .tabItem {
                    Label("Appearance", systemImage: "paintbrush")
                }
                .tag(SettingsTab.appearance)

            AdvancedSettingsView()
                .tabItem {
                    Label("Advanced", systemImage: "gearshape.2")
                }
                .tag(SettingsTab.advanced)
        }
        .frame(width: 500, height: 400)
    }
}

struct GeneralSettingsView: View {
    @AppStorage("userName") private var userName = ""
    @AppStorage("autoSave") private var autoSave = true

    var body: some View {
        Form {
            Section {
                TextField("Name:", text: $userName)
                Toggle("Auto-save documents", isOn: $autoSave)
            }
        }
        .padding()
    }
}
```

---

## State Management and Data Flow

### View Models (@Observable)

```swift
@MainActor
@Observable
final class DocumentViewModel {
    var documents: [Document] = []
    var selectedDocument: Document?
    var isLoading = false
    var errorMessage: String?

    private let dataService: DataService

    init(dataService: DataService = .shared) {
        self.dataService = dataService
    }

    func loadDocuments() async {
        isLoading = true
        errorMessage = nil

        do {
            documents = try await dataService.fetchDocuments()
        } catch {
            errorMessage = error.localizedDescription
        }

        isLoading = false
    }

    func createDocument() async {
        let newDocument = Document(title: "Untitled")

        do {
            try await dataService.save(newDocument)
            documents.append(newDocument)
            selectedDocument = newDocument
        } catch {
            errorMessage = error.localizedDescription
        }
    }
}
```

### Actor-Based Services

```swift
actor DataService {
    static let shared = DataService()

    private var cache: [UUID: Document] = [:]

    func fetchDocuments() async throws -> [Document] {
        // Simulate network/database fetch
        try await Task.sleep(for: .seconds(1))
        return Array(cache.values)
    }

    func save(_ document: Document) async throws {
        cache[document.id] = document
        // Persist to disk/database
    }

    func delete(_ documentID: UUID) async throws {
        cache.removeValue(forKey: documentID)
        // Delete from disk/database
    }
}
```

### Sendable Models

```swift
struct Document: Identifiable, Sendable, Codable {
    let id: UUID
    var title: String
    var content: String
    var createdDate: Date
    var modifiedDate: Date

    init(title: String = "Untitled", content: String = "") {
        self.id = UUID()
        self.title = title
        self.content = content
        self.createdDate = Date()
        self.modifiedDate = Date()
    }
}
```

---

## Accessibility

### Basic Accessibility Labels

```swift
Button("Save") {
    save()
}
.accessibilityLabel("Save Document")
.accessibilityHint("Saves the current document to disk")

Image(systemName: "trash")
    .accessibilityLabel("Delete")
    .accessibilityHint("Move selected items to trash")
```

### Custom Accessibility Elements

```swift
CustomControl()
    .accessibilityElement()
    .accessibilityAddTraits(.isButton)
    .accessibilityLabel("Play")
    .accessibilityHint("Starts playback")
    .accessibilityAction {
        playAction()
    }
```

### Accessibility for Charts

```swift
Chart(data) {
    // Chart marks
}
.accessibilityElement(children: .ignore)
.accessibilityLabel("Sales Chart")
.accessibilityValue("Showing sales data for the last 6 months")
.accessibilityHint("Use arrow keys to navigate data points")
```

### VoiceOver Support

```swift
// Provide meaningful labels
ForEach(items) { item in
    ItemRow(item: item)
        .accessibilityLabel(item.name)
        .accessibilityValue("\(item.count) items")
        .accessibilityHint("Double-click to open")
}

// Group related elements
HStack {
    Image(systemName: "star.fill")
    Text("5.0")
    Text("rating")
}
.accessibilityElement(children: .combine)
.accessibilityLabel("Rating: 5.0 stars")
```

### Dynamic Type Support

```swift
Text("Content")
    .font(.body)
    .dynamicTypeSize(.large...DynamicTypeSize.accessibility3)
```

---

## Performance Optimization

### Lazy Loading

```swift
// Use LazyVStack/LazyHStack for large lists
LazyVStack(spacing: 8) {
    ForEach(items) { item in
        ItemRow(item: item)
            .onAppear {
                loadMoreIfNeeded(item)
            }
    }
}

// Pagination
func loadMoreIfNeeded(_ item: Item) {
    guard item == items.last else { return }
    Task {
        await loadNextPage()
    }
}
```

### TaskGroup for Parallel Processing

```swift
func processAll(_ items: [Item]) async -> [Result] {
    await withTaskGroup(of: Result.self) { group in
        for item in items {
            group.addTask {
                await process(item)
            }
        }

        var results: [Result] = []
        for await result in group {
            results.append(result)
        }
        return results
    }
}
```

### Image Caching

```swift
actor ImageCache {
    static let shared = ImageCache()

    private var cache: [URL: Image] = [:]

    func image(for url: URL) -> Image? {
        cache[url]
    }

    func cache(_ image: Image, for url: URL) {
        cache[url] = image
    }
}

// Usage
struct CachedImageView: View {
    let url: URL
    @State private var image: Image?

    var body: some View {
        Group {
            if let image = image {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else {
                ProgressView()
                    .task {
                        await loadImage()
                    }
            }
        }
    }

    private func loadImage() async {
        // Check cache first
        if let cached = await ImageCache.shared.image(for: url) {
            image = cached
            return
        }

        // Load from network
        guard let data = try? await URLSession.shared.data(from: url).0,
              let nsImage = NSImage(data: data) else {
            return
        }

        let newImage = Image(nsImage: nsImage)
        image = newImage
        await ImageCache.shared.cache(newImage, for: url)
    }
}
```

### Debouncing Search

```swift
@State private var searchText = ""
@State private var searchTask: Task<Void, Never>?

var body: some View {
    TextField("Search", text: $searchText)
        .onChange(of: searchText) { _, newValue in
            searchTask?.cancel()
            searchTask = Task {
                try? await Task.sleep(for: .milliseconds(300))
                if !Task.isCancelled {
                    await performSearch(newValue)
                }
            }
        }
}
```

---

## Best Practices

### Clear Action Hierarchy

```swift
// ❌ BAD - Competing primary actions
HStack {
    Button("Save") { }
        .buttonStyle(.borderedProminent)
    Button("Export") { }
        .buttonStyle(.borderedProminent)
}

// ✅ GOOD - Clear hierarchy
HStack {
    Button("Export") { }
        .buttonStyle(.bordered)
    Button("Save") { }
        .buttonStyle(.borderedProminent)
}
```

### Proper Error Handling

```swift
// ✅ GOOD - User-friendly errors
enum DocumentError: LocalizedError {
    case notFound
    case invalidFormat
    case saveFailed(underlying: Error)

    var errorDescription: String? {
        switch self {
        case .notFound:
            return "The document could not be found"
        case .invalidFormat:
            return "The document format is not supported"
        case .saveFailed(let error):
            return "Failed to save: \(error.localizedDescription)"
        }
    }

    var recoverySuggestion: String? {
        switch self {
        case .notFound:
            return "Try searching for the document in Finder"
        case .invalidFormat:
            return "Try opening the document in another app"
        case .saveFailed:
            return "Check that you have write permissions and sufficient disk space"
        }
    }
}
```

### Loading States

```swift
// ✅ GOOD - Clear loading states
struct ContentView: View {
    @State private var viewModel = ViewModel()

    var body: some View {
        Group {
            if viewModel.isLoading {
                ProgressView("Loading...")
            } else if let error = viewModel.errorMessage {
                ErrorView(message: error)
            } else if viewModel.items.isEmpty {
                ContentUnavailableView(
                    "No Items",
                    systemImage: "tray",
                    description: Text("Create items to get started")
                )
            } else {
                List(viewModel.items) { item in
                    ItemRow(item: item)
                }
            }
        }
        .task {
            await viewModel.loadItems()
        }
    }
}
```

### Keyboard Navigation

```swift
// ✅ GOOD - Full keyboard support
List(items, selection: $selection) {
    ForEach(items) { item in
        ItemRow(item: item)
    }
}
.onDeleteCommand {
    deleteSelection()
}
.onMoveCommand { direction in
    moveSelection(direction)
}
.keyboardShortcut("a", modifiers: .command) {
    selectAll()
}
```

---

## Complete Examples

### Full-Featured Notes App

Complete implementation of a native macOS notes application demonstrating all best practices:

```swift
// MARK: - App Entry Point
@main
struct NotesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(minWidth: 800, minHeight: 600)
        }
        .commands {
            NotesCommands()
        }
        .windowStyle(.titleBar)
        .windowToolbarStyle(.unified)

        Settings {
            SettingsView()
        }
    }
}

// MARK: - Data Models
struct Note: Identifiable, Codable, Sendable {
    let id: UUID
    var title: String
    var content: String
    var folder: Folder
    var createdDate: Date
    var modifiedDate: Date

    init(title: String = "Untitled", folder: Folder = .notes) {
        self.id = UUID()
        self.title = title
        self.content = ""
        self.folder = folder
        self.createdDate = Date()
        self.modifiedDate = Date()
    }
}

enum Folder: String, Codable, CaseIterable, Identifiable {
    case all = "All Notes"
    case notes = "Notes"
    case work = "Work"
    case personal = "Personal"

    var id: String { rawValue }
    var icon: String {
        switch self {
        case .all: return "folder"
        case .notes: return "note.text"
        case .work: return "briefcase"
        case .personal: return "person"
        }
    }
}

// MARK: - Data Service
actor NotesDataService {
    static let shared = NotesDataService()

    private var notes: [Note] = []

    init() {
        // Load sample data
        notes = [
            Note(title: "Meeting Notes", folder: .work),
            Note(title: "Shopping List", folder: .personal),
            Note(title: "Ideas", folder: .notes)
        ]
    }

    func fetchNotes(in folder: Folder?) async -> [Note] {
        if let folder = folder, folder != .all {
            return notes.filter { $0.folder == folder }
        }
        return notes
    }

    func save(_ note: Note) async {
        if let index = notes.firstIndex(where: { $0.id == note.id }) {
            notes[index] = note
        } else {
            notes.append(note)
        }
    }

    func delete(_ noteID: UUID) async {
        notes.removeAll { $0.id == noteID }
    }
}

// MARK: - View Model
@MainActor
@Observable
final class NotesViewModel {
    var notes: [Note] = []
    var selectedNote: Note?
    var selectedFolder: Folder? = .all
    var isLoading = false
    var searchText = ""

    private let dataService: NotesDataService

    init(dataService: NotesDataService = .shared) {
        self.dataService = dataService
    }

    var filteredNotes: [Note] {
        guard !searchText.isEmpty else { return notes }
        return notes.filter {
            $0.title.localizedCaseInsensitiveContains(searchText) ||
            $0.content.localizedCaseInsensitiveContains(searchText)
        }
    }

    func loadNotes() async {
        isLoading = true
        notes = await dataService.fetchNotes(in: selectedFolder)
        isLoading = false
    }

    func createNote() async {
        let newNote = Note(folder: selectedFolder ?? .notes)
        await dataService.save(newNote)
        notes.append(newNote)
        selectedNote = newNote
    }

    func deleteNote(_ note: Note) async {
        await dataService.delete(note.id)
        notes.removeAll { $0.id == note.id }
        if selectedNote?.id == note.id {
            selectedNote = nil
        }
    }

    func saveCurrentNote() async {
        guard let note = selectedNote else { return }
        await dataService.save(note)
        if let index = notes.firstIndex(where: { $0.id == note.id }) {
            notes[index] = note
        }
    }
}

// MARK: - Main Content View
struct ContentView: View {
    @State private var viewModel = NotesViewModel()
    @State private var columnVisibility: NavigationSplitViewVisibility = .all

    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility) {
            // Sidebar
            SidebarView(
                selectedFolder: $viewModel.selectedFolder
            )
            .navigationSplitViewColumnWidth(min: 200, ideal: 250, max: 300)
        } content: {
            // Notes List
            NotesListView(
                notes: viewModel.filteredNotes,
                selectedNote: $viewModel.selectedNote,
                searchText: $viewModel.searchText,
                isLoading: viewModel.isLoading
            )
            .navigationSplitViewColumnWidth(min: 300, ideal: 350, max: 400)
        } detail: {
            // Note Editor
            if let note = viewModel.selectedNote {
                NoteEditorView(note: Binding(
                    get: { note },
                    set: { viewModel.selectedNote = $0 }
                ))
            } else {
                ContentUnavailableView(
                    "No Note Selected",
                    systemImage: "note.text",
                    description: Text("Select a note to view its contents")
                )
            }
        }
        .navigationSplitViewStyle(.balanced)
        .toolbar {
            ToolbarItem(placement: .navigation) {
                Button {
                    withAnimation {
                        columnVisibility = columnVisibility == .all ? .detailOnly : .all
                    }
                } label: {
                    Label("Toggle Sidebar", systemImage: "sidebar.left")
                }
            }

            ToolbarItem(placement: .primaryAction) {
                Button {
                    Task {
                        await viewModel.createNote()
                    }
                } label: {
                    Label("New Note", systemImage: "plus")
                }
                .keyboardShortcut("n", modifiers: .command)
            }
        }
        .task {
            await viewModel.loadNotes()
        }
        .onChange(of: viewModel.selectedFolder) { _, _ in
            Task {
                await viewModel.loadNotes()
            }
        }
    }
}

// MARK: - Sidebar View
struct SidebarView: View {
    @Binding var selectedFolder: Folder?

    var body: some View {
        List(selection: $selectedFolder) {
            Section {
                ForEach(Folder.allCases) { folder in
                    NavigationLink(value: folder) {
                        Label(folder.rawValue, systemImage: folder.icon)
                    }
                }
            }
        }
        .listStyle(.sidebar)
        .navigationTitle("Folders")
    }
}

// MARK: - Notes List View
struct NotesListView: View {
    let notes: [Note]
    @Binding var selectedNote: Note?
    @Binding var searchText: String
    let isLoading: Bool

    var body: some View {
        VStack(spacing: 0) {
            // Search field
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.secondary)
                TextField("Search", text: $searchText)
                    .textFieldStyle(.plain)
                if !searchText.isEmpty {
                    Button {
                        searchText = ""
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundStyle(.secondary)
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding(8)
            .background(.background)

            Divider()

            // Notes list
            if isLoading {
                ProgressView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            } else if notes.isEmpty {
                ContentUnavailableView(
                    "No Notes",
                    systemImage: "note.text",
                    description: Text(searchText.isEmpty ? "Create a note to get started" : "No notes match your search")
                )
            } else {
                List(notes, selection: $selectedNote) { note in
                    NoteRowView(note: note)
                }
                .listStyle(.inset)
            }
        }
        .navigationTitle("Notes")
    }
}

// MARK: - Note Row
struct NoteRowView: View {
    let note: Note

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(note.title.isEmpty ? "Untitled" : note.title)
                .font(.headline)
                .lineLimit(1)

            HStack {
                Text(note.modifiedDate, style: .relative)
                    .font(.caption)
                    .foregroundStyle(.secondary)

                if !note.content.isEmpty {
                    Text("•")
                        .foregroundStyle(.secondary)
                    Text(note.content)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .lineLimit(1)
                }
            }
        }
        .padding(.vertical, 4)
    }
}

// MARK: - Note Editor
struct NoteEditorView: View {
    @Binding var note: Note

    var body: some View {
        VStack(spacing: 0) {
            // Title field
            TextField("Title", text: $note.title, axis: .vertical)
                .font(.title)
                .textFieldStyle(.plain)
                .padding()

            Divider()

            // Content editor
            TextEditor(text: $note.content)
                .font(.body)
                .padding()
        }
        .onChange(of: note.title) { _, _ in
            note.modifiedDate = Date()
        }
        .onChange(of: note.content) { _, _ in
            note.modifiedDate = Date()
        }
    }
}

// MARK: - Commands
struct NotesCommands: Commands {
    var body: some Commands {
        CommandGroup(after: .newItem) {
            Button("New Note") { }
                .keyboardShortcut("n", modifiers: .command)
        }
    }
}
```

---

## Advanced Patterns

### Infinite Scroll

```swift
struct InfiniteScrollView: View {
    @State private var items: [Item] = []
    @State private var isLoading = false
    @State private var page = 0

    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(items) { item in
                    ItemRow(item: item)
                }

                if isLoading {
                    ProgressView()
                        .padding()
                } else {
                    Color.clear
                        .frame(height: 1)
                        .onAppear {
                            Task {
                                await loadMore()
                            }
                        }
                }
            }
        }
        .task {
            await loadInitial()
        }
    }

    private func loadInitial() async {
        isLoading = true
        items = await fetchPage(0)
        page = 0
        isLoading = false
    }

    private func loadMore() async {
        guard !isLoading else { return }
        isLoading = true
        let newItems = await fetchPage(page + 1)
        items.append(contentsOf: newItems)
        page += 1
        isLoading = false
    }

    private func fetchPage(_ page: Int) async -> [Item] {
        // Fetch data
        []
    }
}
```

### Draft State Management

```swift
@MainActor
@Observable
final class DraftViewModel {
    var originalItem: Item
    var draftItem: Item

    var hasChanges: Bool {
        draftItem != originalItem
    }

    init(item: Item) {
        self.originalItem = item
        self.draftItem = item
    }

    func save() async throws {
        try await dataService.save(draftItem)
        originalItem = draftItem
    }

    func revert() {
        draftItem = originalItem
    }
}

struct ItemEditorView: View {
    @State private var viewModel: DraftViewModel
    @State private var showDiscardAlert = false
    @Environment(\.dismiss) private var dismiss

    init(item: Item) {
        _viewModel = State(wrappedValue: DraftViewModel(item: item))
    }

    var body: some View {
        Form {
            TextField("Name", text: $viewModel.draftItem.name)
            TextEditor(text: $viewModel.draftItem.description)
        }
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                Button("Cancel") {
                    if viewModel.hasChanges {
                        showDiscardAlert = true
                    } else {
                        dismiss()
                    }
                }
            }

            ToolbarItem(placement: .confirmationAction) {
                Button("Save") {
                    Task {
                        try? await viewModel.save()
                        dismiss()
                    }
                }
                .disabled(!viewModel.hasChanges)
            }
        }
        .alert("Discard Changes?", isPresented: $showDiscardAlert) {
            Button("Discard", role: .destructive) {
                dismiss()
            }
            Button("Cancel", role: .cancel) { }
        }
    }
}
```

### Optimistic Updates

```swift
@MainActor
@Observable
final class OptimisticViewModel {
    var items: [Item] = []

    func deleteItem(_ item: Item) async {
        // Optimistically remove from UI
        let originalItems = items
        items.removeAll { $0.id == item.id }

        do {
            // Perform actual deletion
            try await dataService.delete(item.id)
        } catch {
            // Revert on error
            items = originalItems
            showError(error)
        }
    }

    func updateItem(_ item: Item) async {
        // Optimistically update UI
        let originalItems = items
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item
        }

        do {
            // Perform actual update
            try await dataService.update(item)
        } catch {
            // Revert on error
            items = originalItems
            showError(error)
        }
    }
}
```

---

## Troubleshooting

### Common Issues

**Issue**: Toolbar items not appearing
```swift
// ❌ BAD
.toolbar {
    Button("Action") { }
}

// ✅ GOOD
.toolbar {
    ToolbarItem(placement: .primaryAction) {
        Button("Action") { }
    }
}
```

**Issue**: NavigationSplitView not showing all columns
```swift
// ❌ BAD - Default visibility might hide columns
NavigationSplitView {
    Sidebar()
} content: {
    Content()
} detail: {
    Detail()
}

// ✅ GOOD - Explicitly set visibility
@State private var columnVisibility: NavigationSplitViewVisibility = .all

NavigationSplitView(columnVisibility: $columnVisibility) {
    Sidebar()
} content: {
    Content()
} detail: {
    Detail()
}
```

**Issue**: List selection not working
```swift
// ❌ BAD - Missing selection binding
List(items) { item in
    ItemRow(item: item)
}

// ✅ GOOD - Add selection binding
@State private var selection: Item.ID?

List(items, selection: $selection) { item in
    ItemRow(item: item)
}
```

---

## Integration Patterns

### SwiftData Integration

```swift
import SwiftData

@Model
final class Document {
    var title: String
    var content: String
    var createdDate: Date

    init(title: String) {
        self.title = title
        self.content = ""
        self.createdDate = Date()
    }
}

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Document.self)
    }
}

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var documents: [Document]

    var body: some View {
        List(documents) { document in
            Text(document.title)
        }
        .toolbar {
            Button("New") {
                let document = Document(title: "New Document")
                modelContext.insert(document)
            }
        }
    }
}
```

### CloudKit Integration

```swift
import CloudKit

actor CloudKitService {
    private let container = CKContainer.default()

    func fetchRecords() async throws -> [CKRecord] {
        let database = container.publicCloudDatabase
        let query = CKQuery(recordType: "Item", predicate: NSPredicate(value: true))
        let results = try await database.records(matching: query)
        return results.matchResults.compactMap { try? $0.1.get() }
    }
}
```

---

## Testing Strategies

### Unit Testing View Models

```swift
import Testing

@MainActor
@Suite("DocumentViewModel Tests")
struct DocumentViewModelTests {
    var viewModel: DocumentViewModel!
    var mockService: MockDataService!

    init() async throws {
        mockService = MockDataService()
        viewModel = DocumentViewModel(dataService: mockService)
    }

    @Test("Load documents successfully")
    func testLoadDocuments() async throws {
        // Given
        let testDocuments = [
            Document(title: "Test 1"),
            Document(title: "Test 2")
        ]
        mockService.documentsToReturn = testDocuments

        // When
        await viewModel.loadDocuments()

        // Then
        #expect(viewModel.documents.count == 2)
        #expect(viewModel.isLoading == false)
        #expect(viewModel.errorMessage == nil)
    }
}
```

### UI Testing

```swift
import XCTest

final class AppUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    func testCreateDocument() {
        // Tap new button
        app.buttons["New Document"].tap()

        // Verify title field exists
        XCTAssertTrue(app.textFields["Document Title"].exists)

        // Enter title
        let titleField = app.textFields["Document Title"]
        titleField.tap()
        titleField.typeText("My Document")

        // Tap save
        app.buttons["Save"].tap()

        // Verify document appears in list
        XCTAssertTrue(app.staticTexts["My Document"].exists)
    }
}
```

---

## Code Organization

### Recommended Project Structure

```
MyApp/
├── App/
│   ├── MyAppApp.swift
│   ├── ContentView.swift
│   └── Scenes/
│       ├── MainWindowScene.swift
│       └── SettingsScene.swift
├── Core/
│   ├── Models/
│   │   ├── Document.swift
│   │   └── User.swift
│   ├── Services/
│   │   ├── DataService.swift
│   │   └── SyncService.swift
│   ├── Extensions/
│   │   ├── Date+Extensions.swift
│   │   └── String+Extensions.swift
│   └── Utilities/
│       └── Logger.swift
├── Features/
│   ├── Documents/
│   │   ├── ViewModels/
│   │   │   └── DocumentViewModel.swift
│   │   ├── Views/
│   │   │   ├── DocumentListView.swift
│   │   │   └── DocumentEditorView.swift
│   │   ├── Components/
│   │   │   └── DocumentRow.swift
│   │   └── Tests/
│   │       └── DocumentViewModelTests.swift
│   └── Settings/
│       ├── ViewModels/
│       ├── Views/
│       └── Tests/
├── Infrastructure/
│   ├── Persistence/
│   │   └── ModelContainer.swift
│   ├── Networking/
│   │   └── APIClient.swift
│   └── Logging/
│       └── LogManager.swift
├── Resources/
│   ├── Assets.xcassets
│   └── Localizations/
│       ├── en.lproj/
│       └── es.lproj/
└── Tests/
    ├── UnitTests/
    ├── IntegrationTests/
    └── UITests/
```

---

## Summary

This comprehensive macOS native UI style guide provides everything needed to create truly native macOS applications that are indistinguishable from Apple's own apps. Key principles:

1. **Design Philosophy**: Liquid Glass, clarity, consistency, feedback, forgiveness, accessibility
2. **Typography & Spacing**: 8pt grid system, semantic text sizes, proper hierarchy
3. **Colors & Animation**: System colors, 0.15-0.35s animations, native easing
4. **Layout Patterns**: NavigationSplitView, toolbars, sidebars with 200-300pt widths
5. **Components**: Native controls with proper sizing (32/24/20/16pt heights)
6. **State Management**: @Observable view models, actor services, Sendable models
7. **Performance**: Lazy loading, TaskGroup parallelization, image caching
8. **Accessibility**: VoiceOver labels, keyboard navigation, dynamic type
9. **Testing**: Unit tests for view models, UI tests for workflows
10. **Code Organization**: Feature-based structure, clear separation of concerns

**Remember**: Excellence is not achieved by implementing features, but by implementing them in a way that feels native, performs smoothly, and delights users.

---

*Last Updated: 2025-10-28*
*Version: 2.0 (Merged & Enhanced)*
*Target: macOS 26 Tahoe | Swift 6.2 | Xcode 26*
