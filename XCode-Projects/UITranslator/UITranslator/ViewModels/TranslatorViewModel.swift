//
//  TranslatorViewModel.swift
//  UITranslator
//
//  Created by Roger Lin on 1/6/26.
//

import Foundation
import SwiftUI
import Combine

/// Main view model that coordinates window capture, text recognition, and translation
@MainActor
@Observable
final class TranslatorViewModel {
    // MARK: - Published State

    /// Current app state
    enum State: Equatable {
        case idle
        case selectingWindow
        case capturing
        case paused
        case error(String)
    }

    private(set) var state: State = .idle

    /// Available windows to capture
    var availableWindows: [CaptureTarget] {
        captureService.availableTargets
    }

    /// Currently selected window
    var selectedWindow: CaptureTarget? {
        get { captureService.selectedTarget }
        set { captureService.selectedTarget = newValue }
    }

    /// Translated text items for display
    private(set) var translatedItems: [TranslatedTextItem] = []

    /// Current window frame for overlay positioning
    private(set) var currentWindowFrame: CGRect = .zero

    /// Whether overlay is visible
    var isOverlayVisible: Bool = true

    /// Translation configuration
    var sourceLanguage: String = "zh-Hans" {
        didSet {
            Task {
                await updateTranslationConfiguration()
            }
        }
    }

    var targetLanguage: String = "en" {
        didSet {
            Task {
                await updateTranslationConfiguration()
            }
        }
    }

    /// Statistics
    private(set) var recognizedTextCount: Int = 0
    private(set) var translatedTextCount: Int = 0
    private(set) var lastProcessingTime: TimeInterval = 0

    /// Error message
    private(set) var errorMessage: String?

    // MARK: - Services

    private let captureService = WindowCaptureService()
    private let recognitionService = TextRecognitionService()
    private let translationService = TranslationService()
    private let overlayManager = MultiRegionOverlayManager()

    // MARK: - Private Properties

    private var processingTask: Task<Void, Never>?
    private var windowTrackingTimer: Timer?
    private var lastRecognizedItems: [RecognizedTextItem] = []
    private var isProcessingFrame: Bool = false

    // Processing configuration
    private let processingDebounceInterval: TimeInterval = 0.3
    private var lastProcessingTimestamp: Date = .distantPast

    // MARK: - Initialization

    init() {
        setupCaptureService()
    }

    // MARK: - Setup

    private func setupCaptureService() {
        captureService.onFrameCaptured = { [weak self] image, windowFrame in
            Task { @MainActor in
                await self?.processFrame(image, windowFrame: windowFrame)
            }
        }
    }

    // MARK: - Permission Handling

    /// Check if screen recording permission is granted
    var hasScreenRecordingPermission: Bool {
        captureService.checkPermission()
    }

    /// Request screen recording permission
    func requestScreenRecordingPermission() -> Bool {
        captureService.requestPermission()
    }

    /// Open System Settings to Screen Recording pane
    func openScreenRecordingSettings() {
        if let url = URL(string: "x-apple.systempreferences:com.apple.preference.security?Privacy_ScreenCapture") {
            NSWorkspace.shared.open(url)
        }
    }

    // MARK: - Window Selection

    /// Refresh the list of available windows
    func refreshWindows() async {
        state = .selectingWindow
        await captureService.refreshAvailableTargets()
    }

    // MARK: - Capture Control

    /// Start capturing and translating
    func startCapture() async {
        guard selectedWindow != nil else {
            errorMessage = "Please select a window to capture."
            state = .error("No window selected")
            return
        }

        do {
            // Check translation availability
            await translationService.checkAvailability()
            guard translationService.isAvailable else {
                errorMessage = "Translation languages are not installed. Please download them in System Settings."
                state = .error("Languages not installed")
                return
            }

            // Prepare translation session
            try await translationService.prepareSession()

            // Start capture
            try await captureService.startCapture()

            state = .capturing
            errorMessage = nil

            // Start window tracking timer
            startWindowTracking()

        } catch let error as WindowCaptureError {
            errorMessage = error.localizedDescription
            state = .error(error.localizedDescription)
        } catch let error as TranslationError {
            errorMessage = error.localizedDescription
            state = .error(error.localizedDescription)
        } catch {
            errorMessage = error.localizedDescription
            state = .error(error.localizedDescription)
        }
    }

    /// Stop capturing
    func stopCapture() async {
        processingTask?.cancel()
        processingTask = nil

        stopWindowTracking()

        await captureService.stopCapture()
        overlayManager.hide()

        translatedItems = []
        lastRecognizedItems = []

        state = .idle
    }

    /// Pause capture
    func pauseCapture() async {
        await captureService.stopCapture()
        overlayManager.hide()
        state = .paused
    }

