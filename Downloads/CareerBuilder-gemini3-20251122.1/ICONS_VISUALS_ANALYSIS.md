# Icons & Visuals Analysis Report

**Status**: COMPLETED
**Agent**: Icons & Visuals Specialist
**Completion Date**: December 23, 2025

## Executive Summary

This report defines the visual language, iconography system, and metaphoric framework for the CareerJourney macOS application. The design aligns strictly with **macOS 26 Tahoe** guidelines, leveraging the "Liquid Glass" aesthetic, SF Symbols 6, and a refined system of visual metaphors to create a native, intuitive user experience.

## 1. Visual Design Language: "Liquid Glass"

The application will adopt the **macOS 26 Liquid Glass** design language to ensure a native and modern feel.

### Core Principles
*   **Translucency & Depth**: Use system materials (`.ultraThinMaterial`, `.regularMaterial`) for sidebars, floating panels, and overlays to provide context and depth.
*   **Vibrancy**: Leverage visual effect views to allow desktop wallpaper colors to subtly influence the app's palette, grounding it in the user's environment.
*   **Concentric Corners**: UI elements will maintain corner radii consistent with their containers (e.g., window corners vs. content panels).
*   **Content Focus**: Chrome and controls will recede, using minimal borders and relying on spacing and typography for hierarchy.

### Material Usage Strategy
| UI Component | Material | Rationale |
| :--- | :--- | :--- |
| **Sidebar** | `.bar` (System Default) | Standard macOS sidebar translucency for hierarchy. |
| **Toolbar** | `.bar` (Unified) | Blends seamlessly with the window title bar. |
| **Detail Panels** | `.regularMaterial` | distinct background for content inspection overlays. |
| **Floating Actions** | `.thickMaterial` | Ensures visibility and touch target affordance over content. |
| **Status Badges** | `.ultraThinMaterial` | Subtle background for colored text/icons to reduce visual noise. |

## 2. SF Symbols Iconography System

A comprehensive, consistent set of SF Symbols has been selected to represent navigation, status, and actions. This ensures semantic clarity and platform familiarity.

### Navigation (Sidebar & Tabs)
| Section | SF Symbol | Usage |
| :--- | :--- | :--- |
| **Dashboard** | `square.grid.2x2` | Overview of all application metrics. |
| **Applications** | `briefcase` | Main list of job applications. |
| **Companies** | `building.2` | List of target companies. |
| **Interviews** | `calendar` | Schedule and upcoming interviews. |
| **People** | `person.2` | Contacts, recruiters, and network. |
| **Documents** | `doc.text` | Resumes, cover letters, portfolios. |
| **Settings** | `gear` | Application preferences. |

### Status Indicators (Pipeline Stages)
These icons are paired with semantic colors for quick visual scanning.

| Status | SF Symbol | Semantic Color | Meaning |
| :--- | :--- | :--- | :--- |
| **Wishlist** | `bookmark` | `.secondary` (Gray) | Saved for later, no action taken. |
| **Draft** | `pencil.and.outline` | `.secondary` (Gray) | Application in progress. |
| **Applied** | `paperplane` | `.blue` | Application sent. |
| **Screening** | `phone` | `.purple` | Phone screen or HR chat. |
| **Interview** | `video` | `.indigo` | Remote or technical interview. |
| **On-site** | `building` | `.indigo` | Final round / in-person. |
| **Offer** | `star` | `.yellow` (Gold) | Offer received. |
| **Hired** | `checkmark.seal` | `.green` | Offer accepted. |
| **Rejected** | `xmark.circle` | `.red` | Application rejected. |
| **Withdrawn** | `minus.circle` | `.gray` | Withdrawn by user. |

### Common Actions & Entities
| Action/Entity | SF Symbol | Usage |
| :--- | :--- | :--- |
| **New Item** | `plus` | Create new application/contact. |
| **Edit** | `pencil` | Modify details. |
| **Delete** | `trash` | Remove item (destructive). |
| **Share** | `square.and.arrow.up` | Export or share details. |
| **Filter** | `line.3.horizontal.decrease.circle` | Filter lists. |
| **Sort** | `arrow.up.arrow.down` | Sort lists. |
| **External Link** | `arrow.up.right.square` | Link to job post. |
| **Notes** | `note.text` | User notes. |
| **Search** | `magnifyingglass` | Global search. |
| **Favorite** | `star.fill` | Mark as high priority. |

## 3. Visual Metaphors

To aid user understanding, we will employ specific visual metaphors that map to real-world job hunting concepts.

*   **The Pipeline**: A linear progression view for the "Status" of an application. This is visualized as a horizontal step indicator or chevron chain, reinforcing that job hunting is a process with distinct stages.
*   **The Briefcase**: The central repository for all data related to a specific job (notes, contacts, dates, documents). This metaphor unifies disparate data types under one "Job Application" entity.
*   **The Stack**: Documents and versions (e.g., "Resume v1", "Resume v2") are visualized as a stack of cards, allowing users to swipe through or expand history.
*   **Badges & Tags**: Skills and keywords are represented as capsule-shaped "tags" (similar to Finder tags), making them easy to filter and categorize.

## 4. Implementation Guide

### Standard Icon Modifier
Create a reusable view modifier for consistent icon sizing and rendering style.

```swift
// Extensions/Image+AppIcons.swift

extension Image {
    func navIconStyle() -> some View {
        self
            .symbolRenderingMode(.hierarchical)
            .imageScale(.large)
    }
    
    func statusIconStyle(color: Color) -> some View {
        self
            .symbolVariant(.fill)
            .foregroundStyle(color)
            .imageScale(.medium)
    }
}
```

### Status Badge Component
A standard component for displaying status in lists and headers.

```swift
// Components/StatusBadge.swift

struct StatusBadge: View {
    let status: JobStatus
    
    var body: some View {
        HStack(spacing: 4) {
            Image(systemName: status.iconName)
            Text(status.title)
        }
        .font(.caption.weight(.medium))
        .padding(.horizontal, 8)
        .padding(.vertical, 4)
        .background(status.color.opacity(0.12), in: Capsule())
        .foregroundStyle(status.color)
        .overlay(
            Capsule()
                .strokeBorder(status.color.opacity(0.3), lineWidth: 1)
        )
    }
}
```

## Recommendations
1.  **Adopt SF Symbols 6**: Use the latest symbol variants (e.g., `automotive.front.drive.side`) if applicable, but standard symbols are safer for broad compatibility.
2.  **Consistent Stroke Weights**: Ensure all icons use the `medium` or `regular` weight to match the system font hierarchy.
3.  **Color Accessibility**: Always use semantic system colors (`.blue`, `.red`, etc.) rather than hardcoded hex values to support Dark Mode automatically.
4.  **Symbol Animation**: Use the new `.symbolEffect` modifier in SwiftUI for state changes (e.g., when favoriting an item, use `.symbolEffect(.bounce, value: isFavorite)`).
