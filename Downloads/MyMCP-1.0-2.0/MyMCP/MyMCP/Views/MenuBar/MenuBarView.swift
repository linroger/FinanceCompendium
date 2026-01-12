import SwiftUI

struct MenuBarView: View {
    @EnvironmentObject var appState: AppState
    @Environment(\.openWindow) private var openWindow
    @State private var isRefreshing = false

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Header
            headerSection

            Divider()

            // Servers list
            serversSection

            Divider()

            // Footer actions
            footerSection
        }
        .frame(width: 300)
    }

    private var headerSection: some View {
        HStack {
            Image(systemName: "server.rack")
                .foregroundStyle(.secondary)
            Text("MyMCP")
                .font(.headline)
            Spacer()

            Button(action: refresh) {
                if isRefreshing {
                    ProgressView()
                        .controlSize(.small)
                } else {
                    Image(systemName: "arrow.clockwise")
                }
            }
            .buttonStyle(.borderless)
            .disabled(isRefreshing)
            .help("Refresh all data")
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 10)
    }

    private var serversSection: some View {
        Group {
            if appState.installedServers.isEmpty {
                VStack(spacing: 8) {
                    Image(systemName: "tray")
                        .font(.largeTitle)
                        .foregroundStyle(.tertiary)
                    Text("No servers installed")
                        .foregroundStyle(.secondary)
                        .font(.subheadline)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 40)
            } else {
                ScrollView {
                    LazyVStack(alignment: .leading, spacing: 2) {
                        ForEach(appState.installedServers) { server in
                            MenuBarServerSection(server: server)
                        }
                    }
                    .padding(.vertical, 4)
                }
                .frame(maxHeight: 400)
            }
        }
    }

    private var footerSection: some View {
        HStack {
            Button(action: openMainWindow) {
                Label("Open MyMCP", systemImage: "macwindow")
            }
            .buttonStyle(.borderless)

            Spacer()

            Button(action: { NSApplication.shared.terminate(nil) }) {
                Text("Quit")
            }
            .buttonStyle(.borderless)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 10)
    }

    private func refresh() {
        isRefreshing = true
        Task {
            await appState.refreshAll()
            await MainActor.run {
                isRefreshing = false
            }
        }
    }

    private func openMainWindow() {
        openWindow(id: WindowID.main)
        NSApp.activate(ignoringOtherApps: true)
    }
}

// MARK: - Server Section

struct MenuBarServerSection: View {
    @EnvironmentObject var appState: AppState
    let server: UnifiedInstalledServer

    @State private var isExpanded = false

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Server header row
            Button(action: { withAnimation(.easeInOut(duration: 0.15)) { isExpanded.toggle() } }) {
                HStack(spacing: 8) {
                    Image(systemName: isExpanded ? "chevron.down" : "chevron.right")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .frame(width: 10)

                    Text(server.name)
                        .font(.system(.body, weight: .medium))
                        .lineLimit(1)

                    Spacer()

                    // Status indicator
                    statusIndicator
                }
                .contentShape(Rectangle())
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
            }
            .buttonStyle(.plain)

            // Expanded: show per-client toggles
            if isExpanded {
                VStack(spacing: 0) {
                    // Non-Claude Code clients
                    ForEach(server.allKnownNonClaudeCodeClients, id: \.self) { clientType in
                        MenuBarClientToggle(
                            server: server,
                            clientType: clientType
                        )
                    }

                    // Claude Code (expandable with scopes)
                    if server.hasClaudeCodeInstallations || server.hasDisabledClaudeCodeScopes {
                        MenuBarClientToggle(
                            server: server,
                            clientType: .claudeCode
                        )
                    }
                }
                .padding(.leading, 20)
                .padding(.bottom, 4)
            }
        }
        .background(isExpanded ? Color.primary.opacity(0.03) : Color.clear)
    }

    @ViewBuilder
    private var statusIndicator: some View {
        let enabledCount = server.enabledCount
        let totalCount = server.totalKnownCount

        if enabledCount == totalCount && totalCount > 0 {
            // All enabled
            Circle()
                .fill(.green)
                .frame(width: 8, height: 8)
        } else if enabledCount == 0 {
            // All disabled
            Circle()
                .fill(.red)
                .frame(width: 8, height: 8)
        } else {
            // Mixed state
            Circle()
                .fill(.orange)
                .frame(width: 8, height: 8)
        }
    }
}

// MARK: - Client Toggle

struct MenuBarClientToggle: View {
    @EnvironmentObject var appState: AppState
    let server: UnifiedInstalledServer
    let clientType: MCPClientType

    @State private var isLoading = false
    @State private var errorMessage: String?
    @State private var isClaudeCodeExpanded = false

    private var isEnabled: Bool {
        server.isEnabled(for: clientType)
    }

    var body: some View {
        if clientType == .claudeCode {
            claudeCodeSection
        } else {
            standardClientToggle
        }
    }

