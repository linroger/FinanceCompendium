# Accessibility Analysis Report

**Status**: COMPLETED
**Agent**: Accessibility Specialist
**Completion Date**: December 23, 2025

## Executive Summary

This report outlines the comprehensive accessibility strategy for the CareerJourney application. The goal is to ensure the application is not just compliant with standards, but provides a first-class experience for users with diverse needs (Vision, Hearing, Motor, Cognitive). The strategy is built upon the **macOS 26** and **iOS 19** accessibility frameworks, leveraging SwiftUI's declarative accessibility modifiers to ensure deeper integration than retrofitted solutions.

## 1. Vision & VoiceOver Strategy

VoiceOver support will be treated as a primary interface modality, not an afterthought.

### Semantic Labeling Strategy
*   **Elements**: Every interactive element (Buttons, TextFields, Toggles) must have a clear `accessibilityLabel`.
*   **Values**: Elements that hold data (e.g., a "Status" badge) must expose their value via `accessibilityValue`.
*   **Hints**: Use `accessibilityHint` *sparingly*—only for ambiguous controls. Standard macOS controls usually don't need hints.

| Component | Element | Label Strategy | Example |
| :--- | :--- | :--- | :--- |
| **Sidebar** | Navigation Link | "Navigation Destination" | Label: "Applications", Hint: "Shows list of job applications" |
| **Job List** | Table Row | "Entity Name, Status" | Label: "Software Engineer at Apple", Value: "Interviewing, High Priority" |
| **Status Badge** | Icon + Text | "Status Indicator" | Label: "Application Status", Value: "Offer Received" |
| **Form** | Text Field | Field Name | Label: "Company Name" (Placeholder is not enough) |

### Grouping & Navigation
*   **Logical Groups**: Complex UI components (like a job card with multiple metadata points) will use `.accessibilityElement(children: .combine)` to present a single, coherent focusable element to VoiceOver users, rather than forcing them to swipe through 5 separate text labels.
*   **Custom Rotors**: For the "Job Applications" list, we will implement a Custom Rotor for "Status" allowing VoiceOver users to jump between "Applied", "Interviewing", and "Offers" without navigating every single item.

## 2. Visual Accessibility (Dynamic Type & Contrast)

### Dynamic Type (Scalability)
The app will support Dynamic Type from day one.
*   **Layout Adaptability**: Avoid fixed-height containers. Row heights in `List` and `Table` will be `automatic` to accommodate Large Accessibility Sizes (AX1-AX5).
*   **Font Styles**: Use semantic `Font.TextStyle` (e.g., `.headline`, `.body`, `.caption`) rather than fixed point sizes.
*   **Truncation**: Avoid truncation in critical data. Use `.lineLimit(nil)` and wrapping stacks (`VStack` inside `HStack`) when text scales up.

### Contrast & Color
*   **Semantic Colors**: Use `Color.primary`, `.secondary`, etc., which automatically adjust contrast in Light/Dark modes and "Increase Contrast" mode.
*   **Differentiation**: Never rely on color alone to convey status.
    *   *Bad*: A red dot for "Rejected".
    *   *Good*: A red dot plus text "Rejected" or a specific icon (xmark).

## 3. Interaction & Motor Accessibility

### Focus Management & Keyboard Navigation
macOS users heavily rely on keyboard navigation.
*   **Focus Order**: Ensure the `Tab` key moves logically through forms (Top-Left → Bottom-Right). Use `.accessibilitySortPriority()` if the visual layout differs from the logical DOM order.
*   **Full Keyboard Access**: All custom controls (like custom star ratings or status pickers) must be focusable (`.focusable()`) and respond to Space/Enter keys (`.onKeyPress`).

### Reduce Motion
*   **Animation**: Respect the `accessibilityReduceMotion` environment value.
    *   *Standard*: Spring animations for panel transitions.
    *   *Reduced*: Fade transitions or instant state changes.
*   **Implementation**:
    ```swift
    @Environment(\.accessibilityReduceMotion) var reduceMotion

    var transition: AnyTransition {
        reduceMotion ? .opacity : .slide
    }
    ```

## 4. Cognitive Accessibility

*   **Clarity**: Error messages in Forms will be explicit and placed near the source of the error (e.g., "URL is invalid" right below the URL field).
*   **Consistency**: Icons and terminology (e.g., "Trash" vs "Delete") will be consistent across the entire app.

## 5. Implementation Roadmap

### Phase 1: Foundation (Core Components)
*   [ ] Implement `AccessibilityExtensions.swift` with helper modifiers.
*   [ ] Audit all `DesignSystem` colors for contrast compliance.
*   [ ] Ensure `Sidebar` and `DetailView` support Dynamic Type scaling.

### Phase 2: Form & List (Data Entry)
*   [ ] Add `accessibilityLabel` and `accessibilityValue` to `JobApplicationForm`.
*   [ ] Implement `.accessibilityElement(children: .combine)` for Table Rows.
*   [ ] Verify Tab loop in Form fields.

### Phase 3: Advanced Features
*   [ ] Create "Status" Custom Rotor for lists.
*   [ ] Implement "Reduce Motion" variants for complex layout transitions.
*   [ ] Add "Magic Tap" (Two-finger double tap) support for primary actions (e.g., "Save").

## 6. Testing Strategy
*   **Automated**: Use Xcode's "Audit Accessibility" feature in UI Tests.
*   **Manual**:
    *   Smoke test critical flows (Create Application) using VoiceOver.
    *   Verify layout integrity at "Accessibility Large" text size.
    *   Test entire app using Keyboard only (Full Keyboard Access).
