//
//  StandardButtons.swift
//  CareerKit
//
//  Native macOS button components with proper styling
//

import SwiftUI

// MARK: - Primary Button
struct PrimaryButton: View {
    let title: String
    let icon: String?
    let action: () -> Void
    let isEnabled: Bool
    let isLoading: Bool
    let controlSize: ControlSize
    
    init(
        _ title: String, 
        icon: String? = nil, 
        isEnabled: Bool = true,
        isLoading: Bool = false,
        controlSize: ControlSize = .regular,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.icon = icon
        self.isEnabled = isEnabled
        self.isLoading = isLoading
        self.controlSize = controlSize
        self.action = action
    }
    
    var body: some View {
        Button(action: isEnabled && !isLoading ? action : {}) {
            HStack(spacing: 6) {
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .scaleEffect(0.8)
                } else if let icon = icon {
                    Image(systemName: icon)
                        .imageScale(.small)
                }
                
                Text(title)
                    .lineLimit(1)
            }
        }
        .buttonStyle(.borderedProminent)
        .controlSize(controlSize)
        .tint(Theme.Colors.primary)
        .disabled(!isEnabled || isLoading)
        .accessibilityLabel(title)
        .accessibilityHint(isLoading ? "Loading" : "")
    }
}

// MARK: - Secondary Button
struct SecondaryButton: View {
    let title: String
    let icon: String?
    let action: () -> Void
    let isEnabled: Bool
    let isLoading: Bool
    let controlSize: ControlSize
    
    init(
        _ title: String, 
        icon: String? = nil, 
        isEnabled: Bool = true,
        isLoading: Bool = false,
        controlSize: ControlSize = .regular,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.icon = icon
        self.isEnabled = isEnabled
        self.isLoading = isLoading
        self.controlSize = controlSize
        self.action = action
    }
    
    var body: some View {
        Button(action: isEnabled && !isLoading ? action : {}) {
            HStack(spacing: 6) {
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .scaleEffect(0.8)
                } else if let icon = icon {
                    Image(systemName: icon)
                        .imageScale(.small)
                }
                
                Text(title)
                    .lineLimit(1)
            }
        }
        .buttonStyle(.bordered)
        .controlSize(controlSize)
        .disabled(!isEnabled || isLoading)
        .accessibilityLabel(title)
        .accessibilityHint(isLoading ? "Loading" : "")
    }
}

// MARK: - Destructive Button
struct DestructiveButton: View {
    let title: String
    let icon: String?
    let action: () -> Void
    let isEnabled: Bool
    let controlSize: ControlSize
    
    init(
        _ title: String, 
        icon: String? = nil, 
        isEnabled: Bool = true,
        controlSize: ControlSize = .regular,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.icon = icon
        self.isEnabled = isEnabled
        self.controlSize = controlSize
        self.action = action
    }
    
    var body: some View {
        Button(role: .destructive, action: isEnabled ? action : {}) {
            HStack(spacing: 6) {
                if let icon = icon {
                    Image(systemName: icon)
                        .imageScale(.small)
                }
                
                Text(title)
                    .lineLimit(1)
            }
        }
        .buttonStyle(.bordered)
        .controlSize(controlSize)
        .disabled(!isEnabled)
        .accessibilityLabel(title)
    }
}

// MARK: - Icon Button
struct IconButton: View {
    let icon: String
    let action: () -> Void
    let isEnabled: Bool
    let accessibilityLabel: String
    
    init(
        icon: String,
        accessibilityLabel: String,
        isEnabled: Bool = true,
        action: @escaping () -> Void
    ) {
        self.icon = icon
        self.accessibilityLabel = accessibilityLabel
        self.isEnabled = isEnabled
        self.action = action
    }
    
    var body: some View {
        Button(action: isEnabled ? action : {}) {
            Image(systemName: icon)
                .imageScale(.medium)
        }
        .buttonStyle(.plain)
        .disabled(!isEnabled)
        .accessibilityLabel(accessibilityLabel)
    }
}