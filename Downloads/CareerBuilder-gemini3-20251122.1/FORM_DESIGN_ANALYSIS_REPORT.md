# CareerJourney Form Design Analysis Report

**Status**: COMPLETED
**Agent**: Form Design Agent
**Completion Date**: December 23, 2025

## Executive Summary

This report defines the form design strategy for the CareerJourney app, focusing on the `JobApplication` edit/create workflow. The design adheres to the **macOS 26 Native Style Guide**, utilizing the `Form` container, Liquid Glass materials, and modern SwiftUI validation patterns. It aligns with the "ItemDetailView" pattern from Apple Sample Code, ensuring a native, accessible, and keyboard-optimized experience.

## 1. Form Architecture

### Core Components
-   **Container**: `Form` view with `Section` grouping.
-   **Style**: `.formStyle(.grouped)` for clear separation of content and macOS 26 compliance.
-   **Layout**: `ControlGroup` for related action buttons; `HStack` for multi-column inputs where appropriate.
-   **Placement**: displayed within the **Detail** column of the `NavigationSplitView` (edit mode) or as a sheet (creation mode).

### Visual Style (macOS 26)
-   **Material**: Use `.scrollContentBackground(.hidden)` combined with `.background(.thinMaterial)` (Liquid Glass) for floating panels.
-   **Spacing**: Adhere to the 8pt grid system.
-   **Typography**: Use `.font(.body)` for inputs and `.font(.headline)` for section headers.

## 2. JobApplication Form Design

### Fields & Controls

| Field | Control Type | Configuration | Validation |
| :--- | :--- | :--- | :--- |
| **Job Title** | `TextField` | `.textContentType(.jobTitle)`, `.autocorrectionDisabled()` | Required, non-empty |
| **Company** | `TextField` w/ Menu | Autocomplete/Picker for existing companies | Required |
| **Status** | `Picker` | `.pickerStyle(.menu)`, mapped to `ApplicationStatus` | Default: .saved |
| **Priority** | `Picker` | `.pickerStyle(.segmented)` (High/Med/Low) | Default: .medium |
| **Applied Date** | `DatePicker` | `.datePickerStyle(.compact)`, displayed only if Status >= Applied | Future warning |
| **URL** | `TextField` | `.textContentType(.URL)`, `.keyboardType(.URL)` | URL format check |
| **Salary** | `TextField` | `.keyboardType(.decimalPad)`, Currency formatter | Numeric check |
| **Location** | `TextField` | `.textContentType(.location)` | Optional |
| **Notes** | `TextEditor` | `.frame(minHeight: 100)`, `.font(.body)` | Optional |

### Layout Structure (Code Concept)

```swift
Form {
    Section("Essentials") {
        TextField("Job Title", text: $viewModel.jobTitle)
            .focused($focusedField, equals: .jobTitle)
            .textFieldStyle(.roundedBorder)
            
        HStack {
            TextField("Company", text: $viewModel.companyName)
                .textFieldStyle(.roundedBorder)
            // Optional: Menu/Button for company selection
        }
        
        Picker("Status", selection: $viewModel.status) {
            ForEach(ApplicationStatus.allCases) { status in
                Label(status.rawValue, systemImage: status.systemImage)
                    .tag(status)
            }
        }
    }
    
    Section("Details") {
        DatePicker("Applied On", selection: $viewModel.appliedDate, displayedComponents: .date)
        
        Picker("Priority", selection: $viewModel.priority) {
            Text("Low").tag(ApplicationPriority.low)
            Text("Medium").tag(ApplicationPriority.medium)
            Text("High").tag(ApplicationPriority.high)
        }
        .pickerStyle(.segmented)
        
        TextField("URL", text: $viewModel.urlString)
            .textFieldStyle(.roundedBorder)
        TextField("Salary", text: $viewModel.salaryString)
            .textFieldStyle(.roundedBorder)
        TextField("Location", text: $viewModel.location)
            .textFieldStyle(.roundedBorder)
    }
    
    Section("Notes") {
        TextEditor(text: $viewModel.notes)
            .frame(minHeight: 120)
            .font(.body)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.separator, lineWidth: 1)
            )
    }
}
.formStyle(.grouped)
.scrollContentBackground(.hidden)
.background(.thinMaterial) // Liquid Glass effect
```

## 3. Validation Strategy

### Real-time Feedback
-   Use `.overlay(alignment: .trailing)` on `TextField` to show validation icons (checkmark/xmark).
-   Disable the "Save" button in the toolbar if the form is invalid.
-   **Visuals**:
    -   Valid: `Image(systemName: "checkmark.circle.fill").foregroundStyle(.green)`
    -   Invalid: `Image(systemName: "exclamationmark.circle.fill").foregroundStyle(.red)`

### Rules
-   **Job Title**: Must not be empty.
-   **Company**: Must not be empty.
-   **URL**: Must be valid URL format (if provided).
-   **Salary**: Must be numeric (if provided).

## 4. Keyboard Handling & Focus

### Focus Management
-   Use `@FocusState` enum `Field` to manage focus programmatically.
-   **Auto-focus**: Focus "Job Title" when the creation sheet opens.
-   **Tab Navigation**: Ensure logical tab order (Title -> Company -> Status -> etc.).
-   **Submit**: `TextField(..., onCommit: { focusedField = .nextField })`

### Keyboard Shortcuts
-   **Submit**: `Cmd + Return` triggers save (`.keyboardShortcut(.defaultAction)`).
-   **Cancel**: `Esc` triggers dismissal (`.keyboardShortcut(.cancelAction)`).

## 5. Apple Sample Code Alignment

Aligned with `ItemDetailView` and `ItemEditorView` patterns from `SwiftDB`:
-   **Edit Mode**: Detail view acts as a viewer but enters "Edit Mode" or uses inline editing. For CareerJourney, direct inline editing in the Detail view is preferred for frictionless updates (macOS convention).
-   **Creation**: Presented as a sheet with a dedicated `JobApplicationFormView`.
-   **Data Binding**: Uses `@Bindable` on the `@Observable` view model.

## 6. Accessibility

-   **Labels**: All fields have implicit labels via `Form`.
-   **Hints**: Add `.accessibilityHint()` for complex fields (e.g., Status picker).
-   **Dynamic Type**: Support Dynamic Type automatically via standard controls.
-   **VoiceOver**: Ensure validation errors are announced using `.accessibilityValue`.

## 7. Implementation Roadmap

1.  **Create `JobApplicationFormView`**: The core reusable form component (Phase 1).
2.  **Integrate Validation Logic**: Add validation computed properties to the ViewModel (Phase 1).
3.  **Implement Focus Management**: Add `@FocusState` and keyboard shortcuts (Phase 2).
4.  **Connect to Data Model**: Ensure bindings update the SwiftData model via ViewModel (Phase 2).
5.  **Polish**: Apply macOS 26 styling (padding, spacing, Liquid Glass) (Phase 3).
