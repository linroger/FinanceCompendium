# [7] Layout & Spacing Analysis Report

**Status**: COMPLETED
**Agent**: layout-spacing-agent
**Date**: December 23, 2025
**Focus**: macOS 26 Tahoe Design System, Responsive Grid, Liquid Glass, Cross-Platform Layouts

## 1. Executive Summary

This report defines the comprehensive layout and spacing strategy for CareerJourney, aligned with the **macOS 26 Tahoe** design language. It establishes an 8pt grid system, semantic spacing tokens, responsive layouts for `NavigationSplitView`, and specific implementation details for the "Liquid Glass" visual style. Given the clean slate state of the codebase, this analysis provides the foundational specifications for all UI implementation.

## 2. Layout Foundations

### 2.1 The 8pt Grid System
All layout and spacing must align to an 8pt base grid to ensure rhythm and consistency.
*   **Base Unit**: 8pt
*   **Micro Unit**: 4pt (for tight relationships)
*   **Column Structure**: Fluid columns defined by `NavigationSplitView` constraints.

### 2.2 Semantic Spacing Tokens
We will implement a type-safe `Spacing` enum in `DesignSystem.swift` to prevent magic numbers and ensure consistency.

```swift
enum Spacing {
    /// 2pt - Minimal separation
    static let xxxSmall: CGFloat = 2
    /// 4pt - Micro relationships (icon + text)
    static let xxSmall: CGFloat = 4
    /// 8pt - Standard tight spacing (stack items)
    static let xSmall: CGFloat = 8
    /// 12pt - Component internal spacing
    static let small: CGFloat = 12
    /// 16pt - Standard layout padding / sibling separation
    static let medium: CGFloat = 16
    /// 24pt - Section separation
    static let large: CGFloat = 24
    /// 32pt - Major container separation
    static let xLarge: CGFloat = 32
    /// 48pt - Module separation
    static let xxLarge: CGFloat = 48
    /// 64pt - Macro layout spacing
    static let xxxLarge: CGFloat = 64
}
```

### 2.3 Container Padding Standards
*   **Window Content**: `Spacing.large` (24pt) horizontal, `Spacing.medium` (16pt) vertical.
*   **Card/Panel**: `Spacing.medium` (16pt) internal padding.
*   **Form Section**: `Spacing.medium` (16pt) vertical gap between rows.
*   **List Item**: `Spacing.xSmall` (8pt) vertical, `Spacing.small` (12pt) horizontal.

## 3. Navigation & Window Layout

### 3.1 NavigationSplitView Constraints
Following macOS 26 guidelines for the 3-column layout:

| Column | Min Width | Ideal Width | Max Width | Behavior |
| :--- | :--- | :--- | :--- | :--- |
| **Sidebar** | 200pt | 250pt | 300pt | Collapsible |
| **Content** | 300pt | 400pt | 500pt | Resizable |
| **Detail** | 400pt | Flexible | Infinity | Main workspace |

```swift
NavigationSplitView {
    SidebarView()
        .navigationSplitViewColumnWidth(min: 200, ideal: 250, max: 300)
} content: {
    JobListView()
        .navigationSplitViewColumnWidth(min: 300, ideal: 400, max: 500)
} detail: {
    JobDetailView()
        .navigationSplitViewColumnWidth(min: 400)
}
.navigationSplitViewStyle(.balanced)
```

### 3.2 Window Dimensions
*   **Minimum Size**: 960x600 (to comfortably fit 3 columns)
*   **Default Size**: 1200x800
*   **Placement**: Centered

## 4. Liquid Glass Implementation (macOS 26)

"Liquid Glass" relies on SwiftUI Material types to create depth and context.

### 4.1 Material Hierarchy
*   **Sidebar**: `.background(.regularMaterial)` (System default, but explicit for custom panes)
*   **Floating Toolbars/Capsules**: `.background(.ultraThinMaterial)`
*   **Modals/Sheets**: `.background(.thickMaterial)`
*   **Content Backgrounds**: `.background(Color.clear)` (Let window background show through or use `Color.windowBackground`)

### 4.2 Depth & Shadow
*   **Subtle Depth**: `.shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)`
*   **Floating Elevation**: `.shadow(color: .black.opacity(0.15), radius: 12, x: 0, y: 6)`

## 5. Responsive & Cross-Platform Adaptability

### 5.1 Responsive Breakpoints
While primarily macOS, layouts must adapt to window resizing and future iOS targets.

*   **Compact (< 600pt width)**: Collapse to TabView or Single Stack (iOS behavior).
*   **Medium (600pt - 900pt)**: Double column (Sidebar + Detail).
*   **Expanded (> 900pt)**: Full Triple Column.

### 5.2 Platform Conditionals
```swift
#if os(macOS)
    .padding(.horizontal, Spacing.large) // 24pt
#else
    .padding(.horizontal, Spacing.medium) // 16pt (iOS)
#endif
```

## 6. Component-Specific Layouts

### 6.1 Forms (ItemDetailView)
*   Use `Form { ... }` with `Section` for native styling.
*   **Label Width**: Fixed alignment or `Grid` for custom layouts to ensure labels align vertically.
*   **Input Height**: `ControlSize.regular` (24pt) for standard, `.large` (32pt) for emphasis.

### 6.2 Lists & Tables
*   **Row Height**: 28pt (Regular), 32pt (Large/Badged).
*   **Insets**: Use `.listRowInsets` to override default padding where necessary for full-width swipe actions.

### 6.3 Charts
*   **Margins**: Ensure chart axes have `Spacing.medium` clearance from container edges.
*   **Height**: Fixed minimums (e.g., `frame(height: 250)`) to prevent collapse in scroll views.

## 7. Implementation Roadmap

1.  **Phase 1 (Foundation)**: Define `Spacing` enum and `Layout` constants in `DesignSystem.swift`.
2.  **Phase 2 (Structure)**: Implement `ContentView` with strict `NavigationSplitView` column widths.
3.  **Phase 3 (Components)**: Build reusable layout wrappers (e.g., `StandardPageLayout`, `FormContainer`) that apply standard padding and background materials.
4.  **Phase 4 (Refinement)**: Tune "Liquid Glass" materials and shadows based on visual review in Light/Dark modes.

## 8. Recommendations
*   **Avoid GeometryReader**: Use standard layout containers and `frame` constraints whenever possible to maintain performance.
*   **Use Lazy Stacks**: For lists and grids to ensure smooth scrolling performance.
*   **Strict Enum Usage**: Linter rules should ideally flag raw `CGFloat` values in padding modifiers (e.g., `.padding(10)` -> warning).

This analysis provides the blueprint for a pixel-perfect macOS 26 application layout.
