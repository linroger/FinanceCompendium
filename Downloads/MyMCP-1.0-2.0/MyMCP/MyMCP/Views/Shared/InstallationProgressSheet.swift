import SwiftUI

/// Sheet showing progress of server installation/uninstallation
struct InstallationProgressSheet: View {
    let title: String
    let serverName: String
    @Binding var steps: [InstallationStep]
    let onDismiss: () -> Void

    var isComplete: Bool {
        steps.allSatisfy { $0.status.isComplete }
    }

    var hasErrors: Bool {
        steps.contains { $0.status.isError }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            header
            Divider()
            stepsList
            Spacer()
            footer
        }
        .padding()
        .frame(minWidth: 450, minHeight: 200)
    }

    private var header: some View {
        HStack {
            Image(systemName: title == "Installing" ? "square.and.arrow.down" : "trash")
                .font(.title2)
                .foregroundStyle(title == "Installing" ? .blue : .red)

            VStack(alignment: .leading, spacing: 2) {
                Text("\(title) \(serverName)")
                    .font(.headline)

                if !isComplete {
                    Text("Please wait...")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                } else if hasErrors {
                    Text("Completed with errors")
                        .font(.caption)
                        .foregroundStyle(.orange)
                } else {
                    Text("Completed successfully")
                        .font(.caption)
                        .foregroundStyle(.green)
                }
            }

            Spacer()
        }
    }

    private var stepsList: some View {
        VStack(alignment: .leading, spacing: 12) {
            ForEach(steps) { step in
                stepRow(step)
            }
        }
    }

    private func stepRow(_ step: InstallationStep) -> some View {
        HStack(alignment: .top, spacing: 12) {
            statusIcon(for: step.status)
                .frame(width: 20)

            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Image(systemName: step.clientType.systemIconFallback)
                        .foregroundStyle(step.clientType.accentColor)
                    Text(step.clientType.displayName)
                        .fontWeight(.medium)
                }

                Text(step.configPath.path)
                    .font(.system(.caption, design: .monospaced))
                    .foregroundStyle(.secondary)
                    .lineLimit(1)
                    .truncationMode(.middle)

                if let message = step.message {
                    Text(message)
                        .font(.caption)
                        .foregroundStyle(step.status.isError ? .red : .green)
                }
            }

            Spacer()
        }
        .padding(.vertical, 4)
    }

    @ViewBuilder
    private func statusIcon(for status: InstallationStep.StepStatus) -> some View {
        switch status {
        case .pending:
            Image(systemName: "circle")
                .foregroundStyle(.secondary)
        case .inProgress:
            ProgressView()
                .controlSize(.small)
        case .success:
            Image(systemName: "checkmark.circle.fill")
                .foregroundStyle(.green)
        case .failed:
            Image(systemName: "xmark.circle.fill")
                .foregroundStyle(.red)
        }
    }

    private var footer: some View {
        HStack {
            Spacer()
            Button(isComplete ? "Done" : "Cancel") {
                onDismiss()
            }
            .keyboardShortcut(isComplete ? .defaultAction : .cancelAction)
            .disabled(!isComplete)
        }
    }
}

#Preview {
    InstallationProgressSheet(
        title: "Installing",
        serverName: "filesystem-server",
        steps: .constant([
            InstallationStep(
                clientType: .claudeDesktop,
                configPath: URL(fileURLWithPath: "/Users/demo/Library/Application Support/Claude/claude_desktop_config.json"),
                status: .success,
                message: "Server added to config"
            ),
            InstallationStep(
                clientType: .vscode,
                configPath: URL(fileURLWithPath: "/Users/demo/Library/Application Support/Code/User/settings.json"),
                status: .inProgress
            ),
            InstallationStep(
                clientType: .cursor,
                configPath: URL(fileURLWithPath: "/Users/demo/.cursor/mcp.json"),
                status: .pending
            )
        ]),
        onDismiss: {}
    )
}
