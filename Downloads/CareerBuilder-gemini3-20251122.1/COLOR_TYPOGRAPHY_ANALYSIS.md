# Color & Typography Analysis: CareerJourney

## Executive Summary
This document defines the visual system for the "CareerJourney" macOS app, strictly adhering to **macOS 26 Native Design Principles**. The system prioritizes **Liquid Glass** aesthetics, semantic clarity for job application statuses, and a robust typography scale based on **SF Pro**.

## 1. Color System

### 1.1. Core Principles
- **Semantic-First:** Colors are never used purely for decoration. Every color conveys status, priority, or interactivity.
- **Adaptive & Vibrancy-Aware:** All colors must support Light and Dark modes and blend correctly with macOS 26 translucent materials (`.material`, `.ultraThinMaterial`).
- **Standard Palette:** We rely on `Color.blue`, `Color.green`, etc., but wrap them in semantic tokens.

### 1.2. Semantic Palettes

#### Status Colors (Job Application Lifecycle)
These colors provide instant visual recognition of an application's state in Lists and Boards.

| Status | Semantic Token | Underlying Color | Usage |
| :--- | :--- | :--- | :--- |
| **Wishlist** | `Status.wishlist` | `Color.gray` | Neutral, initial state. |
| **Applied** | `Status.applied` | `Color.blue` | Active, waiting. Standard macOS "active" tint. |
| **Interviewing** | `Status.interviewing` | `Color.purple` | High activity, distinct from Applied. |
| **Offer** | `Status.offer` | `Color.green` | Success, positive outcome. |
| **Rejected** | `Status.rejected` | `Color.red` | Negative outcome, terminal state. |
| **Stalled/Ghosted** | `Status.stalled` | `Color.orange` | Warning, requires attention. |

#### Priority Colors
Used for deadlines and task urgency.

| Priority | Semantic Token | Underlying Color |
| :--- | :--- | :--- |
| **High** | `Priority.high` | `Color.red` |
| **Medium** | `Priority.medium` | `Color.yellow` |
| **Low** | `Priority.low` | `Color.gray` |

### 1.3. macOS 26 Material Usage (Liquid Glass)
The "Liquid Glass" effect is achieved through layering standard SwiftUI materials.

- **Sidebar:** `.regularMaterial` (Standard sidebar translucency)
- **Detail View Background:** `.background` (Solid/Opaque for content readability)
- **Floating Panels/Popovers:** `.ultraThinMaterial` + `Color.clear` background for maximum glass effect.
- **Card Backgrounds:** `.quaternarySystemFill` or `.thickMaterial` depending on depth.

## 2. Typography System

### 2.1. Type Scale (SF Pro)
We adhere strictly to the Apple Human Interface Guidelines type scale.

| Role | Weight | Size (Default) | Usage |
| :--- | :--- | :--- | :--- |
| **Large Title** | `Bold` | 34pt | Main View Titles (if not inline) |
| **Title 1** | `Bold` | 28pt | Section Headers in Detail View |
| **Title 2** | `Bold` | 22pt | Card Titles, Important metrics |
| **Headline** | `Semibold` | 17pt | **Company Name**, List Item Titles |
| **Body** | `Regular` | 17pt | Main content, Job Descriptions |
| **Subheadline** | `Regular` | 15pt | **Job Title**, Metadata lines |
| **Footnote** | `Regular` | 13pt | Dates, timestamps, secondary metadata |
| **Caption 1** | `Medium` | 12pt | Badges, Tags, Chart Labels |
| **Caption 2** | `Medium` | 11pt | Tiny constraints, copyright info |

### 2.2. Usage Rules
1.  **Company vs. Role:**
    *   **Company Name:** Primary importance → `Font.headline`
    *   **Job Title:** Secondary importance → `Font.subheadline` + `.secondary` foreground style.
2.  **Monospaced Numbers:** Use `.monospacedDigit()` for all salaries, dates, and metrics to ensure alignment in tables.
3.  **Readability:** Body text lines should not exceed 60-80 characters. Use `textScale(.secondary)` for less critical UI elements if available.

## 3. Implementation Plan (`DesignSystem.swift`)

We will centralize these definitions in a `DesignSystem` enum to prevent magic values.

```swift
import SwiftUI

/// Centralized Design System for CareerJourney
enum DesignSystem {
    
    enum Color {
        static func status(_ status: JobStatus) -> SwiftUI.Color {
            switch status {
            case .wishlist: return .gray
            case .applied: return .blue
            case .interviewing: return .purple
            case .offer: return .green
            case .rejected: return .red
            case .stalled: return .orange
            }
        }
        
        static func priority(_ priority: TaskPriority) -> SwiftUI.Color {
            switch priority {
            case .high: return .red
            case .medium: return .yellow
            case .low: return .gray
            }
        }
    }
    
    enum Typography {
        static let companyName = Font.headline
        static let jobTitle = Font.subheadline
        static let bodyText = Font.body
        static let metadata = Font.footnote
    }
}

// Extension for consistent component styling
extension View {
    func standardCardStyle() -> some View {
        self.padding()
            .background(.quaternarySystemFill, in: RoundedRectangle(cornerRadius: 12))
    }
}
```

## 4. Accessibility Checklist
- [ ] **Contrast:** Ensure status colors (especially Yellow/Orange) have sufficient contrast against both Light and Dark backgrounds. Use `.primary` text over these backgrounds if they are capsules.
- [ ] **Dynamic Type:** All fonts must be scalable. Do not hardcode sizes (e.g., use `.title` not `.system(size: 28)`).
- [ ] **Color Independence:** Do not rely solely on color for status. Combine color with text labels or icons (SF Symbols) for users with color blindness.
