//
//  KeyboardHelpView.swift
//  CareerKit
//
//  Keyboard shortcuts and help interface for user guidance
//

import SwiftUI
import OSLog

struct KeyboardHelpView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject private var settingsManager: SettingsManager
    
    @State private var selectedCategory: HelpCategory = .general
    @State private var searchText = ""
    
    enum HelpCategory: String, CaseIterable {
        case general = "General"
        case navigation = "Navigation"
        case jobs = "Job Management"
        case documents = "Documents"
        case notes = "Notes"
        case stats = "Statistics"
        
        var icon: String {
            switch self {
            case .general: return "info.circle"
            case .navigation: return "arrow.left.arrow.right"
            case .jobs: return "briefcase"
            case .documents: return "doc.text"
            case .notes: return "note.text"
            case .stats: return "chart.bar"
            }
        }
    }
    
    var body: some View {
        NavigationSplitView(sidebar: {
            sidebarContent
        }, detail: {
            detailContent
        })
        .navigationTitle("Keyboard Shortcuts & Help")
        .frame(minWidth: 800, minHeight: 600)
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                Button("Close") {
                    dismiss()
                }
                .keyboardShortcut(.escape, modifiers: [])
            }
        }
        .onAppear {
            // Log help view usage for analytics
            Logger(subsystem: "com.careerkit.help", category: "KeyboardHelp")
                .info("User opened keyboard help")
        }
    }
    
    // MARK: - Sidebar Content
    
    private var sidebarContent: some View {
        VStack(spacing: 0) {
            // Search section
            searchSection
            
            Divider()
            
            // Category list
            categoryList
                .frame(maxHeight: .infinity)
            
            Divider()
            
            // Quick tips
            quickTipsSection
        }
        .background(Color.clear)
    }
    
    private var searchSection: some View {
        VStack(spacing: Theme.Spacing.small) {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.secondary)
                    .font(.system(size: 14))
                
                TextField("Search shortcuts...", text: $searchText)
                    .textFieldStyle(.plain)
                    .accessibilityLabel("Search Keyboard Shortcuts")
                
                if !searchText.isEmpty {
                    Button(action: {
                        searchText = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.secondary)
                            .font(.system(size: 14))
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding(8)
            .background(Material.ultraThin, in: RoundedRectangle(cornerRadius: 6))
        }
        .padding()
    }
    
    private var categoryList: some View {
        List(HelpCategory.allCases, id: \.self, selection: $selectedCategory) { category in
            HStack {
                Image(systemName: category.icon)
                    .foregroundColor(.accentColor)
                    .frame(width: 20)
                
                Text(category.rawValue)
                    .fontWeight(selectedCategory == category ? .medium : .regular)
                
                Spacer()
                
                if !searchText.isEmpty {
                    let count = filteredShortcuts(for: category).count
                    if count > 0 {
                        Text("\(count)")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .padding(.vertical, 2)
        }
        .listStyle(.sidebar)
    }
    
    private var quickTipsSection: some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
            Text("Quick Tips")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
            
            VStack(alignment: .leading, spacing: Theme.Spacing.small) {
                TipView(
                    icon: "command",
                    title: "Hold ⌘ while clicking",
                    description: "Select multiple items"
                )
                
                TipView(
                    icon: "option",
                    title: "Hold ⌥ for details",
                    description: "Show additional information"
                )
                
                TipView(
                    icon: "escape",
                    title: "Press Escape",
                    description: "Close dialogs and cancel actions"
                )
            }
        }
        .padding()
        .background(Color.secondary.opacity(0.05))
    }
    
    // MARK: - Detail Content
    
    private var detailContent: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Header
            headerSection
            
            Divider()
            
            // Shortcuts list
            ScrollView {
                LazyVStack(alignment: .leading, spacing: Theme.Spacing.medium) {
                    ForEach(filteredShortcuts(for: selectedCategory), id: \.id) { shortcut in
                        ShortcutRowView(shortcut: shortcut)
                    }
                }
                .padding()
            }
        }
    }
    
    private var headerSection: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Image(systemName: selectedCategory.icon)
                        .foregroundColor(.accentColor)
                        .font(.title2)
                    
                    Text(selectedCategory.rawValue)
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                
                Text(categoryDescription(for: selectedCategory))
                    .font(.body)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            if !searchText.isEmpty {
                Text("\(filteredShortcuts(for: selectedCategory).count) shortcuts found")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
    }
    
    // MARK: - Helper Methods
    
    private func categoryDescription(for category: HelpCategory) -> String {
        switch category {
        case .general:
            return "Essential shortcuts for navigating CareerKit"
        case .navigation:
            return "Move between views and sections efficiently"
        case .jobs:
            return "Manage job applications with keyboard shortcuts"
        case .documents:
            return "Upload, organize, and manage your documents"
        case .notes:
            return "Create and edit notes with markdown support"
        case .stats:
            return "Navigate and interact with statistics views"
        }
    }
    
    private func filteredShortcuts(for category: HelpCategory) -> [HelpKeyboardShortcut] {
        let shortcuts = shortcutsForCategory(category)
        
        if searchText.isEmpty {
            return shortcuts
        }
        
        return shortcuts.filter { shortcut in
            shortcut.title.localizedCaseInsensitiveContains(searchText) ||
            shortcut.description.localizedCaseInsensitiveContains(searchText) ||
            shortcut.keyDescription.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    private func shortcutsForCategory(_ category: HelpCategory) -> [HelpKeyboardShortcut] {
        switch category {
        case .general:
            return generalShortcuts
        case .navigation:
            return navigationShortcuts
        case .jobs:
            return jobShortcuts
        case .documents:
            return documentShortcuts
        case .notes:
            return noteShortcuts
        case .stats:
            return statsShortcuts
        }
    }
}

// MARK: - Supporting Views

struct TipView: View {
    let icon: String
    let title: String
    let description: String
    
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: icon)
                .foregroundColor(.accentColor)
                .font(.caption)
                .frame(width: 16)
            
            VStack(alignment: .leading, spacing: 1) {
                Text(title)
                    .font(.caption)
                    .fontWeight(.medium)
                
                Text(description)
                    .font(.caption2)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ShortcutRowView: View {
    let shortcut: HelpKeyboardShortcut
    
    var body: some View {
        HStack(alignment: .top, spacing: Theme.Spacing.medium) {
            // Shortcut keys
            HStack(spacing: 4) {
                ForEach(shortcut.keyComponents, id: \.self) { key in
                    Text(key)
                        .font(.system(.caption, design: .monospaced))
                        .fontWeight(.medium)
                        .padding(.horizontal, 6)
                        .padding(.vertical, 3)
                        .background(Color.secondary.opacity(0.1))
                        .cornerRadius(4)
                }
            }
            .frame(minWidth: 120, alignment: .leading)
            
            // Description
            VStack(alignment: .leading, spacing: 2) {
                Text(shortcut.title)
                    .font(.body)
                    .fontWeight(.medium)
                
                Text(shortcut.description)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
            
            Spacer()
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 12)
        .background(Color.secondary.opacity(0.02))
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.secondary.opacity(0.1), lineWidth: 1)
        )
    }
}

// MARK: - Data Models

struct HelpKeyboardShortcut {
    let id = UUID()
    let title: String
    let description: String
    let keyComponents: [String]
    let category: KeyboardHelpView.HelpCategory
    
    var keyDescription: String {
        keyComponents.joined(separator: " + ")
    }
}

// MARK: - Shortcut Data

extension KeyboardHelpView {
    private var generalShortcuts: [HelpKeyboardShortcut] {
        [
            HelpKeyboardShortcut(
                title: "Preferences",
                description: "Open application settings and preferences",
                keyComponents: ["⌘", ","],
                category: .general
            ),
            HelpKeyboardShortcut(
                title: "Quit Application",
                description: "Close CareerKit completely",
                keyComponents: ["⌘", "Q"],
                category: .general
            ),
            HelpKeyboardShortcut(
                title: "Hide Application",
                description: "Hide CareerKit window",
                keyComponents: ["⌘", "H"],
                category: .general
            ),
            HelpKeyboardShortcut(
                title: "Minimize Window",
                description: "Minimize the current window",
                keyComponents: ["⌘", "M"],
                category: .general
            ),
            HelpKeyboardShortcut(
                title: "Close Window",
                description: "Close the current window or dialog",
                keyComponents: ["⌘", "W"],
                category: .general
            ),
            HelpKeyboardShortcut(
                title: "Show Help",
                description: "Open this keyboard shortcuts help window",
                keyComponents: ["⌘", "?"],
                category: .general
            ),
            HelpKeyboardShortcut(
                title: "Find/Search",
                description: "Focus search field in current view",
                keyComponents: ["⌘", "F"],
                category: .general
            ),
            HelpKeyboardShortcut(
                title: "Save",
                description: "Save current changes",
                keyComponents: ["⌘", "S"],
                category: .general
            ),
            HelpKeyboardShortcut(
                title: "Undo",
                description: "Undo the last action",
                keyComponents: ["⌘", "Z"],
                category: .general
            ),
            HelpKeyboardShortcut(
                title: "Redo",
                description: "Redo the last undone action",
                keyComponents: ["⌘", "⇧", "Z"],
                category: .general
            )
        ]
    }
    
    private var navigationShortcuts: [HelpKeyboardShortcut] {
        [
            HelpKeyboardShortcut(
                title: "Jobs View",
                description: "Switch to job applications view",
                keyComponents: ["⌘", "1"],
                category: .navigation
            ),
            HelpKeyboardShortcut(
                title: "Documents View",
                description: "Switch to documents management view",
                keyComponents: ["⌘", "2"],
                category: .navigation
            ),
            HelpKeyboardShortcut(
                title: "Notes View",
                description: "Switch to notes and writing view",
                keyComponents: ["⌘", "3"],
                category: .navigation
            ),
            HelpKeyboardShortcut(
                title: "Statistics View",
                description: "Switch to analytics and statistics view",
                keyComponents: ["⌘", "4"],
                category: .navigation
            ),
            HelpKeyboardShortcut(
                title: "Toggle Sidebar",
                description: "Show or hide the sidebar",
                keyComponents: ["⌘", "⌃", "S"],
                category: .navigation
            ),
            HelpKeyboardShortcut(
                title: "Next Tab",
                description: "Switch to the next tab or section",
                keyComponents: ["⌘", "]"],
                category: .navigation
            ),
            HelpKeyboardShortcut(
                title: "Previous Tab",
                description: "Switch to the previous tab or section",
                keyComponents: ["⌘", "["],
                category: .navigation
            ),
            HelpKeyboardShortcut(
                title: "Go Back",
                description: "Navigate back in the current view",
                keyComponents: ["⌘", "←"],
                category: .navigation
            ),
            HelpKeyboardShortcut(
                title: "Go Forward",
                description: "Navigate forward in the current view",
                keyComponents: ["⌘", "→"],
                category: .navigation
            )
        ]
    }
    
    private var jobShortcuts: [HelpKeyboardShortcut] {
        [
            HelpKeyboardShortcut(
                title: "New Job Application",
                description: "Create a new job application entry",
                keyComponents: ["⌘", "N"],
                category: .jobs
            ),
            HelpKeyboardShortcut(
                title: "Edit Selected Job",
                description: "Edit the currently selected job application",
                keyComponents: ["⌘", "E"],
                category: .jobs
            ),
            HelpKeyboardShortcut(
                title: "Delete Selected Job",
                description: "Delete the currently selected job application",
                keyComponents: ["⌘", "⌫"],
                category: .jobs
            ),
            HelpKeyboardShortcut(
                title: "Duplicate Job",
                description: "Create a copy of the selected job application",
                keyComponents: ["⌘", "D"],
                category: .jobs
            ),
            HelpKeyboardShortcut(
                title: "Toggle Favorite",
                description: "Mark or unmark job as favorite",
                keyComponents: ["⌘", "⇧", "F"],
                category: .jobs
            ),
            HelpKeyboardShortcut(
                title: "Filter by Status",
                description: "Open status filter menu",
                keyComponents: ["⌘", "⇧", "S"],
                category: .jobs
            ),
            HelpKeyboardShortcut(
                title: "Sort Options",
                description: "Open sorting options menu",
                keyComponents: ["⌘", "⇧", "O"],
                category: .jobs
            ),
            HelpKeyboardShortcut(
                title: "Export Jobs",
                description: "Export job applications to file",
                keyComponents: ["⌘", "⇧", "E"],
                category: .jobs
            ),
            HelpKeyboardShortcut(
                title: "Import Jobs",
                description: "Import job applications from file",
                keyComponents: ["⌘", "⇧", "I"],
                category: .jobs
            )
        ]
    }
    
    private var documentShortcuts: [HelpKeyboardShortcut] {
        [
            HelpKeyboardShortcut(
                title: "Upload Documents",
                description: "Add new documents to your collection",
                keyComponents: ["⌘", "U"],
                category: .documents
            ),
            HelpKeyboardShortcut(
                title: "Grid View",
                description: "Switch to grid view mode",
                keyComponents: ["⌘", "1"],
                category: .documents
            ),
            HelpKeyboardShortcut(
                title: "List View",
                description: "Switch to list view mode",
                keyComponents: ["⌘", "2"],
                category: .documents
            ),
            HelpKeyboardShortcut(
                title: "Detail View",
                description: "Switch to detail view mode",
                keyComponents: ["⌘", "3"],
                category: .documents
            ),
            HelpKeyboardShortcut(
                title: "Quick Look",
                description: "Preview selected document",
                keyComponents: ["Space"],
                category: .documents
            ),
            HelpKeyboardShortcut(
                title: "Download Document",
                description: "Download selected document to disk",
                keyComponents: ["⌘", "⇧", "D"],
                category: .documents
            ),
            HelpKeyboardShortcut(
                title: "Manage Categories",
                description: "Open category management interface",
                keyComponents: ["⌘", "⇧", "C"],
                category: .documents
            ),
            HelpKeyboardShortcut(
                title: "Toggle Previews",
                description: "Show or hide document previews",
                keyComponents: ["⌘", "P"],
                category: .documents
            )
        ]
    }
    
    private var noteShortcuts: [HelpKeyboardShortcut] {
        [
            HelpKeyboardShortcut(
                title: "New Note",
                description: "Create a new note",
                keyComponents: ["⌘", "N"],
                category: .notes
            ),
            HelpKeyboardShortcut(
                title: "Save Note",
                description: "Save current note changes",
                keyComponents: ["⌘", "S"],
                category: .notes
            ),
            HelpKeyboardShortcut(
                title: "Focus Search",
                description: "Focus the note search field",
                keyComponents: ["⌘", "F"],
                category: .notes
            ),
            HelpKeyboardShortcut(
                title: "Pin/Unpin Note",
                description: "Toggle pin status of current note",
                keyComponents: ["⌘", "⇧", "P"],
                category: .notes
            ),
            HelpKeyboardShortcut(
                title: "Bold Text",
                description: "Make selected text bold (Markdown)",
                keyComponents: ["⌘", "B"],
                category: .notes
            ),
            HelpKeyboardShortcut(
                title: "Italic Text",
                description: "Make selected text italic (Markdown)",
                keyComponents: ["⌘", "I"],
                category: .notes
            ),
            HelpKeyboardShortcut(
                title: "Insert Link",
                description: "Insert a markdown link",
                keyComponents: ["⌘", "K"],
                category: .notes
            ),
            HelpKeyboardShortcut(
                title: "Toggle Preview",
                description: "Show or hide markdown preview",
                keyComponents: ["⌘", "R"],
                category: .notes
            ),
            HelpKeyboardShortcut(
                title: "Import/Export",
                description: "Open import/export options",
                keyComponents: ["⌘", "⇧", "E"],
                category: .notes
            )
        ]
    }
    
    private var statsShortcuts: [HelpKeyboardShortcut] {
        [
            HelpKeyboardShortcut(
                title: "Refresh Data",
                description: "Refresh statistics and charts",
                keyComponents: ["⌘", "R"],
                category: .stats
            ),
            HelpKeyboardShortcut(
                title: "Export Charts",
                description: "Export current charts as images",
                keyComponents: ["⌘", "⇧", "E"],
                category: .stats
            ),
            HelpKeyboardShortcut(
                title: "Time Period Filter",
                description: "Change time period for statistics",
                keyComponents: ["⌘", "T"],
                category: .stats
            ),
            HelpKeyboardShortcut(
                title: "Toggle Chart Type",
                description: "Switch between different chart types",
                keyComponents: ["⌘", "⇧", "T"],
                category: .stats
            ),
            HelpKeyboardShortcut(
                title: "Full Screen Chart",
                description: "View chart in full screen mode",
                keyComponents: ["⌘", "⌃", "F"],
                category: .stats
            ),
            HelpKeyboardShortcut(
                title: "Previous Chart",
                description: "Navigate to previous chart",
                keyComponents: ["⌘", "←"],
                category: .stats
            ),
            HelpKeyboardShortcut(
                title: "Next Chart",
                description: "Navigate to next chart",
                keyComponents: ["⌘", "→"],
                category: .stats
            ),
            HelpKeyboardShortcut(
                title: "Chart Settings",
                description: "Open chart customization options",
                keyComponents: ["⌘", ","],
                category: .stats
            )
        ]
    }
}

// MARK: - Preview

#Preview {
    KeyboardHelpView()
        .frame(width: 800, height: 600)
}