    /// Resume capture
    func resumeCapture() async {
        await startCapture()
    }

    /// Toggle overlay visibility
    func toggleOverlay() {
        isOverlayVisible.toggle()
        if isOverlayVisible {
            overlayManager.show()
        } else {
            overlayManager.hide()
        }
    }

    // MARK: - Frame Processing

    private func processFrame(_ image: CGImage, windowFrame: CGRect) async {
        // Debounce processing
        let now = Date()
        guard now.timeIntervalSince(lastProcessingTimestamp) >= processingDebounceInterval else {
            return
        }
        lastProcessingTimestamp = now

        // Prevent concurrent processing
        guard !isProcessingFrame else { return }
        isProcessingFrame = true

        defer { isProcessingFrame = false }

        let startTime = CFAbsoluteTimeGetCurrent()

        do {
            // Update window frame
            currentWindowFrame = windowFrame

            // Recognize text
            let recognizedItems = try await recognitionService.recognizeTextDebounced(
                in: image,
                previousItems: lastRecognizedItems
            )

            recognizedTextCount = recognizedItems.count

            // Skip if same as previous
            guard recognizedItems != lastRecognizedItems else {
                return
            }

            lastRecognizedItems = recognizedItems

            // Extract text for translation
            let textsToTranslate = recognizedItems.map { $0.text }

            guard !textsToTranslate.isEmpty else {
                translatedItems = []
                overlayManager.updateOverlay(items: [], windowFrame: windowFrame)
                return
            }

            // Translate batch
            let translations = try await translationService.translateBatch(textsToTranslate)

            // Create translated items with positions
            var newTranslatedItems: [TranslatedTextItem] = []

            for item in recognizedItems {
                let screenBox = item.screenBoundingBox(for: windowFrame)
                let centerX = screenBox.midX
                let centerY = screenBox.midY

                let translatedItem = TranslatedTextItem(
                    originalText: item.text,
                    translatedText: translations[item.text],
                    screenPosition: CGPoint(x: centerX, y: centerY),
                    size: screenBox.size
                )

                newTranslatedItems.append(translatedItem)
            }

            translatedItems = newTranslatedItems
            translatedTextCount = newTranslatedItems.filter { $0.translatedText != nil }.count

            // Update overlay
            if isOverlayVisible {
                overlayManager.updateOverlay(
                    items: newTranslatedItems,
                    windowFrame: windowFrame
                )
            }

            lastProcessingTime = CFAbsoluteTimeGetCurrent() - startTime

        } catch {
            print("Frame processing error: \(error.localizedDescription)")
        }
    }

    // MARK: - Window Tracking

    private func startWindowTracking() {
        windowTrackingTimer = Timer.scheduledTimer(
            withTimeInterval: 0.5,
            repeats: true
        ) { [weak self] _ in
            Task { @MainActor in
                await self?.updateWindowPosition()
            }
        }
    }

    private func stopWindowTracking() {
        windowTrackingTimer?.invalidate()
        windowTrackingTimer = nil
    }

    private func updateWindowPosition() async {
        do {
            try await captureService.updateStreamConfiguration()
            let newFrame = captureService.currentWindowFrame

            // Update overlay position if frame changed
            if newFrame != currentWindowFrame && !translatedItems.isEmpty {
                currentWindowFrame = newFrame
                overlayManager.updateOverlay(
                    items: translatedItems,
                    windowFrame: newFrame
                )
            }
        } catch {
            // Window might have been closed
            print("Window tracking error: \(error.localizedDescription)")
        }
    }

    // MARK: - Configuration

    private func updateTranslationConfiguration() async {
        let config = TranslationConfiguration(
            sourceLanguage: Locale.Language(identifier: sourceLanguage),
            targetLanguage: Locale.Language(identifier: targetLanguage)
        )
        await translationService.updateConfiguration(config)
    }

    // MARK: - Cleanup

    func cleanup() async {
        await stopCapture()
        overlayManager.close()
    }
}

// MARK: - Language Options

extension TranslatorViewModel {
    static let sourceLanguageOptions: [(id: String, name: String)] = [
        ("zh-Hans", "Chinese (Simplified)"),
        ("zh-Hant", "Chinese (Traditional)"),
        ("ja", "Japanese"),
        ("ko", "Korean"),
        ("es", "Spanish"),
        ("fr", "French"),
        ("de", "German"),
        ("ru", "Russian"),
        ("ar", "Arabic"),
        ("en", "English"),
    ]

    static let targetLanguageOptions: [(id: String, name: String)] = [
        ("en", "English"),
        ("zh-Hans", "Chinese (Simplified)"),
        ("ja", "Japanese"),
        ("ko", "Korean"),
        ("es", "Spanish"),
        ("fr", "French"),
        ("de", "German"),
    ]
}
