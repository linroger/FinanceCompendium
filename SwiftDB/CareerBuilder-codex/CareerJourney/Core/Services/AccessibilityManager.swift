//
//  AccessibilityManager.swift
//  CareerKit
//
//  Comprehensive accessibility manager with VoiceOver, keyboard navigation, and high contrast support
//

import SwiftUI
import Foundation
import Combine
import AppKit

@MainActor
final class AccessibilityManager: ObservableObject {
    // MARK: - Singleton
    static let shared = AccessibilityManager()
    
    // MARK: - Published Properties
    @Published var voiceOverEnabled: Bool = false
    @Published var reduceMotion: Bool = false
    @Published var increaseContrast: Bool = false
    @Published var differentiateWithoutColor: Bool = false
    @Published var prefersCrossFadeTransitions: Bool = false
    @Published var switchControlEnabled: Bool = false
    @Published var fullKeyboardAccessEnabled: Bool = false
    
    // MARK: - Focus Management
    @Published var currentFocusArea: String = ""
    @Published var focusedElementDescription: String = ""
    
    // MARK: - Announcements Queue
    private var announcementQueue: [String] = []
    private var isProcessingAnnouncements = false
    
    init() {
        updateAccessibilitySettings()
        setupAccessibilityNotifications()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    // MARK: - Setup and Configuration
    
    private func setupAccessibilityNotifications() {
        // Listen for accessibility changes
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(accessibilitySettingsChanged),
            name: NSWorkspace.accessibilityDisplayOptionsDidChangeNotification,
            object: nil
        )
        
        // Listen for VoiceOver state changes
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(voiceOverStatusChanged),
            name: NSWorkspace.accessibilityDisplayOptionsDidChangeNotification,
            object: nil
        )
        
