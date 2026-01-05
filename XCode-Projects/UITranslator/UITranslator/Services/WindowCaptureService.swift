//
//  WindowCaptureService.swift
//  UITranslator
//
//  Created by Roger Lin on 1/6/26.
//

import Foundation
import ScreenCaptureKit
import CoreMedia
import CoreGraphics
import Combine

/// Errors that can occur during window capture
enum WindowCaptureError: LocalizedError {
    case permissionDenied
    case noAvailableContent
    case streamCreationFailed(Error)
    case captureNotStarted
    case windowNotFound

    var errorDescription: String? {
        switch self {
        case .permissionDenied:
            return "Screen Recording permission is required. Please enable it in System Settings > Privacy & Security > Screen Recording."
        case .noAvailableContent:
            return "No windows or displays available to capture."
        case .streamCreationFailed(let error):
            return "Failed to create capture stream: \(error.localizedDescription)"
        case .captureNotStarted:
            return "Capture has not been started."
        case .windowNotFound:
            return "The target window could not be found."
        }
    }
}

/// Service responsible for capturing window content using ScreenCaptureKit
@Observable
@MainActor
final class WindowCaptureService: NSObject {
    // MARK: - Published State

    /// Available capture targets
    private(set) var availableTargets: [CaptureTarget] = []

    /// Currently selected target
    var selectedTarget: CaptureTarget?

    /// Whether capture is currently active
    private(set) var isCapturing: Bool = false

    /// Current window frame (updated when window moves/resizes)
    private(set) var currentWindowFrame: CGRect = .zero

    /// Error state
    private(set) var error: WindowCaptureError?

    // MARK: - Callbacks

    /// Called when a new frame is captured
    var onFrameCaptured: ((CGImage, CGRect) -> Void)?

    // MARK: - Private Properties

    private var stream: SCStream?
    private var streamOutput: CaptureStreamOutput?
    private let videoSampleBufferQueue = DispatchQueue(label: "com.uitranslator.videosamplebuffer", qos: .userInteractive)

    /// Capture configuration
    private var captureFrameRate: Int = 5  // 5 FPS for OCR - balance between responsiveness and performance
    private var captureScaleFactor: Int = 2  // Retina scale

    // MARK: - Initialization

    override init() {
        super.init()
    }

    // MARK: - Permission Handling

    /// Check if screen recording permission is granted
    func checkPermission() -> Bool {
        CGPreflightScreenCaptureAccess()
    }

    /// Request screen recording permission
    func requestPermission() -> Bool {
        CGRequestScreenCaptureAccess()
    }

    // MARK: - Target Discovery

    /// Refresh the list of available capture targets
    func refreshAvailableTargets() async {
        do {
            let content = try await SCShareableContent.excludingDesktopWindows(
                false,
                onScreenWindowsOnly: true
            )

            // Filter out small windows, windows without titles, and our own app
            let myBundleId = Bundle.main.bundleIdentifier

            let windows = content.windows.compactMap { window -> CaptureTarget? in
                // Skip our own windows
                if window.owningApplication?.bundleIdentifier == myBundleId {
                    return nil
                }

                // Skip very small windows (likely utility windows)
                guard window.frame.width > 100 && window.frame.height > 100 else {
                    return nil
                }

                // Skip windows without a visible title (usually background processes)
                // But allow windows from apps that have a name
                guard window.title != nil || window.owningApplication?.applicationName != nil else {
                    return nil
                }

                return CaptureTarget(window: window)
            }

            // Also include displays
            let displays = content.displays.map { CaptureTarget(display: $0) }

            self.availableTargets = windows + displays
            self.error = nil
        } catch {
            self.error = .noAvailableContent
            self.availableTargets = []
        }
    }

    // MARK: - Capture Control