    // MARK: - Claude Code (expandable with per-scope toggles)

    private var claudeCodeSection: some View {
        VStack(spacing: 0) {
            // Header row with expand button
            Button(action: { withAnimation(.easeInOut(duration: 0.15)) { isClaudeCodeExpanded.toggle() } }) {
                HStack(spacing: 8) {
                    Image(systemName: isClaudeCodeExpanded ? "chevron.down" : "chevron.right")
                        .font(.system(size: 8))
                        .foregroundStyle(.tertiary)
                        .frame(width: 8)

                    Image(systemName: clientType.systemIconFallback)
                        .foregroundStyle(clientType.accentColor)
                        .frame(width: 16)

                    Text(clientType.displayName)
                        .font(.subheadline)
                        .foregroundStyle(isEnabled ? .primary : .secondary)

                    // Scope count
                    let totalScopes = server.allKnownClaudeCodeScopes.count
                    if totalScopes > 0 {
                        Text("(\(totalScopes) \(totalScopes == 1 ? "scope" : "scopes"))")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }

                    Spacer()

                    // Status indicator
                    claudeCodeStatusIndicator
                }
                .contentShape(Rectangle())
            }
            .buttonStyle(.plain)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(isEnabled ? Color.clear : Color.red.opacity(0.05))

            // Expanded: show per-scope toggles
            if isClaudeCodeExpanded {
                VStack(spacing: 0) {
                    ForEach(server.allKnownClaudeCodeScopes, id: \.self) { scope in
                        MenuBarScopeToggle(server: server, scope: scope)
                    }
                }
                .padding(.leading, 16)
            }
        }
    }

    @ViewBuilder
    private var claudeCodeStatusIndicator: some View {
        let enabledCount = server.enabledClaudeCodeScopeCount
        let totalCount = server.totalClaudeCodeScopeCount

        if enabledCount == totalCount && totalCount > 0 {
            Circle().fill(.green).frame(width: 8, height: 8)
        } else if enabledCount == 0 {
            Circle().fill(.red).frame(width: 8, height: 8)
        } else {
            Circle().fill(.orange).frame(width: 8, height: 8)
        }
    }

    // MARK: - Standard Client Toggle (non-Claude Code)

    private var standardClientToggle: some View {
        HStack(spacing: 8) {
            Image(systemName: clientType.systemIconFallback)
                .foregroundStyle(clientType.accentColor)
                .frame(width: 16)

            Text(clientType.displayName)
                .font(.subheadline)
                .foregroundStyle(isEnabled ? .primary : .secondary)

            Spacer()

            if isLoading {
                ProgressView()
                    .controlSize(.small)
            } else {
                Toggle("", isOn: Binding(
                    get: { isEnabled },
                    set: { toggleServer(enabled: $0) }
                ))
                .toggleStyle(.switch)
                .controlSize(.small)
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 6)
        .background(isEnabled ? Color.clear : Color.red.opacity(0.05))
        .help(isEnabled ? "Disable \(server.name) for \(clientType.displayName)" : "Enable \(server.name) for \(clientType.displayName)")
    }

    private func toggleServer(enabled: Bool) {
        isLoading = true
        errorMessage = nil

        Task {
            do {
                if enabled {
                    try await appState.enableServer(server.name, forClient: clientType)
                } else {
                    try await appState.disableServer(server.name, forClient: clientType)
                }
            } catch {
                MCPLogger.ui.error("Toggle failed: \(error.localizedDescription, privacy: .public)")
                await MainActor.run {
                    errorMessage = error.localizedDescription
                }
            }

            await MainActor.run {
                isLoading = false
            }
        }
    }
}

// MARK: - Claude Code Scope Toggle

struct MenuBarScopeToggle: View {
    @EnvironmentObject var appState: AppState
    let server: UnifiedInstalledServer
    let scope: ClaudeCodeScope

    @State private var isLoading = false

    private var isEnabled: Bool {
        server.claudeCodeScopes[scope] != nil
    }

    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: scope.systemIconName)
                .foregroundStyle(scope.color)
                .frame(width: 16)

            Text(scope.displayName)
                .font(.caption)
                .foregroundStyle(isEnabled ? .primary : .secondary)
                .lineLimit(1)

            Spacer()

            if isLoading {
                ProgressView()
                    .controlSize(.small)
            } else {
                Toggle("", isOn: Binding(
                    get: { isEnabled },
                    set: { toggleScope(enabled: $0) }
                ))
                .toggleStyle(.switch)
                .controlSize(.mini)
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 4)
        .background(isEnabled ? Color.clear : Color.red.opacity(0.05))
    }

    private func toggleScope(enabled: Bool) {
        isLoading = true
        Task {
            _ = await appState.toggleClaudeCodeScopeEnabled(
                server.name,
                enabled: enabled,
                scope: scope
            )
            await MainActor.run { isLoading = false }
        }
    }
}

#Preview {
    MenuBarView()
        .environmentObject(AppState())
}