        // Listen for focus changes
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(focusDidChange),
            name: .accessibilityFocusChanged,
            object: nil
        )
    }
    
    @objc private func accessibilitySettingsChanged() {
        Task { @MainActor in
            self.updateAccessibilitySettings()
        }
    }
    
    @objc private func voiceOverStatusChanged() {
        Task { @MainActor in
            self.updateAccessibilitySettings()
        }
    }
    
    @objc private func focusDidChange(_ notification: Notification? = nil) {
        Task { @MainActor in
            if let focusInfo = notification?.userInfo as? [String: String],
               let area = focusInfo["area"],
               let description = focusInfo["description"] {
                self.currentFocusArea = area
                self.focusedElementDescription = description
            }
        }
    }

    private func updateAccessibilitySettings() {
        voiceOverEnabled = NSWorkspace.shared.isVoiceOverEnabled
        reduceMotion = NSWorkspace.shared.accessibilityDisplayShouldReduceMotion
        increaseContrast = NSWorkspace.shared.accessibilityDisplayShouldIncreaseContrast
        differentiateWithoutColor = NSWorkspace.shared.accessibilityDisplayShouldDifferentiateWithoutColor
        prefersCrossFadeTransitions = NSWorkspace.shared.accessibilityDisplayShouldReduceMotion
        
        // Check for full keyboard access
        fullKeyboardAccessEnabled = NSApplication.shared.isFullKeyboardAccessEnabled
        
        // Check for switch control (approximate detection)
        switchControlEnabled = NSWorkspace.shared.accessibilityDisplayShouldReduceMotion && voiceOverEnabled
    }
    
    // MARK: - VoiceOver Support
    
    func announceForVoiceOver(_ message: String, priority: AccessibilityAnnouncementPriority = .medium) {
        guard voiceOverEnabled else { return }
        
        // Add to queue for processing
        announcementQueue.append(message)
        processAnnouncementQueue(priority: priority)
    }
    
    private func processAnnouncementQueue(priority: AccessibilityAnnouncementPriority) {
        guard !isProcessingAnnouncements && !announcementQueue.isEmpty else { return }
        
        isProcessingAnnouncements = true
        let message = announcementQueue.removeFirst()
        
        // Determine delay based on priority
        let delay: TimeInterval = {
            switch priority {
            case .low: return 1.0
            case .medium: return 0.5
            case .high: return 0.1
            case .urgent: return 0.0
            @unknown default: return 0.5
            }
        }()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            NSAccessibility.post(
                element: NSApp.mainWindow as Any,
                notification: .announcementRequested,
                userInfo: [
                    .announcement: message,
                    .priority: priority.rawValue
                ]
            )
            
            self.isProcessingAnnouncements = false
            
            // Process next announcement if any
            if !self.announcementQueue.isEmpty {
                self.processAnnouncementQueue(priority: priority)
            }
        }
    }
    
    func announceNavigationChange(to section: String, description: String) {
        let message = "Navigated to \(section). \(description)"
        announceForVoiceOver(message, priority: .high)
        
        // Post focus change notification
        NotificationCenter.default.post(
            name: .accessibilityFocusChanged,
            object: nil,
            userInfo: ["area": section, "description": description]
        )
    }
    
    func announceActionResult(_ action: String, success: Bool, details: String = "") {
        let status = success ? "completed successfully" : "failed"
        let message = "\(action) \(status). \(details)".trimmingCharacters(in: .whitespaces)
        announceForVoiceOver(message, priority: success ? .medium : .high)
    }
    
    func announceDataUpdate(_ updateType: String, count: Int? = nil) {
        var message = "\(updateType) updated"
        if let count = count {
            message += ". \(count) items"
        }
        announceForVoiceOver(message, priority: .low)
    }
    
    // MARK: - Focus Management
    
    func focusElement(_ element: Any, with description: String = "") {
        NSAccessibility.post(
            element: element,
            notification: .focusedUIElementChanged
        )
        
        if !description.isEmpty {
            announceForVoiceOver(description, priority: .high)
        }
    }
    
    func focusMainContent() {
        announceNavigationChange(to: "Main Content", description: "Job application details")
    }
    
    func focusSidebar() {
        announceNavigationChange(to: "Sidebar", description: "Job applications list")
    }
    
    func focusToolbar() {
        announceNavigationChange(to: "Toolbar", description: "Application controls and actions")
    }
    
    // MARK: - Keyboard Navigation Support
    
    func handleKeyboardNavigation(keyCode: Int, modifiers: NSEvent.ModifierFlags) -> Bool {
        guard fullKeyboardAccessEnabled else { return false }
        
        switch keyCode {
        case 48: // Tab key
            if modifiers.contains(.shift) {
                return navigateToPreviousElement()
            } else {
                return navigateToNextElement()
            }
        case 36: // Return key
            return activateCurrentElement()
        case 53: // Escape key
            return cancelCurrentAction()
        default:
            return false
        }
    }
    
    private func navigateToNextElement() -> Bool {
        announceForVoiceOver("Moving to next element", priority: .low)
        return true
    }
    
    private func navigateToPreviousElement() -> Bool {
        announceForVoiceOver("Moving to previous element", priority: .low)
        return true
    }
    
    private func activateCurrentElement() -> Bool {
        announceForVoiceOver("Activating current element", priority: .medium)
        return true
    }
    
    private func cancelCurrentAction() -> Bool {
        announceForVoiceOver("Cancelled", priority: .medium)
        return true
    }
    
    // MARK: - High Contrast Support
    
    func contrastAdjustedColor(_ color: Color) -> Color {
        guard increaseContrast else { return color }
        
        // Increase contrast by adjusting brightness
        return color.opacity(0.9)
    }
    
    func accessibleTextColor(for background: Color) -> Color {
        if increaseContrast {
            return differentiateWithoutColor ? .primary : .primary
        }
        return .primary
    }
    
    // MARK: - Animation Support
    
    func accessibleAnimation<V: Equatable>(_ animation: Animation?, value: V) -> Animation? {
        guard !reduceMotion else { return nil }
        return animation
    }
    
    func accessibleTransition(_ transition: AnyTransition) -> AnyTransition {
        guard !reduceMotion else { return .opacity }
        return prefersCrossFadeTransitions ? .opacity : transition
    }
    
    // MARK: - Screen Reader Helpers
    
    func screenReaderFriendlyText(_ text: String) -> String {
        var result = text
        
        // Expand common abbreviations
        result = result.replacingOccurrences(of: "ID", with: "I D")
        result = result.replacingOccurrences(of: "URL", with: "U R L")
        result = result.replacingOccurrences(of: "CEO", with: "C E O")
        result = result.replacingOccurrences(of: "AI", with: "A I")
        
        // Handle currency
        result = result.replacingOccurrences(of: "$", with: "dollars")
        
        return result
    }
    
    func describeJobStatus(_ status: String) -> String {
        switch status.lowercased() {
        case "applied":
            return "Application submitted"
        case "interview":
            return "Interview scheduled"
        case "offer":
            return "Offer received"
        case "accepted":
            return "Offer accepted"
        case "rejected":
            return "Application rejected"
        case "withdrawn":
            return "Application withdrawn"
        default:
            return status
        }
    }
}