    /// Start capturing the selected target
    func startCapture() async throws {
        guard let target = selectedTarget else {
            throw WindowCaptureError.windowNotFound
        }

        guard checkPermission() else {
            throw WindowCaptureError.permissionDenied
        }

        // Stop any existing capture
        await stopCapture()

        // Create content filter based on target type
        let filter: SCContentFilter
        let streamConfig = SCStreamConfiguration()

        switch target.type {
        case .window(let window):
            filter = SCContentFilter(desktopIndependentWindow: window)
            streamConfig.width = Int(window.frame.width) * captureScaleFactor
            streamConfig.height = Int(window.frame.height) * captureScaleFactor
            currentWindowFrame = window.frame

        case .display(let display):
            // For display capture, exclude our own app
            let content = try await SCShareableContent.excludingDesktopWindows(false, onScreenWindowsOnly: true)
            let excludedApps = content.applications.filter {
                $0.bundleIdentifier == Bundle.main.bundleIdentifier
            }
            filter = SCContentFilter(
                display: display,
                excludingApplications: excludedApps,
                exceptingWindows: []
            )
            streamConfig.width = display.width * captureScaleFactor
            streamConfig.height = display.height * captureScaleFactor
            currentWindowFrame = CGRect(x: 0, y: 0, width: display.width, height: display.height)
        }

        // Configure stream
        streamConfig.minimumFrameInterval = CMTime(value: 1, timescale: CMTimeScale(captureFrameRate))
        streamConfig.queueDepth = 3
        streamConfig.showsCursor = false
        streamConfig.capturesAudio = false

        // Create stream output handler
        let output = CaptureStreamOutput()
        output.onSampleBuffer = { [weak self] sampleBuffer in
            Task { @MainActor in
                self?.processSampleBuffer(sampleBuffer)
            }
        }
        self.streamOutput = output

        // Create and start stream
        do {
            let stream = SCStream(filter: filter, configuration: streamConfig, delegate: output)
            try stream.addStreamOutput(output, type: .screen, sampleHandlerQueue: videoSampleBufferQueue)
            try await stream.startCapture()
            self.stream = stream
            self.isCapturing = true
            self.error = nil
        } catch {
            throw WindowCaptureError.streamCreationFailed(error)
        }
    }

    /// Stop capturing
    func stopCapture() async {
        if let stream = stream {
            do {
                try await stream.stopCapture()
            } catch {
                // Ignore stop errors
            }
            self.stream = nil
        }
        self.streamOutput = nil
        self.isCapturing = false
    }

    /// Update the stream configuration (e.g., when window moves)
    func updateStreamConfiguration() async throws {
        guard let stream = stream, let target = selectedTarget else { return }

        // Refresh targets to get updated window frame
        await refreshAvailableTargets()

        // Find the updated target
        if let updatedTarget = availableTargets.first(where: { $0.id == target.id }) {
            self.selectedTarget = updatedTarget
            self.currentWindowFrame = updatedTarget.frame

            // Update the filter if window-based
            if case .window(let window) = updatedTarget.type {
                let newFilter = SCContentFilter(desktopIndependentWindow: window)
                try await stream.updateContentFilter(newFilter)

                let config = SCStreamConfiguration()
                config.width = Int(window.frame.width) * captureScaleFactor
                config.height = Int(window.frame.height) * captureScaleFactor
                config.minimumFrameInterval = CMTime(value: 1, timescale: CMTimeScale(captureFrameRate))
                try await stream.updateConfiguration(config)
            }
        }
    }

    // MARK: - Private Methods

    private func processSampleBuffer(_ sampleBuffer: CMSampleBuffer) {
        guard sampleBuffer.isValid else { return }

        // Get sample buffer attachments
        guard let attachmentsArray = CMSampleBufferGetSampleAttachmentsArray(
            sampleBuffer,
            createIfNecessary: false
        ) as? [[SCStreamFrameInfo: Any]],
              let attachments = attachmentsArray.first else {
            return
        }

        // Check frame status
        guard let statusRawValue = attachments[.status] as? Int,
              let status = SCFrameStatus(rawValue: statusRawValue),
              status == .complete else {
            return
        }

        // Get the image buffer
        guard let imageBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else {
            return
        }

        // Create CGImage from the pixel buffer
        let ciImage = CIImage(cvPixelBuffer: imageBuffer)
        let context = CIContext(options: nil)

        guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
            return
        }

        // Call the frame handler
        onFrameCaptured?(cgImage, currentWindowFrame)
    }
}

// MARK: - Stream Output Handler

private final class CaptureStreamOutput: NSObject, SCStreamOutput, SCStreamDelegate {
    var onSampleBuffer: ((CMSampleBuffer) -> Void)?

    func stream(_ stream: SCStream, didOutputSampleBuffer sampleBuffer: CMSampleBuffer, of type: SCStreamOutputType) {
        guard type == .screen else { return }
        onSampleBuffer?(sampleBuffer)
    }

    func stream(_ stream: SCStream, didStopWithError error: Error) {
        print("Stream stopped with error: \(error.localizedDescription)")
    }
}
