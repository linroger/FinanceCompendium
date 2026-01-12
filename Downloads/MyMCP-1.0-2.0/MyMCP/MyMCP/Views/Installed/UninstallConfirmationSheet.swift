import SwiftUI

struct UninstallConfirmationSheet: View {
    let server: UnifiedInstalledServer?
    @Binding var selectedClients: Set<MCPClientType>
    let onConfirm: () -> Void
    let onCancel: () -> Void

    var body: some View {
        VStack(spacing: 16) {
            // Header
            Image(systemName: "trash.circle.fill")
                .font(.system(size: 48))
                .foregroundStyle(.red)

            Text("Uninstall \(server?.name ?? "Server")?")
                .font(.headline)

            Text("Select which clients to uninstall from:")
                .font(.subheadline)
                .foregroundStyle(.secondary)

            // Client selection
            if let server = server {
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(server.installedClientTypes, id: \.self) { clientType in
                        ClientTypeToggle(
                            clientType: clientType,
                            isSelected: Binding(
                                get: { selectedClients.contains(clientType) },
                                set: { isSelected in
                                    if isSelected {
                                        selectedClients.insert(clientType)
                                    } else {
                                        selectedClients.remove(clientType)
                                    }
                                }
                            )
                        )
                    }
                }
                .padding(.vertical, 8)
            }

            Text("You may need to restart the \(selectedClients.count == 1 ? "client" : "clients") for changes to take effect.")
                .font(.caption)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)

            // Action buttons
            HStack {
                Button("Cancel", action: onCancel)
                    .keyboardShortcut(.cancelAction)

                Spacer()

                Button("Uninstall", role: .destructive, action: onConfirm)
                    .keyboardShortcut(.defaultAction)
                    .disabled(selectedClients.isEmpty)
            }
        }
        .padding()
        .frame(width: 320)
    }
}

#Preview {
    UninstallConfirmationSheet(
        server: UnifiedInstalledServer(
            id: "filesystem",
            name: "filesystem",
            clients: [
                .claudeDesktop: InstalledServerConfig(
                    name: "filesystem",
                    command: "npx",
                    args: ["-y", "@modelcontextprotocol/server-filesystem"]
                ),
                .cursor: InstalledServerConfig(
                    name: "filesystem",
                    command: "npx",
                    args: ["-y", "@modelcontextprotocol/server-filesystem"]
                )
            ],
            registryServer: nil
        ),
        selectedClients: .constant([.claudeDesktop, .cursor]),
        onConfirm: {},
        onCancel: {}
    )
}
