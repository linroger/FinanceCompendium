//
//  EnhancedDocumentsMainView.swift
//  CareerKit
//
//  Enhanced document management interface with categories, previews, and organization
//

import SwiftUI
import SwiftData
import UniformTypeIdentifiers
import QuickLook
import PDFKit
import OSLog

struct EnhancedDocumentsMainView: View {
    @EnvironmentObject var documentStore: DocumentStore
    @EnvironmentObject private var importExportHelper: ImportExportHelper
    @EnvironmentObject private var settingsManager: SettingsManager
    @Environment(\.modelContext) private var modelContext
    
    @State private var selectedViewMode: DocumentViewMode = .grid
    @State private var showingFileImporter = false
    @State private var showingCategoryEditor = false
    @State private var showingDocumentEditor = false
    @State private var quickLookURL: URL? = nil
    @State private var dragOffset: CGSize = .zero
    @State private var isDragOver = false
    @State private var showingDeleteAlert = false
    @State private var documentToDelete: SwiftDataJobDocument?
    
    // Layout settings
    @AppStorage("documentsGridColumns") private var gridColumns: Int = 4
    @AppStorage("documentsShowPreviews") private var showPreviews: Bool = true
    @AppStorage("documentsCompactMode") private var compactMode: Bool = false
    
    enum DocumentViewMode: String, CaseIterable {
        case grid = "Grid"
        case list = "List"
        case detail = "Detail"
        
        var icon: String {
            switch self {
            case .grid: return "square.grid.2x2"
            case .list: return "list.bullet"
            case .detail: return "sidebar.left"
            }
        }
    }
    
    var body: some View {
        HStack(spacing: 0) {
            // Sidebar
            sidebarContent
                .frame(minWidth: 250, idealWidth: 300, maxWidth: 350)
                .background(Color(nsColor: .controlBackgroundColor))

            Divider()

            // Main content with NavigationStack
            NavigationStack {
                mainContent
                    .navigationTitle("Documents")
            }
        }
        .toolbar {
            toolbarContent
        }
        // Removed onAppear - initialization happens in ContentView
        .onChange(of: showingFileImporter) { oldValue, newValue in
            if newValue {
                importExportHelper.importDocuments { urls in
                    Task { @MainActor in
                        await documentStore.uploadDocuments(from: urls)
                        showingFileImporter = false
                    }
                }
            }
        }
        .quickLookPreview($quickLookURL)
        .sheet(isPresented: $showingCategoryEditor) {
            CategoryEditorView()
                .environmentObject(documentStore)
        }
        .sheet(isPresented: $showingDocumentEditor) {
            DocumentEditorView()
                .environmentObject(documentStore)
        }
        .alert("Delete Document", isPresented: $showingDeleteAlert, presenting: documentToDelete) { document in
            Button("Cancel", role: .cancel) { }
            Button("Delete", role: .destructive) {
                documentStore.deleteDocument(document.id)
            }
        } message: { document in
            Text("Are you sure you want to delete '\(document.fileName)'? This action cannot be undone.")
        }
        .onDrop(of: [.fileURL], isTargeted: $isDragOver) { providers in
            handleFileDrop(providers)
        }
        .responsiveLayout()
        .globalKeyboardShortcuts([
            KeyboardShortcutHandler("n", modifiers: .command) {
                showingFileImporter = true
            },
            KeyboardShortcutHandler("1", modifiers: .command) {
                selectedViewMode = .grid
            },
            KeyboardShortcutHandler("2", modifiers: .command) {
                selectedViewMode = .list
            },
            KeyboardShortcutHandler("3", modifiers: .command) {
                selectedViewMode = .detail
            }
        ])
    }
    
    // MARK: - Sidebar Content
    
