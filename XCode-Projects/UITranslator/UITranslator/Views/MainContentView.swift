//
//  MainContentView.swift
//  UITranslator
//
//  Created by Roger Lin on 1/6/26.
//

import SwiftUI

/// Main content view for the UITranslator app
struct MainContentView: View {
    @State private var viewModel = TranslatorViewModel()
    @State private var showingWindowPicker = false
    @State private var showingSettings = false

    var body: some View {
        VStack(spacing: 0) {
            // Toolbar area
            toolbarView
                .padding()
                .background(.ultraThinMaterial)

            Divider()

            // Main content
            if !viewModel.hasScreenRecordingPermission {
                permissionRequiredView
            } else {
                mainContentArea
            }

            Divider()

            // Status bar
            statusBar
        }
        .frame(minWidth: 400, minHeight: 300)
        .sheet(isPresented: $showingWindowPicker) {
            WindowPickerView(viewModel: viewModel)
        }
        .sheet(isPresented: $showingSettings) {
            NavigationStack {
                SettingsView(viewModel: viewModel)
            }
        }
        .onDisappear {
            Task {
                await viewModel.cleanup()
            }
        }
    }

    // MARK: - Toolbar View

    private var toolbarView: some View {
        HStack {
            // Window selection button
            Button {
                showingWindowPicker = true
            } label: {
                HStack {
                    Image(systemName: "macwindow")
                    if let window = viewModel.selectedWindow {
                        Text(window.displayName)
                            .lineLimit(1)
                    } else {
                        Text("Select Window")
                    }
                }
            }
            .buttonStyle(.bordered)

            Spacer()

            // Language indicator
            HStack(spacing: 4) {
                Text(languageName(for: viewModel.sourceLanguage))
                    .font(.caption)
                Image(systemName: "arrow.right")
                    .font(.caption2)
                Text(languageName(for: viewModel.targetLanguage))
                    .font(.caption)
            }
            .foregroundColor(.secondary)

            Spacer()

            // Control buttons
            controlButtons
        }
    }

    private var controlButtons: some View {
        HStack(spacing: 12) {
            // Toggle overlay
            Button {
                viewModel.toggleOverlay()
            } label: {
                Image(systemName: viewModel.isOverlayVisible ? "eye.fill" : "eye.slash")
            }
            .buttonStyle(.borderless)
            .help(viewModel.isOverlayVisible ? "Hide overlay" : "Show overlay")

            // Settings
            Button {
                showingSettings = true
            } label: {
                Image(systemName: "gear")
            }
            .buttonStyle(.borderless)
            .help("Settings")

            // Start/Stop button
            startStopButton
        }
    }

    @ViewBuilder
    private var startStopButton: some View {
        switch viewModel.state {
        case .capturing:
            Button {
                Task {
                    await viewModel.stopCapture()
                }
            } label: {
                Label("Stop", systemImage: "stop.fill")
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)

        case .paused:
            Button {
                Task {
                    await viewModel.resumeCapture()
                }
            } label: {
                Label("Resume", systemImage: "play.fill")
            }
            .buttonStyle(.borderedProminent)

        default:
            Button {
                Task {
                    await viewModel.startCapture()
                }
            } label: {
                Label("Start", systemImage: "play.fill")
            }
            .buttonStyle(.borderedProminent)
            .disabled(viewModel.selectedWindow == nil)
        }
    }

    // MARK: - Permission View

    private var permissionRequiredView: some View {
        ContentUnavailableView {
            Label("Screen Recording Permission Required", systemImage: "lock.shield")
        } description: {
            Text("UITranslator needs Screen Recording permission to capture and translate text from other applications.")
        } actions: {
            VStack(spacing: 12) {
                Button("Request Permission") {
                    _ = viewModel.requestScreenRecordingPermission()
                }
                .buttonStyle(.borderedProminent)

                Button("Open System Settings") {
                    viewModel.openScreenRecordingSettings()
                }
                .buttonStyle(.bordered)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }

    // MARK: - Main Content

    private var mainContentArea: some View {
        VStack(spacing: 16) {
            switch viewModel.state {
            case .idle:
                idleStateView

            case .selectingWindow:
                ProgressView("Loading windows...")

            case .capturing:
                capturingStateView

            case .paused:
                pausedStateView

            case .error(let message):
                errorStateView(message: message)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }

    private var idleStateView: some View {
        VStack(spacing: 16) {
            Image(systemName: "text.magnifyingglass")
                .font(.system(size: 48))
                .foregroundColor(.secondary)

            Text("Select a window to start translating")
                .font(.headline)

            if viewModel.selectedWindow != nil {
                Text("Press Start to begin capturing")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            } else {
                Button("Select Window") {
                    showingWindowPicker = true
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }

    private var capturingStateView: some View {
        VStack(spacing: 16) {
            HStack(spacing: 8) {
                Circle()
                    .fill(.red)
                    .frame(width: 8, height: 8)
                Text("Capturing")
                    .foregroundColor(.secondary)
            }

            if let window = viewModel.selectedWindow {
                Text(window.displayName)
                    .font(.headline)
            }

            // Stats
            HStack(spacing: 24) {
                StatView(title: "Recognized", value: "\(viewModel.recognizedTextCount)")
                StatView(title: "Translated", value: "\(viewModel.translatedTextCount)")
                StatView(title: "Processing", value: String(format: "%.0fms", viewModel.lastProcessingTime * 1000))
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(.ultraThinMaterial)
            )
        }
    }

    private var pausedStateView: some View {
        VStack(spacing: 16) {
            Image(systemName: "pause.circle")
                .font(.system(size: 48))
                .foregroundColor(.orange)

            Text("Capture Paused")
                .font(.headline)

            Button("Resume") {
                Task {
                    await viewModel.resumeCapture()
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }

    private func errorStateView(message: String) -> some View {
        VStack(spacing: 16) {
            Image(systemName: "exclamationmark.triangle")
                .font(.system(size: 48))
                .foregroundColor(.red)

            Text("Error")
                .font(.headline)

            Text(message)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)

            Button("Try Again") {
                Task {
                    await viewModel.startCapture()
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }

    // MARK: - Status Bar

    private var statusBar: some View {
        HStack {
            // State indicator
            HStack(spacing: 6) {
                Circle()
                    .fill(stateColor)
                    .frame(width: 6, height: 6)
                Text(stateText)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            Spacer()

            // Error message
            if let error = viewModel.errorMessage {
                Text(error)
                    .font(.caption)
                    .foregroundColor(.red)
                    .lineLimit(1)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 6)
        .background(.ultraThinMaterial)
    }

    private var stateColor: Color {
        switch viewModel.state {
        case .capturing: return .green
        case .paused: return .orange
        case .error: return .red
        default: return .secondary
        }
    }

    private var stateText: String {
        switch viewModel.state {
        case .idle: return "Ready"
        case .selectingWindow: return "Selecting..."
        case .capturing: return "Capturing"
        case .paused: return "Paused"
        case .error: return "Error"
        }
    }

    private func languageName(for code: String) -> String {
        switch code {
        case "zh-Hans": return "Chinese"
        case "zh-Hant": return "Chinese (Trad)"
        case "en": return "English"
        case "ja": return "Japanese"
        case "ko": return "Korean"
        case "es": return "Spanish"
        case "fr": return "French"
        case "de": return "German"
        default: return code
        }
    }
}

// MARK: - Stat View

private struct StatView: View {
    let title: String
    let value: String

    var body: some View {
        VStack(spacing: 4) {
            Text(value)
                .font(.title2.monospacedDigit())
            Text(title)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

// MARK: - Preview

#Preview {
    MainContentView()
}
