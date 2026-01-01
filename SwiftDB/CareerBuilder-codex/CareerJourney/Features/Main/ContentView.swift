//
//  ContentView.swift
//  CareerKit
//
//  Main application content view with native macOS UI following Apple Sample Code patterns
//

import SwiftUI
import SwiftData
import AppKit
import UserNotifications
import OSLog
import Combine

/// Main application content view following Apple Sample Code patterns from Landmarks and FoodTruck
struct ContentView: View {
    @Environment(CareerDataModel.self) private var model
    @EnvironmentObject private var keyboardManager: KeyboardShortcutManager
    @EnvironmentObject private var accessibilityManager: AccessibilityManager
    @Environment(\.openSettings) private var openSettings
    
    // Navigation state
    @State private var selection: NavigationOption? = .jobs
    @State private var isInspectorPresented = false
    @State private var columnVisibility: NavigationSplitViewVisibility = .automatic
    @State private var navigationPath: NavigationPath = NavigationPath()
    
    // Search state
    @State private var searchText = ""
    
    // View preferences
    @State private var isGridViewSelected = false
    @State private var isListViewSelected = true
    
    // Focus state
    @FocusState private var focusedArea: FocusArea?
    
    @Environment(\.windowSizeClass) var windowSizeClass
    @Environment(\.responsiveConfiguration) var responsiveConfig
    
    init() {
        Logger.app.info("🎯 ContentView initialized")
    }
    
    var body: some View {
        @Bindable var model = model

        NavigationSplitView(columnVisibility: $columnVisibility) {
            sidebar
        } detail: {
            detailContent
        }
        .navigationSplitViewStyle(.prominentDetail)
        .searchable(text: $searchText, placement: .sidebar, prompt: "Search jobs, companies, or skills")
        .inspector(isPresented: $isInspectorPresented) {
            inspectorContent
        }
        .frame(minWidth: 800, minHeight: 600)
        .toolbar {
            toolbarContent
        }
        .task {
            await initializeData()
        }
        .onChange(of: searchText) { _, newValue in
            model.searchText = newValue
        }
        .onChange(of: responsiveConfig.shouldCollapseSidebar) { _, shouldCollapse in
            updateColumnVisibility(forShouldCollapse: shouldCollapse)
        }
        .onAppear {
            updateColumnVisibility(forShouldCollapse: responsiveConfig.shouldCollapseSidebar)
        }
    }
}

// MARK: - Sidebar
extension ContentView {
    private var sidebar: some View {
        List(selection: $selection) {
            Section("Main") {
                ForEach(NavigationOption.mainPages) { option in
                    NavigationLink(value: option) {
                        Label(option.name, systemImage: option.symbolName)
                    }
                }
            }
            
            Section("Management") {
                ForEach(NavigationOption.managementPages) { option in
                    NavigationLink(value: option) {
                        Label(option.name, systemImage: option.symbolName)
                    }
                }
            }
        }
        .navigationTitle("Career Journey")
        .frame(minWidth: 200, idealWidth: 250)
        .listStyle(.sidebar)
        .focusArea(.sidebar)
        .focused($focusedArea, equals: .sidebar)
        .accessibilityEnhanced(
            label: "Navigation Sidebar",
            hint: "Navigate through different sections of the app",
            traits: .isStaticText,
            manager: accessibilityManager
        )
    }
}

// MARK: - Detail Content
extension ContentView {
    @ViewBuilder
    private var detailContent: some View {
        @Bindable var model = model
        NavigationStack(path: $model.path) {
            if let selection {
                selection.viewForPage()
            } else {
                noSelectionView
            }
        }
        .navigationDestination(for: SwiftDataJobApplication.self) { job in
            ConsolidatedJobDetailView(job: job)
        }
        .navigationDestination(for: SwiftDataJobDocument.self) { document in
            EnhancedDocumentsMainView()
        }
        .navigationDestination(for: SwiftDataNote.self) { note in
            ConsolidatedNotesView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.ultraThinMaterial)
        .focusArea(.detail)
        .accessibilityEnhanced(
            label: "Main Content Area",
            hint: "Displays the selected content",
            traits: .isStaticText,
            manager: accessibilityManager
        )
    }
    
