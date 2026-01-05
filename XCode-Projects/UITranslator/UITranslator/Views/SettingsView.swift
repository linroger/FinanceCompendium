//
//  SettingsView.swift
//  UITranslator
//
//  Created by Roger Lin on 1/6/26.
//

import SwiftUI

/// Settings view for configuring translation options
struct SettingsView: View {
    @Bindable var viewModel: TranslatorViewModel
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        Form {
            Section("Language") {
                Picker("Source Language", selection: $viewModel.sourceLanguage) {
                    ForEach(TranslatorViewModel.sourceLanguageOptions, id: \.id) { option in
                        Text(option.name).tag(option.id)
                    }
                }

                Picker("Target Language", selection: $viewModel.targetLanguage) {
                    ForEach(TranslatorViewModel.targetLanguageOptions, id: \.id) { option in
                        Text(option.name).tag(option.id)
                    }
                }
            }

            Section("Display") {
                Toggle("Show Overlay", isOn: $viewModel.isOverlayVisible)
            }

            Section("Permissions") {
                HStack {
                    Text("Screen Recording")
                    Spacer()
                    if viewModel.hasScreenRecordingPermission {
                        Label("Granted", systemImage: "checkmark.circle.fill")
                            .foregroundColor(.green)
                    } else {
                        Button("Open Settings") {
                            viewModel.openScreenRecordingSettings()
                        }
                    }
                }
            }
        }
        .formStyle(.grouped)
        .frame(width: 350, height: 300)
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Done") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    SettingsView(viewModel: TranslatorViewModel())
}
