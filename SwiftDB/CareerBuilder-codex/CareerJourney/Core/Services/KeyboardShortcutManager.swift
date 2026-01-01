//
//  KeyboardShortcutManager.swift
//  CareerKit
//
//  Manages keyboard shortcuts and navigation
//

import SwiftUI
import Foundation
import Combine

@MainActor
final class KeyboardShortcutManager: ObservableObject {
    static let shared = KeyboardShortcutManager()

    @Published var showingKeyboardHelp = false
    @Published var currentFocusArea: FocusArea? = nil

    init() {}
    
    func moveFocus(to area: FocusArea) {
        currentFocusArea = area
    }
}

// MARK: - Keyboard Shortcuts
enum KeyboardShortcuts {
    // Navigation
    static let focusSidebar: Character = "1"
    static let focusJobList: Character = "2"
    static let focusDetails: Character = "3"
    static let focusSearch: Character = "/"
    
    // Tab Navigation
    static let jobDetailsTab: Character = "1"
    static let statsTab: Character = "2"
    static let documentsTab: Character = "3"
    static let notesTab: Character = "4"
    
    // General Navigation
    static let nextTab: Character = "]"
    static let previousTab: Character = "["
    static let toggleSidebar: Character = "s"
    static let quickSearch: Character = "k"
}

// MARK: - View Extension for Focus Areas
extension View {
    func focusArea(_ area: FocusArea) -> some View {
        self
            .accessibilityElement(children: .contain)
            .accessibilityLabel("\(String(describing: area)) area")
    }
    
    func globalKeyboardShortcuts() -> some View {
        self
            .onKeyPress(keys: ["?"]) { keyPress in
                if keyPress.modifiers.contains(.command) {
                    KeyboardShortcutManager.shared.showingKeyboardHelp = true
                    return .handled
                }
                return .ignored
            }
    }
}

