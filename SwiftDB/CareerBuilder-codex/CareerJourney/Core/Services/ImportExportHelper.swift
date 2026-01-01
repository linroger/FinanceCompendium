//
//  ImportExportHelper.swift
//  CareerKit
//
//  Presents file open/save panels for import/export operations.
//

import SwiftUI
import AppKit
import UniformTypeIdentifiers
import Combine

@MainActor
final class ImportExportHelper: ObservableObject {
    // ContentView and menu commands use this helper to open panels, then hand URLs to JobStore/NoteStore/DocumentStore.
    @Published var isExporting = false
    @Published var isImporting = false
    
    nonisolated private static var defaultBackupTypes: [UTType] {
        var types: [UTType] = [.json, .folder, .plainText, .commaSeparatedText, .pdf, .rtf, .image]
        if let markdown = UTType(filenameExtension: "md") {
            types.append(markdown)
        }
        if let docx = UTType(filenameExtension: "docx") {
            types.append(docx)
        }
        if let doc = UTType(filenameExtension: "doc") {
            types.append(doc)
        }
        return types
    }

    /// Show a Save panel for exporting JSON (or any UTType).
    func exportBackup(allowedTypes: [UTType] = [.json],
                      defaultName: String,
                      completion: @escaping @Sendable (URL) -> Void) {
        isExporting = true
        DispatchQueue.main.async {
            let panel = NSSavePanel()
            panel.allowedContentTypes = allowedTypes
            panel.nameFieldStringValue = defaultName
            panel.canCreateDirectories = true
            panel.prompt = "Export"

            if let window = NSApp.keyWindow {
                panel.beginSheetModal(for: window) { response in
                    Task { @MainActor in
                        if response == .OK, let url = panel.url {
                            completion(url)
                        }
                        self.isExporting = false
                    }
                }
            } else {
                panel.begin { response in
                    Task { @MainActor in
                        if response == .OK, let url = panel.url {
                            completion(url)
                        }
                        self.isExporting = false
                    }
                }
            }
        }
    }

    /// Show an Open panel for importing backups (JSON, notes, document files, or folders).
    func importBackup(allowedTypes: [UTType] = ImportExportHelper.defaultBackupTypes,
                      completion: @escaping @Sendable (URL) -> Void) {
        isImporting = true
        DispatchQueue.main.async {
            let panel = NSOpenPanel()
            panel.allowedContentTypes = allowedTypes
            panel.allowsMultipleSelection = false
            panel.canChooseDirectories = true
            panel.canChooseFiles = true
            panel.prompt = "Import"

            if let window = NSApp.keyWindow {
                panel.beginSheetModal(for: window) { response in
                    Task { @MainActor in
                        if response == .OK, let url = panel.url {
                            completion(url)
                        }
                        self.isImporting = false
                    }
                }
            } else {
                panel.begin { response in
                    Task { @MainActor in
                        if response == .OK, let url = panel.url {
                            completion(url)
                        }
                        self.isImporting = false
                    }
                }
            }
        }
    }

    /// Show an Open panel for importing a CSV file (jobs or notes).
    func importCSV(completion: @escaping @Sendable (URL) -> Void) {
        isImporting = true
        DispatchQueue.main.async {
            let panel = NSOpenPanel()
            panel.allowedContentTypes = [.commaSeparatedText]
            panel.allowsMultipleSelection = false
            panel.canChooseDirectories = false
            panel.canChooseFiles = true
            panel.prompt = "Import CSV"

            if let window = NSApp.keyWindow {
                panel.beginSheetModal(for: window) { response in
                    Task { @MainActor in
                        if response == .OK, let url = panel.url {
                            completion(url)
                        }
                        self.isImporting = false
                    }
                }
            } else {
                panel.begin { response in
                    Task { @MainActor in
                        if response == .OK, let url = panel.url {
                            completion(url)
                        }
                        self.isImporting = false
                    }
                }
            }
        }
    }

    /// Show an Open panel to pick one markdown file.
    func importNotes(completion: @escaping @Sendable (URL) -> Void) {
        isImporting = true
        DispatchQueue.main.async {
            let panel = NSOpenPanel()
            var allowedTypes: [UTType] = []
            if let markdown = UTType(filenameExtension: "md") {
                allowedTypes.append(markdown)
            }
            allowedTypes.append(.plainText)
            allowedTypes.append(.commaSeparatedText)
            panel.allowedContentTypes = allowedTypes
            panel.allowsMultipleSelection = false
            panel.canChooseDirectories = false
            panel.prompt = "Import"

            if let window = NSApp.keyWindow {
                panel.beginSheetModal(for: window) { response in
                    Task { @MainActor in
                        if response == .OK, let url = panel.url {
                            completion(url)
                        }
                        self.isImporting = false
                    }
                }
            } else {
                panel.begin { response in
                    Task { @MainActor in
                        if response == .OK, let url = panel.url {
                            completion(url)
                        }
                        self.isImporting = false
                    }
                }
            }
        }
    }