    private var noSelectionView: some View {
        VStack(spacing: 24) {
            Image(systemName: "briefcase")
                .font(.system(size: 64, weight: .thin))
                .foregroundColor(.secondary)
            
            Text("Welcome to Career Journey")
                .font(.title2)
                .fontWeight(.semibold)
            
            Text("Select a section from the sidebar to get started")
                .font(.body)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .frame(maxWidth: 300)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    @ViewBuilder
    private var inspectorContent: some View {
        if let selectedJob = model.selectedJob {
            ConsolidatedJobDetailView(job: selectedJob)
        } else {
            EmptyView()
        }
    }
}

// MARK: - Toolbar Content
extension ContentView {
    @ToolbarContentBuilder
    private var toolbarContent: some ToolbarContent {
        @Bindable var model = model

        ToolbarItem(placement: .navigation) {
            Button {
                NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
            } label: {
                Image(systemName: "sidebar.left")
            }
            .help("Toggle Sidebar")
            .keyboardShortcut("s", modifiers: [.command, .control])
        }
        
        ToolbarItem(placement: .principal) {
            HStack(spacing: 12) {
                ControlGroup {
                    Button {
                        isListViewSelected = true
                        isGridViewSelected = false
                    } label: {
                        Image(systemName: "list.bullet")
                    }
                    .help("List View")
                    .background(isListViewSelected ? Color.accentColor.opacity(0.2) : Color.clear)
                    
                    Button {
                        isGridViewSelected = true
                        isListViewSelected = false
                    } label: {
                        Image(systemName: "square.grid.2x2")
                    }
                    .help("Grid View")
                    .background(isGridViewSelected ? Color.accentColor.opacity(0.2) : Color.clear)
                }
                .controlGroupStyle(.navigation)
                
                Divider()
                    .frame(height: 20)
                
                Toggle(isOn: $model.showFavoritesOnly) {
                    Image(systemName: model.showFavoritesOnly ? "star.fill" : "star")
                }
                .toggleStyle(.button)
                .help("Show Favorites Only")
                .keyboardShortcut("f", modifiers: [.command, .option])
                
                Menu {
                    Button("All Statuses") {
                        model.filterStatus = nil
                    }
                    
                    Divider()
                    
                    ForEach(JobStatus.allCases, id: \.self) { status in
                        Button(status.rawValue) {
                            model.filterStatus = status
                        }
                    }
                } label: {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                }
                .help("Filter by Status")
                .menuStyle(.borderlessButton)
            }
        }
        
        ToolbarItem(placement: .primaryAction) {
            Menu {
                Button("Add Job Manually") {
                    model.showAddJobWindow()
                }
                .keyboardShortcut("n", modifiers: .command)
                
                Button("Import from Clipboard") {
                    importFromClipboard()
                }
                .keyboardShortcut("v", modifiers: [.command, .shift])
                
                Divider()
                
                Button("Bulk Import...") {
                    showBulkImport()
                }
            } label: {
                Label("Add", systemImage: "plus.circle.fill")
            }
            .help("Add New Job")
        }
        
        ToolbarItem(placement: .automatic) {
            Button {
                if #available(macOS 14.0, *) {
                    openSettings()
                } else {
                    SettingsLauncher.open()
                }
            } label: {
                Image(systemName: "gearshape")
            }
            .help("Settings")
            .keyboardShortcut(",", modifiers: .command)
        }
        
        ToolbarItem(placement: .automatic) {
            Button {
                isInspectorPresented.toggle()
            } label: {
                Image(systemName: "sidebar.right")
            }
            .help("Toggle Inspector")
            .keyboardShortcut("i", modifiers: [.command, .option])
        }
    }
}

// MARK: - Actions
extension ContentView {
    @MainActor
    private func initializeData() async {
        
        
        // Check if we need data migration
        if let modelContext = model.modelContext {
            let migrationService = DataMigrationService(modelContext: modelContext)
            
            do {
                try await migrationService.migrateData()
            } catch {
                Logger.app.warning("⚠️ Data migration failed: \(error.localizedDescription)")
            }
        }
    }
    
