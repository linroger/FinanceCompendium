import SwiftUI

/// A card showing a single Claude Code scope configuration with enable/disable toggle and actions
struct ClaudeCodeScopeCard: View {
    @EnvironmentObject var appState: AppState

    let scope: ClaudeCodeScope
    let config: InstalledServerConfig
    let serverName: String
    let isEnabled: Bool
    let isDisabled: Bool

    @State private var isExpanded = false
    @State private var isToggling = false
    @State private var showUninstallConfirmation = false

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Header row
            HStack(spacing: 8) {
                ScopeBadge(scope: scope, showProjectName: true)

                Spacer()

                if isToggling {
                    ProgressView()
                        .controlSize(.small)
                } else {
                    Toggle("", isOn: Binding(
                        get: { isEnabled },
                        set: { newValue in
                            toggleScope(enabled: newValue)
                        }
                    ))
                    .toggleStyle(.switch)
                    .controlSize(.small)
                    .disabled(isDisabled && !isEnabled)
                }

                Button {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        isExpanded.toggle()
                    }
                } label: {
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                .buttonStyle(.plain)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 10)

            // Expanded content
            if isExpanded {
                Divider()

                VStack(alignment: .leading, spacing: 10) {
                    // Project path for non-global scopes
                    if let projectPath = scope.projectPath {
                        InfoRow(label: "Project", value: projectPath, isMonospaced: true)
                    }

                    // Config file location
                    InfoRow(label: "Config", value: scope.configFileDescription, isMonospaced: false)

                    // Command
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Command")
                            .font(.caption)
                            .foregroundStyle(.secondary)

                        Text(commandString)
                            .font(.system(.caption, design: .monospaced))
                            .lineLimit(2)
                            .padding(6)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color(nsColor: .textBackgroundColor))
                            .clipShape(RoundedRectangle(cornerRadius: 4))
                    }

                    // Environment variables
                    if let env = config.env, !env.isEmpty {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Environment")
                                .font(.caption)
                                .foregroundStyle(.secondary)

                            ForEach(Array(env.keys.sorted()), id: \.self) { key in
                                HStack(spacing: 4) {
                                    Text(key)
                                        .font(.system(.caption, design: .monospaced))
                                    Text("=")
                                        .font(.caption)
                                        .foregroundStyle(.secondary)
                                    Text(String(repeating: "*", count: 8))
                                        .font(.system(.caption, design: .monospaced))
                                        .foregroundStyle(.secondary)
                                }
                            }
                        }
                    }

                    // Actions
                    HStack {
                        Spacer()

                        Button {
                            showUninstallConfirmation = true
                        } label: {
                            Label("Remove", systemImage: "trash")
                                .font(.caption)
                        }
                        .buttonStyle(.borderless)
                        .foregroundStyle(.red)
                    }
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 10)
            }
        }
        .background(cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .strokeBorder(Color.secondary.opacity(0.2), lineWidth: 1)
        )
        .opacity(isEnabled ? 1.0 : 0.7)
        .confirmationDialog(
            "Remove \(serverName) from \(scope.displayName)?",
            isPresented: $showUninstallConfirmation,
            titleVisibility: .visible
        ) {
            Button("Remove", role: .destructive) {
                uninstallScope()
            }
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("This will remove the server from \(scope.configFileDescription).")
        }
    }

    private var commandString: String {
        ([config.command] + config.args).joined(separator: " ")
    }

    private var cardBackground: Color {
        Color(nsColor: .controlBackgroundColor)
    }

    private func toggleScope(enabled: Bool) {
        isToggling = true
        Task {
            let success = await appState.toggleClaudeCodeScopeEnabled(
                serverName,
                enabled: enabled,
                scope: scope
            )
            await MainActor.run {
                isToggling = false
                if !success {
                    // Show error feedback
                }
            }
        }
    }

    private func uninstallScope() {
        Task {
            do {
                try await appState.uninstallServer(serverName, fromClient: .claudeCode, claudeCodeScope: scope)
            } catch {
                MCPLogger.ui.error("Failed to uninstall scope: \(error.localizedDescription, privacy: .public)")
            }
        }
    }
}

/// A simple info row with label and value
private struct InfoRow: View {
    let label: String
    let value: String
    var isMonospaced: Bool = false

    var body: some View {
        HStack(alignment: .top, spacing: 8) {
            Text(label)
                .font(.caption)
                .foregroundStyle(.secondary)
                .frame(width: 50, alignment: .trailing)

            Text(value)
                .font(isMonospaced ? .system(.caption, design: .monospaced) : .caption)
                .lineLimit(1)
                .truncationMode(.middle)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    VStack(spacing: 16) {
        ClaudeCodeScopeCard(
            scope: .global,
            config: InstalledServerConfig(
                name: "xcodebuildmcp",
                command: "npx",
                args: ["xcodebuildmcp@latest"],
                env: ["API_KEY": "secret"]
            ),
            serverName: "xcodebuildmcp",
            isEnabled: true,
            isDisabled: false
        )

        ClaudeCodeScopeCard(
            scope: .local(projectPath: "/Users/home/Documents/GitHub/MyApp"),
            config: InstalledServerConfig(
                name: "xcodebuildmcp",
                command: "npx",
                args: ["xcodebuildmcp@latest"]
            ),
            serverName: "xcodebuildmcp",
            isEnabled: false,
            isDisabled: true
        )
    }
    .padding()
    .frame(width: 400)
    .environmentObject(AppState())
}