    /// Show an Open panel to pick multiple documents.
    func importDocuments(completion: @escaping @Sendable ([URL]) -> Void) {
        isImporting = true
        DispatchQueue.main.async {
            let panel = NSOpenPanel()
            var contentTypes: [UTType] = [.pdf, .plainText, .image, .text, .rtf]
            if let docx = UTType(filenameExtension: "docx") {
                contentTypes.append(docx)
            }
            if let doc = UTType(filenameExtension: "doc") {
                contentTypes.append(doc)
            }
            contentTypes.append(.folder)
            panel.allowedContentTypes = contentTypes
            panel.allowsMultipleSelection = true
            panel.canChooseDirectories = true
            panel.prompt = "Import Documents"

            if let window = NSApp.keyWindow {
                panel.beginSheetModal(for: window) { response in
                    Task { @MainActor in
                        if response == .OK {
                            completion(panel.urls)
                        }
                        self.isImporting = false
                    }
                }
            } else {
                panel.begin { response in
                    Task { @MainActor in
                        if response == .OK {
                            completion(panel.urls)
                        }
                        self.isImporting = false
                    }
                }
            }
        }
    }

    func importDocumentFolder(completion: @escaping @Sendable ([URL]) -> Void) {
        isImporting = true
        DispatchQueue.main.async {
            let panel = NSOpenPanel()
            panel.allowedContentTypes = [.folder]
            panel.allowsMultipleSelection = true
            panel.canChooseDirectories = true
            panel.canChooseFiles = false
            panel.prompt = "Import Folder"

            let handler: (NSApplication.ModalResponse) -> Void = { response in
                Task { @MainActor in
                    if response == .OK {
                        completion(panel.urls)
                    }
                    self.isImporting = false
                }
            }

            if let window = NSApp.keyWindow {
                panel.beginSheetModal(for: window, completionHandler: handler)
            } else {
                panel.begin(completionHandler: handler)
            }
        }
    }

    /// Show a Save panel to export a zip (or any UTType).
    func exportDocuments(defaultName: String,
                         completion: @escaping @Sendable (URL) -> Void) {
        isExporting = true
        DispatchQueue.main.async {
            let panel = NSSavePanel()
            panel.allowedContentTypes = [UTType(filenameExtension: "zip") ?? .zip]
            panel.nameFieldStringValue = defaultName
            panel.canCreateDirectories = true
            panel.prompt = "Export"

            if let window = NSApp.keyWindow {
                panel.beginSheetModal(for: window) { response in
                    Task { @MainActor in
                        if response == .OK, let url = panel.url {
                            completion(url)
                        }
                        self.isExporting = false
                    }
                }
            } else {
                panel.begin { response in
                    Task { @MainActor in
                        if response == .OK, let url = panel.url {
                            completion(url)
                        }
                        self.isExporting = false
                    }
                }
            }
        }
    }

    /// Show an Open panel to pick a destination folder for document export.
    func exportDocumentsFolder(defaultName: String,
                               completion: @escaping @Sendable (URL) -> Void) {
        isExporting = true
        DispatchQueue.main.async {
            let panel = NSOpenPanel()
            panel.allowedContentTypes = [.folder]
            panel.allowsMultipleSelection = false
            panel.canChooseDirectories = true
            panel.canChooseFiles = false
            panel.prompt = "Choose Folder"

            let handler: (NSApplication.ModalResponse) -> Void = { response in
                Task { @MainActor in
                    if response == .OK, let url = panel.url {
                        let folderURL = url.appendingPathComponent(defaultName, isDirectory: true)
                        completion(folderURL)
                    }
                    self.isExporting = false
                }
            }

            if let window = NSApp.keyWindow {
                panel.beginSheetModal(for: window, completionHandler: handler)
            } else {
                panel.begin(completionHandler: handler)
            }
        }
    }

    /// Show a Save panel for exporting notes as Markdown.
    func exportNotes(defaultName: String,
                     completion: @escaping @Sendable (URL) -> Void) {
        var allowedTypes: [UTType] = []
        if let markdown = UTType(filenameExtension: "md") {
            allowedTypes.append(markdown)
        }
        allowedTypes.append(.plainText)
        exportBackup(allowedTypes: allowedTypes, defaultName: defaultName, completion: completion)
    }

    /// Show a Save panel for exporting CSV.
    func exportCSV(defaultName: String,
                   completion: @escaping @Sendable (URL) -> Void) {
        exportBackup(allowedTypes: [.commaSeparatedText], defaultName: defaultName, completion: completion)
    }
}
