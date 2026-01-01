//
//  SettingsModels.swift
//  CareerKit
//
//  Settings models following Native Settings app patterns
//

import SwiftUI

// MARK: - Settings Section

enum SettingsSection: Int, CaseIterable, Identifiable {
    case general
    case appearance
    case data
    case ai
    case privacy
    case about
    
    var id: Int { rawValue }
    
    var title: String {
        switch self {
        case .general: return "General"
        case .appearance: return "Appearance"
        case .data: return "Data Management"
        case .ai: return "AI & Parsing"
        case .privacy: return "Privacy & Security"
        case .about: return "About"
        }
    }
    
    var icon: String {
        switch self {
        case .general: return "gear"
        case .appearance: return "paintbrush"
        case .data: return "externaldrive"
        case .ai: return "brain.head.profile"
        case .privacy: return "lock.shield"
        case .about: return "info.circle"
        }
    }
    
    var color: String {
        switch self {
        case .general: return "gray"
        case .appearance: return "orange"
        case .data: return "green"
        case .ai: return "purple"
        case .privacy: return "blue"
        case .about: return "indigo"
        }
    }
    
    var gradientStart: String {
        switch self {
        case .general: return "grayGradientStart"
        case .appearance: return "orangeGradientStart"
        case .data: return "greenGradientStart"
        case .ai: return "purpleGradientStart"
        case .privacy: return "blueGradientStart"
        case .about: return "indigoGradientStart"
        }
    }
    
    var gradientEnd: String {
        switch self {
        case .general: return "grayGradientEnd"
        case .appearance: return "orangeGradientEnd"
        case .data: return "greenGradientEnd"
        case .ai: return "purpleGradientEnd"
        case .privacy: return "blueGradientEnd"
        case .about: return "indigoGradientEnd"
        }
    }
    
    var subtitle: String {
        switch self {
        case .general: return "Application preferences"
        case .appearance: return "Customize the look"
        case .data: return "Import, export & backup"
        case .ai: return "AI parsing settings"
        case .privacy: return "Security & analytics"
        case .about: return "App information"
        }
    }
    
    var settings: [SettingsItem] {
        switch self {
        case .general:
            return [
                .behavior,
                .notifications,
                .window
            ]
        case .appearance:
            return [
                .theme,
                .layout,
                .accessibility
            ]
        case .data:
            return [
                .importExport,
                .backup,
                .storage
            ]
        case .ai:
            return [
                .parsing,
                .confidence,
                .performance
            ]
        case .privacy:
            return [
                .privacy,
                .security,
                .analytics
            ]
        case .about:
            return [
                .about,
                .updates
            ]
        }
    }
}

// MARK: - Settings Item

enum SettingsItem: Int, CaseIterable, Identifiable {
    case behavior
    case notifications
    case window
    case theme
    case layout
    case accessibility
    case importExport
    case backup
    case storage
    case parsing
    case confidence
    case performance
    case privacy
    case security
    case analytics
    case about
    case updates
    
    var id: Int { rawValue }
    
    var title: String {
        switch self {
        case .behavior: return "Behavior"
        case .notifications: return "Notifications"
        case .window: return "Window"
        case .theme: return "Theme"
        case .layout: return "Layout"
        case .accessibility: return "Accessibility"
        case .importExport: return "Import & Export"
        case .backup: return "Backup"
        case .storage: return "Storage"
        case .parsing: return "AI Parsing"
        case .confidence: return "Confidence"
        case .performance: return "Performance"
        case .privacy: return "Privacy"
        case .security: return "Security"
        case .analytics: return "Analytics"
        case .about: return "About"
        case .updates: return "Updates"
        }
    }
    
    var icon: String {
        switch self {
        case .behavior: return "app.badge"
        case .notifications: return "bell"
        case .window: return "macwindow"
        case .theme: return "paintbrush.fill"
        case .layout: return "rectangle.split.3x1"
        case .accessibility: return "accessibility"
        case .importExport: return "arrow.up.arrow.down"
        case .backup: return "clock.arrow.2.circlepath"
        case .storage: return "internaldrive"
        case .parsing: return "brain.head.profile"
        case .confidence: return "percent"
        case .performance: return "speedometer"
        case .privacy: return "hand.raised"
        case .security: return "lock"
        case .analytics: return "chart.bar"
        case .about: return "info.circle"
        case .updates: return "arrow.clockwise.circle"
        }
    }
    