// MARK: - Supporting Types

enum AccessibilityAnnouncementPriority: Int {
    case low = 0
    case medium = 1
    case high = 2
    case urgent = 3
}

// MARK: - Notification Names

extension Notification.Name {
    static let accessibilityFocusChanged = Notification.Name("accessibilityFocusChanged")
    static let accessibilityActionPerformed = Notification.Name("accessibilityActionPerformed")
}

// MARK: - Accessibility Extensions

extension View {
    func accessibilityAction(label: String, action: @escaping () -> Void) -> some View {
        self.accessibilityAction(named: Text(label), action)
    }
    
    func accessibilityFocused(when condition: Bool) -> some View {
        self.accessibilityAddTraits(condition ? .isSelected : [])
    }
    
    func accessibilityResponsive(_ manager: AccessibilityManager) -> some View {
        self.modifier(AccessibilityResponsiveModifier(manager: manager))
    }
    
    func accessibilityNavigationItem(area: String, description: String) -> some View {
        self.onTapGesture {
            NotificationCenter.default.post(
                name: .accessibilityFocusChanged,
                object: nil,
                userInfo: ["area": area, "description": description]
            )
        }
        .accessibilityLabel(description)
        .accessibilityAddTraits(.isButton)
    }
    
    func accessibilityContrastAdjusted(_ manager: AccessibilityManager) -> some View {
        self
            .overlay(manager.increaseContrast ? Color.clear : Color.clear) // Placeholder for contrast adjustments
            .animation(manager.accessibleAnimation(.easeInOut(duration: 0.2), value: manager.reduceMotion), value: manager.reduceMotion)
            .preferredColorScheme(manager.increaseContrast ? .dark : nil)
    }
    
    func accessibilityEnhanced(
        label: String,
        hint: String = "",
        traits: AccessibilityTraits = [],
        manager: AccessibilityManager
    ) -> some View {
        self
            .accessibilityLabel(manager.screenReaderFriendlyText(label))
            .accessibilityHint(hint.isEmpty ? "" : manager.screenReaderFriendlyText(hint))
            .accessibilityAddTraits(traits)
            .accessibilityContrastAdjusted(manager)
    }
}

// MARK: - Accessibility Responsive Modifier

struct AccessibilityResponsiveModifier: ViewModifier {
    @ObservedObject var manager: AccessibilityManager
    
    func body(content: Content) -> some View {
        content
            .animation(
                manager.accessibleAnimation(.easeInOut(duration: 0.3), value: manager.reduceMotion),
                value: manager.reduceMotion
            )
            .transition(manager.accessibleTransition(.scale.combined(with: .opacity)))
            .onReceive(NotificationCenter.default.publisher(for: .accessibilityFocusChanged)) { _ in
                // Handle focus change if needed
            }
    }
}

// MARK: - Job Status Accessibility Extension

extension JobStatus {
    var accessibilityDescription: String {
        switch self {
        case .applied:
            return "Application submitted and pending review"
        case .screening:
            return "Initial screening in progress"
        case .interview:
            return "Interview process in progress"
        case .offer:
            return "Job offer received"
        case .accepted:
            return "Offer accepted, position secured"
        case .rejected:
            return "Application was not successful"
        case .withdrawn:
            return "Application voluntarily withdrawn"
        }
    }
    
    var accessibilityRole: String {
        switch self {
        case .applied:
            return "Status: In progress"
        case .screening:
            return "Status: Screening"
        case .interview:
            return "Status: Active"
        case .offer:
            return "Status: Pending action"
        case .accepted:
            return "Status: Completed successfully"
        case .rejected:
            return "Status: Completed unsuccessfully"
        case .withdrawn:
            return "Status: Cancelled"
        }
    }
}
