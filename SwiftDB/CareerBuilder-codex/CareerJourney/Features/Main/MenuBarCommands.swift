//
//  MenuBarCommands.swift
//  CareerKit
//
//  Menu bar commands for the application
//

import SwiftUI
import Foundation

struct MenuBarCommands: Commands {
    var body: some Commands {
        // Replace the default File menu with custom commands
        CommandGroup(replacing: .newItem) {
            Button("New Job Application") {
                NotificationCenter.default.post(name: .menuAddJob, object: nil)
            }
            .keyboardShortcut("n", modifiers: .command)
        }
        
        // Menu commands broadcast notifications; ContentView routes them to stores so tabs stay in sync.
        CommandGroup(replacing: .importExport) {
            Button("Import Data...") {
                NotificationCenter.default.post(name: .menuImportData, object: nil)
            }
            .keyboardShortcut("i", modifiers: [.command, .shift])

            Button("Import Jobs CSV...") {
                NotificationCenter.default.post(name: .menuImportCSV, object: nil)
            }
            
            Button("Export All Jobs...") {
                NotificationCenter.default.post(name: .menuExportData, object: nil)
            }
            .keyboardShortcut("e", modifiers: [.command, .shift])

            Button("Export Jobs CSV...") {
                NotificationCenter.default.post(name: .menuExportCSV, object: nil)
            }

            Divider()

            Button("Export Notes...") {
                NotificationCenter.default.post(name: .menuExportNotes, object: nil)
            }

            Button("Export Documents Folder...") {
                NotificationCenter.default.post(name: .menuExportDocumentsFolder, object: nil)
            }
        }
        
        // Edit menu
        CommandGroup(after: .pasteboard) {
            Divider()
            
            Button("Edit Selected Job") {
                NotificationCenter.default.post(name: .menuEditJob, object: nil)
            }
            .keyboardShortcut("e", modifiers: .command)
            
            Button("Delete Selected Job") {
                NotificationCenter.default.post(name: .menuDeleteJob, object: nil)
            }
            .keyboardShortcut(.delete, modifiers: .command)
        }
        
        // View menu
        CommandMenu("View") {
            Button("Toggle Sidebar") {
                NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
            }
            .keyboardShortcut("s", modifiers: [.command, .control])
            
            Divider()
            
            Button("Job Details") {
                NotificationCenter.default.post(name: .menuShowJobDetails, object: nil)
            }
            .keyboardShortcut("1", modifiers: .command)
            
            Button("Documents") {
                NotificationCenter.default.post(name: .menuShowDocuments, object: nil)
            }
            .keyboardShortcut("2", modifiers: .command)
            
            Button("Notes") {
                NotificationCenter.default.post(name: .menuShowNotes, object: nil)
            }
            .keyboardShortcut("3", modifiers: .command)
            
            Button("Statistics") {
                NotificationCenter.default.post(name: .menuShowStatistics, object: nil)
            }
            .keyboardShortcut("4", modifiers: .command)
        }
        
        // Help menu additions
        CommandGroup(after: .help) {
            Button("Keyboard Shortcuts") {
                KeyboardShortcutManager.shared.showingKeyboardHelp = true
            }
            .keyboardShortcut("?", modifiers: .command)
        }
    }
}
