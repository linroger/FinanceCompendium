//
//  OverlayWindowManager.swift
//  UITranslator
//
//  Created by Roger Lin on 1/6/26.
//

import AppKit
import SwiftUI

/// Manages the overlay window that displays translated text
@MainActor
@Observable
final class OverlayWindowManager {
    // MARK: - State

    /// Whether the overlay is currently visible
    private(set) var isVisible: Bool = false

    /// Current overlay window frame
    private(set) var overlayFrame: CGRect = .zero

    // MARK: - Private Properties

    private var overlayWindow: NSWindow?
    private var hostingView: NSHostingView<AnyView>?

    // MARK: - Public Methods

    /// Show the overlay window with the given content
    func showOverlay<Content: View>(
        frame: CGRect,
        @ViewBuilder content: () -> Content
    ) {
        // Create or update the window
        if overlayWindow == nil {
            createOverlayWindow(frame: frame, content: content)
        } else {
            updateOverlayWindow(frame: frame, content: content)
        }

        overlayWindow?.orderFrontRegardless()
        isVisible = true
        overlayFrame = frame
    }

    /// Update the overlay content without recreating the window
    func updateContent<Content: View>(@ViewBuilder content: () -> Content) {
        guard let hostingView = hostingView else { return }
        hostingView.rootView = AnyView(content())
    }

    /// Update the overlay window frame
    func updateFrame(_ frame: CGRect) {
        guard let window = overlayWindow else { return }

        // Convert to screen coordinates
        // macOS screen coordinates have origin at bottom-left of primary screen
        window.setFrame(frame, display: true, animate: false)
        overlayFrame = frame
    }

    /// Hide the overlay window
    func hideOverlay() {
        overlayWindow?.orderOut(nil)
        isVisible = false
    }

    /// Close and destroy the overlay window
    func closeOverlay() {
        overlayWindow?.close()
        overlayWindow = nil
        hostingView = nil
        isVisible = false
    }

    // MARK: - Private Methods

    private func createOverlayWindow<Content: View>(
        frame: CGRect,
        @ViewBuilder content: () -> Content
    ) {
        // Create the window
        let window = NSWindow(
            contentRect: frame,
            styleMask: [.borderless],
            backing: .buffered,
            defer: false
        )

        // Configure for overlay behavior
        window.isOpaque = false
        window.backgroundColor = .clear
        window.hasShadow = false

        // CRITICAL: Make the window click-through
        window.ignoresMouseEvents = true

        // Keep above other windows but below screen saver
        window.level = .floating

        // Behavior for spaces and fullscreen
        window.collectionBehavior = [
            .canJoinAllSpaces,
            .fullScreenAuxiliary,
            .stationary
        ]

        // Don't show in Mission Control or window switcher
        window.collectionBehavior.insert(.ignoresCycle)

        // Create hosting view with SwiftUI content
        let hosting = NSHostingView(rootView: AnyView(content()))
        hosting.frame = NSRect(origin: .zero, size: frame.size)

        window.contentView = hosting

        self.overlayWindow = window
        self.hostingView = hosting
    }

    private func updateOverlayWindow<Content: View>(
        frame: CGRect,
        @ViewBuilder content: () -> Content
    ) {
        guard let window = overlayWindow, let hosting = hostingView else { return }

        window.setFrame(frame, display: false)
        hosting.frame = NSRect(origin: .zero, size: frame.size)
        hosting.rootView = AnyView(content())
    }
}

// MARK: - Overlay Window for Multiple Regions

/// Manages multiple overlay labels positioned at specific screen locations
@MainActor
@Observable
final class MultiRegionOverlayManager {
    // MARK: - State

    private(set) var isVisible: Bool = false

    // MARK: - Private Properties

    private var overlayWindow: NSWindow?
    private var translatedItems: [TranslatedTextItem] = []
    private var hostingView: NSHostingView<AnyView>?
    private var windowFrame: CGRect = .zero

    // MARK: - Public Methods

    /// Update the overlay with new translated items
    func updateOverlay(
        items: [TranslatedTextItem],
        windowFrame: CGRect
    ) {
        self.translatedItems = items
        self.windowFrame = windowFrame

        if overlayWindow == nil {
            createOverlayWindow()
        }

        updateOverlayContent()
        updateOverlayFrame()

        if !items.isEmpty && !isVisible {
            overlayWindow?.orderFrontRegardless()
            isVisible = true
        }
    }

    /// Hide the overlay
    func hide() {
        overlayWindow?.orderOut(nil)
        isVisible = false
    }

    /// Show the overlay
    func show() {
        guard overlayWindow != nil else { return }
        overlayWindow?.orderFrontRegardless()
        isVisible = true
    }

    /// Close and cleanup
    func close() {
        overlayWindow?.close()
        overlayWindow = nil
        hostingView = nil
        translatedItems = []
        isVisible = false
    }

    // MARK: - Private Methods

    private func createOverlayWindow() {
        let window = NSWindow(
            contentRect: windowFrame,
            styleMask: [.borderless],
            backing: .buffered,
            defer: false
        )

        // Overlay configuration
        window.isOpaque = false
        window.backgroundColor = .clear
        window.hasShadow = false
        window.ignoresMouseEvents = true
        window.level = .floating
        window.collectionBehavior = [
            .canJoinAllSpaces,
            .fullScreenAuxiliary,
            .stationary,
            .ignoresCycle
        ]

        let hosting = NSHostingView(rootView: AnyView(EmptyView()))
        window.contentView = hosting

        self.overlayWindow = window
        self.hostingView = hosting
    }

    private func updateOverlayContent() {
        guard let hosting = hostingView else { return }

        let overlayView = TranslationOverlayContentView(
            items: translatedItems,
            windowFrame: windowFrame
        )

        hosting.rootView = AnyView(overlayView)
    }

    private func updateOverlayFrame() {
        guard let window = overlayWindow else { return }
        window.setFrame(windowFrame, display: true)
        hostingView?.frame = NSRect(origin: .zero, size: windowFrame.size)
    }
}

// MARK: - Overlay Content View

private struct TranslationOverlayContentView: View {
    let items: [TranslatedTextItem]
    let windowFrame: CGRect

    var body: some View {
        ZStack {
            ForEach(items) { item in
                if let translatedText = item.translatedText {
                    TranslationLabel(
                        text: translatedText,
                        fontSize: item.estimatedFontSize
                    )
                    .position(
                        x: item.screenPosition.x - windowFrame.origin.x,
                        y: windowFrame.height - (item.screenPosition.y - windowFrame.origin.y)
                    )
                }
            }
        }
        .frame(width: windowFrame.width, height: windowFrame.height)
        .allowsHitTesting(false)
    }
}

// MARK: - Translation Label View

private struct TranslationLabel: View {
    let text: String
    let fontSize: CGFloat

    var body: some View {
        Text(text)
            .font(.system(size: fontSize, weight: .medium))
            .foregroundColor(.white)
            .padding(.horizontal, 6)
            .padding(.vertical, 3)
            .background(
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.black.opacity(0.8))
            )
            .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
            .allowsHitTesting(false)
    }
}
