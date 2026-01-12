import SwiftUI

struct InstalledServerRow: View {
    @EnvironmentObject var appState: AppState
    let server: UnifiedInstalledServer
    let onUninstall: (UnifiedInstalledServer) -> Void

    var body: some View {
        HStack(spacing: 12) {
            // Icon with status indicator
            ZStack(alignment: .bottomTrailing) {
                ServerIconView(url: server.registryServer?.iconURL, size: 36)

                // Status indicator dot
                if server.hasDisabledClients || server.clients.isEmpty {
                    statusIndicator
                        .offset(x: 4, y: 4)
                }
            }

            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 6) {
                    Text(server.name)
                        .font(.headline)
                        .lineLimit(1)

                    // Transport type badges
                    ForEach(server.registryServer?.uniqueTransportTypes ?? [], id: \.self) { transport in
                        TransportTypeBadge(type: transport)
                    }

                    // Claude Code scope indicators
                    if server.hasClaudeCodeInstallations {
                        claudeCodeScopeIndicators
                    }

                    // Show disabled count if any (non-Claude Code clients)
                    if server.hasDisabledClients {
                        Text("(\(server.disabledClients.count) disabled)")
                            .font(.caption)
                            .foregroundStyle(.orange)
                    }
                }

                // Description from registry, fallback to command
                if let description = server.registryServer?.description {
                    Text(description)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .lineLimit(2)
                } else if let command = server.primaryConfig?.command,
                          let firstArg = server.primaryConfig?.args.first {
                    Text("\(command) \(firstArg)")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .lineLimit(1)
                }
            }

            Spacer()

            // Action buttons
            HStack(spacing: 8) {
                // Open repository or view in Registry (only if has registry entry)
                if server.registryServer != nil {
                    Button(action: {
                        if let repoURL = server.registryServer?.repository?.url,
                           !repoURL.isEmpty,
                           let url = URL(string: repoURL) {
                            NSWorkspace.shared.open(url)
                        } else {
                            appState.navigateToRegistryEntry(for: server)
                        }
                    }) {
                        Image(systemName: "globe")
                    }
                    .buttonStyle(.borderless)
                    .help(server.registryServer?.repository?.url != nil ? "Open Repository" : "View in Registry")
                }

                // Uninstall button
                Button(action: {
                    onUninstall(server)
                }) {
                    Image(systemName: "trash")
                }
                .buttonStyle(.borderless)
                .foregroundStyle(.red)
                .help("Uninstall")
            }

            // Client badges
            ClientBadgeStack(clientTypes: server.installedClientTypes, size: 20)
        }
        .padding(.vertical, 4)
    }

    @ViewBuilder
    private var statusIndicator: some View {
        let enabledCount = server.enabledCount
        let totalCount = server.totalKnownCount

        Circle()
            .fill(statusColor(enabledCount: enabledCount, totalCount: totalCount))
            .frame(width: 10, height: 10)
            .overlay(
                Circle()
                    .stroke(Color(nsColor: .windowBackgroundColor), lineWidth: 2)
            )
    }

    private func statusColor(enabledCount: Int, totalCount: Int) -> Color {
        if enabledCount == totalCount && totalCount > 0 {
            return .green
        } else if enabledCount == 0 {
            return .red
        } else {
            return .orange
        }
    }

    @ViewBuilder
    private var claudeCodeScopeIndicators: some View {
        ClaudeCodeScopeBadgeStack(scopes: server.sortedClaudeCodeScopes)
    }
}

#Preview {
    List {
        InstalledServerRow(
            server: UnifiedInstalledServer(
                id: "filesystem",
                name: "filesystem",
                clients: [
                    .claudeDesktop: InstalledServerConfig(
                        name: "filesystem",
                        command: "npx",
                        args: ["-y", "@modelcontextprotocol/server-filesystem"]
                    )
                ],
                registryServer: nil
            ),
            onUninstall: { _ in }
        )

        InstalledServerRow(
            server: UnifiedInstalledServer(
                id: "weather",
                name: "weather",
                clients: [
                    .claudeDesktop: InstalledServerConfig(
                        name: "weather",
                        command: "uvx",
                        args: ["mcp-server-weather"]
                    ),
                    .cursor: InstalledServerConfig(
                        name: "weather",
                        command: "uvx",
                        args: ["mcp-server-weather"]
                    )
                ],
                registryServer: nil,
                disabledClients: [.windsurf]
            ),
            onUninstall: { _ in }
        )
    }
    .environmentObject(AppState())
    .frame(width: 400, height: 200)
}
