//
//  WindowPickerView.swift
//  UITranslator
//
//  Created by Roger Lin on 1/6/26.
//

import SwiftUI

/// View for selecting a window to capture
struct WindowPickerView: View {
    @Bindable var viewModel: TranslatorViewModel
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(spacing: 0) {
            // Header
            HStack {
                Text("Select Window")
                    .font(.headline)

                Spacer()

                Button {
                    Task {
                        await viewModel.refreshWindows()
                    }
                } label: {
                    Image(systemName: "arrow.clockwise")
                }
                .buttonStyle(.borderless)
                .help("Refresh window list")
            }
            .padding()
            .background(.ultraThinMaterial)

            Divider()

            // Window list
            ScrollView {
                LazyVStack(spacing: 8) {
                    ForEach(viewModel.availableWindows) { target in
                        WindowRow(
                            target: target,
                            isSelected: viewModel.selectedWindow?.id == target.id
                        ) {
                            viewModel.selectedWindow = target
                            dismiss()
                        }
                    }
                }
                .padding()
            }

            if viewModel.availableWindows.isEmpty {
                ContentUnavailableView {
                    Label("No Windows Found", systemImage: "macwindow")
                } description: {
                    Text("Make sure other applications are running and have visible windows.")
                } actions: {
                    Button("Refresh") {
                        Task {
                            await viewModel.refreshWindows()
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .frame(width: 400, height: 500)
        .task {
            await viewModel.refreshWindows()
        }
    }
}

// MARK: - Window Row

private struct WindowRow: View {
    let target: CaptureTarget
    let isSelected: Bool
    let onSelect: () -> Void

    var body: some View {
        Button(action: onSelect) {
            HStack(spacing: 12) {
                // App icon
                if let icon = target.icon {
                    Image(nsImage: icon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 32, height: 32)
                } else {
                    Image(systemName: "macwindow")
                        .font(.title2)
                        .frame(width: 32, height: 32)
                        .foregroundColor(.secondary)
                }

                // Window info
                VStack(alignment: .leading, spacing: 2) {
                    Text(target.displayName)
                        .font(.body)
                        .lineLimit(1)

                    if let appName = target.appName, target.title != appName {
                        Text(appName)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }

                    Text("\(Int(target.frame.width)) × \(Int(target.frame.height))")
                        .font(.caption2)
                        .foregroundStyle(.tertiary)
                }

                Spacer()

                if isSelected {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.accentColor)
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(isSelected ? Color.accentColor.opacity(0.1) : Color.clear)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(isSelected ? Color.accentColor : Color.clear, lineWidth: 1)
            )
        }
        .buttonStyle(.plain)
    }
}

// MARK: - Preview

#Preview {
    WindowPickerView(viewModel: TranslatorViewModel())
}