    var color: String {
        switch self {
        case .behavior: return "blue"
        case .notifications: return "orange"
        case .window: return "green"
        case .theme: return "purple"
        case .layout: return "indigo"
        case .accessibility: return "pink"
        case .importExport: return "teal"
        case .backup: return "cyan"
        case .storage: return "green"
        case .parsing: return "purple"
        case .confidence: return "orange"
        case .performance: return "red"
        case .privacy: return "blue"
        case .security: return "gray"
        case .analytics: return "yellow"
        case .about: return "indigo"
        case .updates: return "green"
        }
    }
    
    var gradientStart: String {
        switch self {
        case .behavior: return "blueGradientStart"
        case .notifications: return "orangeGradientStart"
        case .window: return "greenGradientStart"
        case .theme: return "purpleGradientStart"
        case .layout: return "indigoGradientStart"
        case .accessibility: return "pinkGradientStart"
        case .importExport: return "tealGradientStart"
        case .backup: return "cyanGradientStart"
        case .storage: return "greenGradientStart"
        case .parsing: return "purpleGradientStart"
        case .confidence: return "orangeGradientStart"
        case .performance: return "redGradientStart"
        case .privacy: return "blueGradientStart"
        case .security: return "grayGradientStart"
        case .analytics: return "yellowGradientStart"
        case .about: return "indigoGradientStart"
        case .updates: return "greenGradientStart"
        }
    }
    
    var gradientEnd: String {
        switch self {
        case .behavior: return "blueGradientEnd"
        case .notifications: return "orangeGradientEnd"
        case .window: return "greenGradientEnd"
        case .theme: return "purpleGradientEnd"
        case .layout: return "indigoGradientEnd"
        case .accessibility: return "pinkGradientEnd"
        case .importExport: return "tealGradientEnd"
        case .backup: return "cyanGradientEnd"
        case .storage: return "greenGradientEnd"
        case .parsing: return "purpleGradientEnd"
        case .confidence: return "orangeGradientEnd"
        case .performance: return "redGradientEnd"
        case .privacy: return "blueGradientEnd"
        case .security: return "grayGradientEnd"
        case .analytics: return "yellowGradientEnd"
        case .about: return "indigoGradientEnd"
        case .updates: return "greenGradientEnd"
        }
    }
    
    var subtitle: String {
        switch self {
        case .behavior: return "App behavior settings"
        case .notifications: return "Notification preferences"
        case .window: return "Window behavior"
        case .theme: return "App theme and colors"
        case .layout: return "Interface layout"
        case .accessibility: return "Accessibility options"
        case .importExport: return "Data import and export"
        case .backup: return "Backup settings"
        case .storage: return "Storage management"
        case .parsing: return "AI job parsing"
        case .confidence: return "Parsing confidence"
        case .performance: return "AI performance"
        case .privacy: return "Privacy settings"
        case .security: return "Security options"
        case .analytics: return "Analytics and crash reports"
        case .about: return "App information"
        case .updates: return "Software updates"
        }
    }
}

// MARK: - Settings Router

@Observable
final class SettingsRouter {
    var currentSettingsItem: SettingsItem? = nil
    var searchText: String = ""
    var isSearching: Bool = false
    
    var isShowingSettingsItem: Bool {
        currentSettingsItem != nil
    }
    
    func showSettingsItem(_ item: SettingsItem) {
        if currentSettingsItem != item {
            currentSettingsItem = item
        }
    }
    
    func resetSettingsItem() {
        currentSettingsItem = nil
    }
    
    func filteredSections() -> [SettingsSection] {
        guard !searchText.isEmpty else { return SettingsSection.allCases }
        
        return SettingsSection.allCases.filter { section in
            // Check section title
            if section.title.localizedCaseInsensitiveContains(searchText) {
                return true
            }
            
            // Check section subtitle
            if section.subtitle.localizedCaseInsensitiveContains(searchText) {
                return true
            }
            
            // Check settings items
            return section.settings.contains { item in
                item.title.localizedCaseInsensitiveContains(searchText) ||
                item.subtitle.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    func filteredSettings(for section: SettingsSection) -> [SettingsItem] {
        guard !searchText.isEmpty else { return section.settings }
        
        return section.settings.filter { item in
            item.title.localizedCaseInsensitiveContains(searchText) ||
            item.subtitle.localizedCaseInsensitiveContains(searchText)
        }
    }
}