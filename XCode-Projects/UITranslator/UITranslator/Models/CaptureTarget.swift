//
//  CaptureTarget.swift
//  UITranslator
//
//  Created by Roger Lin on 1/6/26.
//

import Foundation
import ScreenCaptureKit
import AppKit

/// Represents a window or display that can be captured
struct CaptureTarget: Identifiable, Hashable {
    enum TargetType: Hashable {
        case window(SCWindow)
        case display(SCDisplay)
    }

    let id: String
    let type: TargetType
    let title: String
    let appName: String?
    let appBundleIdentifier: String?
    let frame: CGRect
    let icon: NSImage?

    init(window: SCWindow) {
        self.id = "window-\(window.windowID)"
        self.type = .window(window)
        self.title = window.title ?? "Untitled Window"
        self.appName = window.owningApplication?.applicationName
        self.appBundleIdentifier = window.owningApplication?.bundleIdentifier
        self.frame = window.frame

        // Try to get app icon
        if let bundleId = window.owningApplication?.bundleIdentifier,
           let appURL = NSWorkspace.shared.urlForApplication(withBundleIdentifier: bundleId) {
            self.icon = NSWorkspace.shared.icon(forFile: appURL.path)
        } else {
            self.icon = nil
        }
    }

    init(display: SCDisplay) {
        self.id = "display-\(display.displayID)"
        self.type = .display(display)
        self.title = "Display \(display.displayID)"
        self.appName = nil
        self.appBundleIdentifier = nil
        self.frame = CGRect(x: 0, y: 0, width: display.width, height: display.height)
        self.icon = NSImage(systemSymbolName: "display", accessibilityDescription: "Display")
    }

    var displayName: String {
        if let appName = appName {
            return "\(appName): \(title)"
        }
        return title
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: CaptureTarget, rhs: CaptureTarget) -> Bool {
        lhs.id == rhs.id
    }
}