    private func updateColumnVisibility(forShouldCollapse shouldCollapse: Bool) {
        withAnimation(.easeInOut(duration: 0.2)) {
            columnVisibility = shouldCollapse ? .detailOnly : .all
        }
    }
    
    private func importFromClipboard() {
        guard let clipboardString = NSPasteboard.general.string(forType: .string)?.trimmingCharacters(in: .whitespacesAndNewlines), !clipboardString.isEmpty else {
            UnifiedErrorManager.shared.show(
                message: "Clipboard is empty",
                severity: .warning,
                suggestion: "Copy a job description first and try again."
            )
            return
        }
        
        model.prepareClipboardImport(markdown: clipboardString)
    }
    
    private func showBulkImport() {
        ImportExportHelper().importBackup { url in
            Task { @MainActor in
                model.importBackup(url: url)
            }
        }
    }
}

// MARK: - Supporting Types

/// Navigation options following Apple Sample Code pattern
enum NavigationOption: String, CaseIterable, Identifiable, Hashable {
    case jobs
    case stats
    case documents
    case notes
    
    static let mainPages: [NavigationOption] = [.jobs, .stats]
    static let managementPages: [NavigationOption] = [.documents, .notes]
    
    var id: String { rawValue }
    
    var name: LocalizedStringResource {
        switch self {
        case .jobs: "Jobs"
        case .stats: "Statistics"
        case .documents: "Documents"
        case .notes: "Notes"
        }
    }
    
    var symbolName: String {
        switch self {
        case .jobs: "briefcase"
        case .stats: "chart.bar"
        case .documents: "folder"
        case .notes: "note.text"
        }
    }
    
    @MainActor @ViewBuilder
    func viewForPage() -> some View {
        switch self {
        case .jobs:
            Text("Job List View - Use sidebar to select jobs")
                .foregroundColor(.secondary)
        case .stats:
            EnhancedStatsView()
        case .documents:
            EnhancedDocumentsMainView()
        case .notes:
            ConsolidatedNotesView()
        }
    }
}

/// Focus areas for accessibility
enum FocusArea: String {
    case sidebar
    case detail
    case inspector
}

#if DEBUG
// MARK: - Preview with Mock Data
@MainActor
private var previewJobStore: JobStore {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    do {
        let container = try ModelContainer(for: SwiftDataJobApplication.self, configurations: config)
        let docStore = DocumentStore(modelContext: container.mainContext)
        return JobStore(documentStore: docStore, modelContext: container.mainContext)
    } catch {
        return JobStore()
    }
}

@MainActor
private var previewDocumentStore: DocumentStore {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    do {
        let container = try ModelContainer(for: SwiftDataJobDocument.self, configurations: config)
        return DocumentStore(modelContext: container.mainContext)
    } catch {
        return DocumentStore()
    }
}

@MainActor
private var previewNoteStore: NoteStore {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    do {
        let container = try ModelContainer(for: SwiftDataNote.self, configurations: config)
        return NoteStore(modelContext: container.mainContext)
    } catch {
        return NoteStore()
    }
}
#endif

// MARK: - Preview
#Preview {
    ContentView()
        .environmentObject(previewJobStore)
        .environmentObject(previewDocumentStore)
        .environmentObject(previewNoteStore)
        .environmentObject(KeyboardShortcutManager.shared)
        .environmentObject(AccessibilityManager.shared)
}