    private var sidebarContent: some View {
        VStack(spacing: 0) {
            // Section header
            HStack {
                Text("Categories")
                    .font(.headline)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding()
            .background(Color(nsColor: .controlBackgroundColor))

            Divider()

            // Search bar
            searchSection

            Divider()

            // Categories list
            categoriesSection
                .frame(maxHeight: .infinity)

            Divider()

            // Statistics and actions
            statisticsSection
        }
        .background(Color.clear)
    }
    
    private var searchSection: some View {
        VStack(spacing: Theme.Spacing.small) {
            // Search field
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.secondary)
                    .font(.system(size: 14))
                
                TextField("Search documents...", text: $documentStore.searchText)
                    .textFieldStyle(.plain)
                    .accessibilityLabel("Search Documents")
                
                if !documentStore.searchText.isEmpty {
                    Button(action: {
                        documentStore.searchText = ""
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
            
            // Filter by type
            Menu {
                ForEach(documentStore.documentTypes, id: \.self) { type in
                    Button(action: {
                        documentStore.filterByType = type
                    }) {
                        HStack {
                            Text(type.capitalized)
                            if documentStore.filterByType == type {
                                Image(systemName: "checkmark")
                            }
                        }
                    }
                }
            } label: {
                HStack {
                    Text("Type: \(documentStore.filterByType)")
                        .font(.caption)
                    Image(systemName: "chevron.down")
                        .font(.caption)
                }
                .foregroundColor(.secondary)
            }
            .buttonStyle(.plain)
        }
        .padding()
    }
    
    private var categoriesSection: some View {
        List(selection: $documentStore.selectedCategoryID) {
            // All documents
            Button(action: {
                documentStore.selectedCategoryID = nil
            }) {
                HStack {
                    Image(systemName: "folder.fill")
                        .foregroundColor(.accentColor)
                    Text("All Documents")
                        .fontWeight(documentStore.selectedCategoryID == nil ? .medium : .regular)
                    Spacer()
                    Text("\(documentStore.documents.count)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            .buttonStyle(.plain)
            .listRowBackground(documentStore.selectedCategoryID == nil ? Color.accentColor.opacity(0.1) : Color.clear)
            
            Divider()
            
            // Categories
            ForEach(documentStore.categories) { category in
                CategoryRowView(category: category)
            }
            .onDelete(perform: deleteCategories)
        }
        .listStyle(.sidebar)
    }
    
    private var statisticsSection: some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.small) {
            HStack {
                VStack(alignment: .leading, spacing: 2) {
                    Text("\(documentStore.filteredDocuments.count)")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("Documents")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 2) {
                    Text(totalFileSize)
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("Total Size")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            
            Button("Add Category") {
                showingCategoryEditor = true
            }
            .buttonStyle(.bordered)
            .controlSize(.small)
            .frame(maxWidth: .infinity)
        }
        .padding()
        .background(Color.secondary.opacity(0.05))
    }
    
    // MARK: - Main Content
    
    private var mainContent: some View {
        VStack(spacing: 0) {
            // Header with view mode controls
            headerSection
            
            Divider()
            
            // Documents content
            if documentStore.isLoading {
                loadingView
            } else if documentStore.filteredDocuments.isEmpty {
                emptyStateView
            } else {
                documentsContentView
            }
        }
        .background(isDragOver ? Color.accentColor.opacity(0.1) : Color.clear)
        .animation(.easeInOut(duration: 0.2), value: isDragOver)
    }
    
    private var headerSection: some View {
        HStack {
            // View mode picker
            Picker("View Mode", selection: $selectedViewMode) {
                ForEach(DocumentViewMode.allCases, id: \.self) { mode in
                    Label(mode.rawValue, systemImage: mode.icon).tag(mode)
                }
            }
            .pickerStyle(.segmented)
            .frame(width: 200)
            
            Spacer()
            
            // Grid settings (only for grid mode)
            if selectedViewMode == .grid {
                HStack(spacing: 8) {
                    Text("Columns:")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Stepper("", value: $gridColumns, in: 2...6)
                        .frame(width: 60)
                }
            }
            
            // Toggle previews
            Toggle("Previews", isOn: $showPreviews)
                .toggleStyle(.switch)
                .controlSize(.mini)
            
            // Add documents button
            Button("Add Documents") {
                showingFileImporter = true
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)
        }
        .padding()
    }
    
    private var loadingView: some View {
        VStack(spacing: 20) {
            ProgressView()
                .scaleEffect(1.5)
            Text("Loading documents...")
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    private var emptyStateView: some View {
        VStack(spacing: 24) {
            Image(systemName: "folder.badge.plus")
                .font(.system(size: 64))
                .foregroundColor(.secondary.opacity(0.5))
            
            VStack(spacing: 8) {
                Text("No Documents")
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("Upload your first document to get started")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
            }
            
            VStack(spacing: 12) {
                Button("Upload Documents") {
                    showingFileImporter = true
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Button("Import PDF Folder") {
                    importExportHelper.importDocumentFolder { urls in
                        Task { @MainActor in
                            await documentStore.uploadDocuments(from: urls)
                        }
                    }
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
                
                Text("or drag and drop files here")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }
    
    @ViewBuilder
    private var documentsContentView: some View {
        switch selectedViewMode {
        case .grid:
            DocumentsGridView(
                documents: documentStore.filteredDocuments,
                columns: gridColumns,
                showPreviews: showPreviews,
                onDocumentTap: { openQuickLook($0) },
                onDocumentMenu: { documentContextMenu($0) }
            )
        case .list:
            DocumentsListView(
                documents: documentStore.filteredDocuments,
                showPreviews: showPreviews,
                onDocumentTap: { openQuickLook($0) },
                onDocumentMenu: { documentContextMenu($0) }
            )
        case .detail:
            DocumentsDetailView(
                documents: documentStore.filteredDocuments,
                onDocumentTap: { openQuickLook($0) },
                onDocumentMenu: { documentContextMenu($0) }
            )
        }
    }
    
    // MARK: - Toolbar Content
    
    @ToolbarContentBuilder
    private var toolbarContent: some ToolbarContent {
        ToolbarItemGroup {
            Button {
                showingFileImporter = true
            } label: {
                Label("Add Documents", systemImage: "plus")
            }
            .keyboardShortcut("n", modifiers: .command)

            Button {
                importExportHelper.importDocumentFolder { urls in
                    Task { @MainActor in
                        await documentStore.uploadDocuments(from: urls)
                    }
                }
            } label: {
                Label("Import Folder", systemImage: "folder.badge.plus")
            }
            
            Button {
                documentStore.selectedDocumentID = nil
                documentStore.selectedCategoryID = nil
                documentStore.searchText = ""
                documentStore.filterByType = "All"
            } label: {
                Label("Clear Filters", systemImage: "clear")
            }
            
            Divider()
            
            Button {
                showingCategoryEditor = true
            } label: {
                Label("Manage Categories", systemImage: "folder.badge.gearshape")
            }
        }
    }
    
    // MARK: - Helper Methods
    
    private func handleFileImport(_ result: Result<[URL], Error>) {
        switch result {
        case .success(let urls):
            Task {
                await documentStore.uploadDocuments(from: urls)
            }
        case .failure(let error):
            Logger.data.error("File import error: \(error)")
        }
    }
    
    private func handleFileDrop(_ providers: [NSItemProvider]) -> Bool {
        let urls = providers.compactMap { provider in
            provider.loadObject(ofClass: URL.self) { url, _ in
                if let url = url {
                    DispatchQueue.main.async {
                        Task {
                            await documentStore.uploadDocuments(from: [url])
                        }
                    }
                }
            }
        }
        return !urls.isEmpty
    }
    
    private func openQuickLook(_ document: SwiftDataJobDocument) {
        if let url = document.fileURL {
            quickLookURL = url
        } else if let data = document.fileData {
            // Create temporary file for preview
            let tempURL = FileManager.default.temporaryDirectory
                .appendingPathComponent(document.fileName)
            do {
                try data.write(to: tempURL)
                quickLookURL = tempURL
            } catch {
                Logger.data.error("Failed to create temporary file: \(error)")
            }
        }
    }

    @ViewBuilder
    private func documentContextMenu(_ document: SwiftDataJobDocument) -> some View {
        Button("Quick Look") {
            openQuickLook(document)
        }
        
        Button("Edit Info") {
            documentStore.selectedDocumentID = document.id
            showingDocumentEditor = true
        }
        
        Menu("Move to Category") {
            Button("None") {
                documentStore.assignDocumentToCategory(documentID: document.id, categoryID: nil)
            }
            
            ForEach(documentStore.categories) { category in
                Button(category.name) {
                    documentStore.assignDocumentToCategory(documentID: document.id, categoryID: category.id)
                }
            }
        }
        
        Button("Download") {
            documentStore.selectedDocumentID = document.id
            documentStore.downloadSelectedDocument()
        }
        
        Divider()
        
        Button("Delete", role: .destructive) {
            documentToDelete = document
            showingDeleteAlert = true
        }
    }
    
    private func deleteCategories(at offsets: IndexSet) {
        for index in offsets {
            let category = documentStore.categories[index]
            documentStore.deleteCategory(category.id)
        }
    }
    
    private var totalFileSize: String {
        let totalBytes = documentStore.filteredDocuments.reduce(0) { $0 + $1.fileSize }
        return ByteCountFormatter.string(fromByteCount: Int64(totalBytes), countStyle: .file)
    }
}

// MARK: - Supporting Views

struct CategoryRowView: View {
    @EnvironmentObject var documentStore: DocumentStore
    let category: SwiftDataDocumentCategory
    
    private var documentCount: Int {
        documentStore.documents.filter { $0.category?.id == category.id }.count
    }
    
    private var categoryColor: Color {
        Color(hex: category.colorHex) ?? .accentColor
    }
    
    var body: some View {
        Button(action: {
            documentStore.selectedCategoryID = category.id
        }) {
            HStack {
                Image(systemName: category.iconName)
                    .foregroundColor(categoryColor)
                
                Text(category.name)
                    .fontWeight(documentStore.selectedCategoryID == category.id ? .medium : .regular)
                
                Spacer()
                
                Text("\(documentCount)")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .buttonStyle(.plain)
        .listRowBackground(documentStore.selectedCategoryID == category.id ? categoryColor.opacity(0.1) : Color.clear)
    }
}

struct DocumentsGridView<MenuContent: View>: View {
    let documents: [SwiftDataJobDocument]
    let columns: Int
    let showPreviews: Bool
    let onDocumentTap: (SwiftDataJobDocument) -> Void
    let onDocumentMenu: (SwiftDataJobDocument) -> MenuContent
    
    private var gridColumns: [GridItem] {
        Array(repeating: GridItem(.flexible()), count: columns)
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridColumns, spacing: Theme.Spacing.medium) {
                ForEach(documents) { document in
                    DocumentCardView(
                        document: document,
                        showPreview: showPreviews,
                        onTap: { onDocumentTap(document) }
                    )
                    .contextMenu {
                        onDocumentMenu(document)
                    }
                }
            }
            .padding()
        }
    }
}

struct DocumentsListView<MenuContent: View>: View {
    let documents: [SwiftDataJobDocument]
    let showPreviews: Bool
    let onDocumentTap: (SwiftDataJobDocument) -> Void
    let onDocumentMenu: (SwiftDataJobDocument) -> MenuContent
    
    var body: some View {
        List(documents) { document in
            DocumentListRowView(
                document: document,
                showPreview: showPreviews,
                onTap: { onDocumentTap(document) }
            )
            .contextMenu {
                onDocumentMenu(document)
            }
        }
        .listStyle(.inset)
    }
}

struct DocumentsDetailView<MenuContent: View>: View {
    let documents: [SwiftDataJobDocument]
    let onDocumentTap: (SwiftDataJobDocument) -> Void
    let onDocumentMenu: (SwiftDataJobDocument) -> MenuContent
    
    var body: some View {
        HSplitView {
            // Document list
            List(documents) { document in
                DocumentListRowView(document: document, showPreview: false) {
                    onDocumentTap(document)
                }
                .contextMenu {
                    onDocumentMenu(document)
                }
            }
            .frame(minWidth: 250)
            
            // Document detail/preview
            if let selectedDocument = documents.first {
                DocumentDetailView(document: selectedDocument)
            } else {
                Text("Select a document to view details")
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}

struct DocumentCardView: View {
    @EnvironmentObject var documentStore: DocumentStore
    let document: SwiftDataJobDocument
    let showPreview: Bool
    let onTap: () -> Void
    
    @State private var previewImage: NSImage?
    @State private var isLoadingPreview = false
    
    var body: some View {
        Button(action: onTap) {
            VStack(spacing: 8) {
                // Preview or icon
                if showPreview {
                    if let preview = previewImage {
                        Image(nsImage: preview)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 100)
                            .cornerRadius(Theme.CornerRadius.small)
                    } else if isLoadingPreview {
                        ProgressView()
                            .scaleEffect(0.7)
                            .frame(height: 100)
                    } else {
                        Image(systemName: documentIcon)
                            .font(.system(size: 40))
                            .foregroundColor(.accentColor)
                            .frame(height: 100)
                    }
                } else {
                    Image(systemName: documentIcon)
                        .font(.system(size: 40))
                        .foregroundColor(.accentColor)
                        .frame(height: 100)
                }
                
                // File info
                VStack(spacing: 2) {
                    Text(document.fileName)
                        .font(.caption)
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                    
                    Text(ByteCountFormatter.string(fromByteCount: Int64(document.fileSize), countStyle: .file))
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }
            }
            .padding()
            .background(Color.secondary.opacity(0.05))
            .cornerRadius(Theme.CornerRadius.medium)
            .hoverEffect()
        }
        .buttonStyle(.plain)
        .onAppear {
            if showPreview && previewImage == nil && !isLoadingPreview {
                isLoadingPreview = true
                documentStore.previewImage(for: document) { image in
                    previewImage = image
                    isLoadingPreview = false
                }
            }
        }
    }
    
    private var documentIcon: String {
        let ext = document.fileName.split(separator: ".").last?.lowercased() ?? ""
        switch ext {
        case "pdf": return "doc.fill"
        case "doc", "docx": return "doc.text.fill"
        case "png", "jpg", "jpeg": return "photo.fill"
        case "txt": return "doc.plaintext.fill"
        default: return "doc.fill"
        }
    }
}

struct DocumentListRowView: View {
    let document: SwiftDataJobDocument
    let showPreview: Bool
    let onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            HStack(spacing: 12) {
                // Icon or small preview
                if showPreview {
                    AsyncImage(url: document.fileURL) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        Image(systemName: documentIcon)
                            .foregroundColor(.accentColor)
                    }
                    .frame(width: 40, height: 40)
                    .cornerRadius(4)
                } else {
                    Image(systemName: documentIcon)
                        .foregroundColor(.accentColor)
                        .frame(width: 20)
                }
                
                // Document info
                VStack(alignment: .leading, spacing: 2) {
                    Text(document.fileName)
                        .font(.body)
                        .lineLimit(1)
                    
                    HStack {
                        Text(document.documentType.capitalized)
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                        Text("•")
                            .foregroundColor(.secondary)
                        
                        Text(ByteCountFormatter.string(fromByteCount: Int64(document.fileSize), countStyle: .file))
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                        Text("•")
                            .foregroundColor(.secondary)
                        
                        Text(document.uploadDate.formatted(date: .abbreviated, time: .omitted))
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
                
                Spacer()
                
                // Category badge
                if let category = document.category {
                    HStack(spacing: 4) {
                        Image(systemName: category.iconName)
                        Text(category.name)
                    }
                    .font(.caption)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 2)
                    .background(Color(hex: category.colorHex)?.opacity(0.2) ?? Color.secondary.opacity(0.2))
                    .foregroundColor(Color(hex: category.colorHex) ?? .secondary)
                    .cornerRadius(8)
                }
            }
            .padding(.vertical, 4)
        }
        .buttonStyle(.plain)
    }
    
    private var documentIcon: String {
        let ext = document.fileName.split(separator: ".").last?.lowercased() ?? ""
        switch ext {
        case "pdf": return "doc.fill"
        case "doc", "docx": return "doc.text.fill"
        case "png", "jpg", "jpeg": return "photo.fill"
        case "txt": return "doc.plaintext.fill"
        default: return "doc.fill"
        }
    }
}

struct DocumentDetailView: View {
    let document: SwiftDataJobDocument
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Document header
            VStack(alignment: .leading, spacing: 8) {
                Text(document.fileName)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                HStack {
                    Label(document.documentType.capitalized, systemImage: "tag")
                    Label(ByteCountFormatter.string(fromByteCount: Int64(document.fileSize), countStyle: .file), systemImage: "internaldrive")
                    Label(document.uploadDate.formatted(date: .abbreviated, time: .omitted), systemImage: "calendar")
                }
                .font(.caption)
                .foregroundColor(.secondary)
            }
            
            Divider()
            
            // Document metadata
            if let company = document.associatedCompany {
                LabeledContent("Company", value: company)
            }
            
            if let jobTitle = document.associatedJobTitle {
                LabeledContent("Job Title", value: jobTitle)
            }
            
            if let category = document.category {
                LabeledContent("Category", value: category.name)
            }
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

// MARK: - Category Editor

struct CategoryEditorView: View {
    @EnvironmentObject var documentStore: DocumentStore
    @Environment(\.dismiss) var dismiss
    
    @State private var categoryName = ""
    @State private var selectedColor = Color.blue
    @State private var selectedIcon = "folder"
    
    private let availableIcons = [
        "folder", "folder.fill", "doc", "doc.text", "envelope",
        "person.2", "seal", "star", "heart", "bookmark"
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("New Category")
                .font(.title2)
                .fontWeight(.semibold)
            
            VStack(alignment: .leading, spacing: 12) {
                TextField("Category Name", text: $categoryName)
                    .textFieldStyle(.roundedBorder)
                
                ColorPicker("Color", selection: $selectedColor)
                
                VStack(alignment: .leading) {
                    Text("Icon")
                        .font(.subheadline)
                        .fontWeight(.medium)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 5)) {
                        ForEach(availableIcons, id: \.self) { icon in
                            Button {
                                selectedIcon = icon
                            } label: {
                                Image(systemName: icon)
                                    .foregroundColor(selectedIcon == icon ? selectedColor : .secondary)
                                    .font(.title2)
                                    .frame(width: 40, height: 40)
                                    .background(selectedIcon == icon ? selectedColor.opacity(0.2) : Color.clear)
                                    .cornerRadius(8)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
            }
            
            HStack {
                Button("Cancel") {
                    dismiss()
                }
                .buttonStyle(.bordered)
                
                Spacer()
                
                Button("Create") {
                    documentStore.createCategory(
                        name: categoryName,
                        color: selectedColor.toHex(),
                        icon: selectedIcon
                    )
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .disabled(categoryName.isEmpty)
            }
        }
        .padding()
        .frame(width: 400, height: 350)
    }
}

// MARK: - Document Editor

struct DocumentEditorView: View {
    @EnvironmentObject var documentStore: DocumentStore
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Edit Document")
                .font(.title2)
                .fontWeight(.semibold)
            
            // Document editing form would go here
            
            HStack {
                Button("Cancel") {
                    dismiss()
                }
                .buttonStyle(.bordered)
                
                Spacer()
                
                Button("Save") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding()
        .frame(width: 400, height: 300)
    }
}

// MARK: - Extensions

extension Color {
    init?(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            return nil
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
    
    func toHex() -> String {
        let components = self.cgColor?.components
        let r: CGFloat = components?[0] ?? 0.0
        let g: CGFloat = components?[1] ?? 0.0
        let b: CGFloat = components?[2] ?? 0.0
        
        let hexString = String.init(format: "#%02lX%02lX%02lX", lroundf(Float(r * 255)), lroundf(Float(g * 255)), lroundf(Float(b * 255)))
        return hexString
    }
}

// MARK: - Preview

#Preview {
    EnhancedDocumentsMainView()
        .environmentObject(DocumentStore())
}
