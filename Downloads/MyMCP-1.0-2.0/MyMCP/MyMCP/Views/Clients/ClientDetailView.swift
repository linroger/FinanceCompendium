import SwiftUI

struct ClientDetailView: View {
    @EnvironmentObject var appState: AppState
    let client: MCPClient

    // Uninstall flow state
    @State private var serverToUninstall: InstalledServerConfig?
    @State private var showUninstallConfirm = false
    @State private var showProgressSheet = false
    @State private var uninstallSteps: [InstallationStep] = []

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                if let configPath = client.configPath {
                    configFileSection(configPath)
                }

                installedServersSection
            }
            .padding()
        }
        .navigationTitle(client.type.displayName)
        .confirmationDialog(
            "Uninstall Server",
            isPresented: $showUninstallConfirm,
            presenting: serverToUninstall
        ) { config in
            Button("Uninstall from \(client.type.displayName)", role: .destructive) {
                performUninstall(config)
            }
            Button("Cancel", role: .cancel) {}
        } message: { config in
            Text("Are you sure you want to uninstall \"\(config.name)\" from \(client.type.displayName)?")
        }
        .sheet(isPresented: $showProgressSheet) {
            InstallationProgressSheet(
                title: "Uninstalling",
                serverName: serverToUninstall?.name ?? "",
                steps: $uninstallSteps,
                onDismiss: { showProgressSheet = false }
            )
        }
    }

    private func configFileSection(_ configPath: URL) -> some View {
        let configExists = FileManager.default.fileExists(atPath: configPath.path)

        return VStack(alignment: .leading, spacing: 12) {
            Text("Configuration File")
                .font(.headline)

            VStack(alignment: .leading, spacing: 8) {
                Text(configPath.path)
                    .font(.system(.body, design: .monospaced))
                    .foregroundStyle(.secondary)
                    .textSelection(.enabled)
                    .lineLimit(2)

                HStack(spacing: 12) {
                    if configExists {
                        Button(action: {
                            NSWorkspace.shared.selectFile(
                                configPath.path,
                                inFileViewerRootedAtPath: configPath.deletingLastPathComponent().path
                            )
                        }) {
                            Label("Show in Finder", systemImage: "folder")
                        }
                        .buttonStyle(.bordered)

                        Button(action: {
                            NSWorkspace.shared.open(configPath)
                        }) {
                            Label("Edit Config", systemImage: "pencil")
                        }
                        .buttonStyle(.bordered)
                    } else {
                        Button(action: {
                            createConfigFile(at: configPath)
                        }) {
                            Label("Create Config", systemImage: "plus")
                        }
                        .buttonStyle(.bordered)
                    }

                    CopyButton(configPath.path, label: "Copy Path")
                        .buttonStyle(.borderless)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(nsColor: .controlBackgroundColor))
            .cornerRadius(8)
        }
    }

    private func createConfigFile(at path: URL) {
        do {
            let directory = path.deletingLastPathComponent()
            try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true)
            try "{}".write(to: path, atomically: true, encoding: .utf8)
            NSWorkspace.shared.open(path)
        } catch {
            MCPLogger.ui.error("Failed to create config at \(path.path, privacy: .public): \(error.localizedDescription, privacy: .public)")
        }
    }

    /// Disabled servers for this client
    private var disabledServersForClient: [DisabledServerEntry] {
        appState.disabledServersStore.entries.filter { $0.clientType == client.type }
    }

    /// Grouped servers for Claude Code (groups by base name with all scopes)
    private var groupedClaudeCodeServers: [GroupedClaudeCodeServer] {
        guard client.type == .claudeCode else { return [] }

        var grouped: [String: GroupedClaudeCodeServer] = [:]

        // Group enabled servers by base name
        for config in client.installedServers.values {
            let baseName = config.name
            if grouped[baseName] == nil {
                grouped[baseName] = GroupedClaudeCodeServer(
                    id: baseName,
                    baseName: baseName,
                    enabledScopes: [:],
                    disabledScopes: [:]
                )
            }
            if let scope = config.claudeCodeScope {
                grouped[baseName]!.enabledScopes[scope] = config
            }
        }

        // Add disabled scopes
        for entry in disabledServersForClient {
            if let scope = entry.claudeCodeScope {
                if grouped[entry.serverName] == nil {
                    grouped[entry.serverName] = GroupedClaudeCodeServer(
                        id: entry.serverName,
                        baseName: entry.serverName,
                        enabledScopes: [:],
                        disabledScopes: [:]
                    )
                }
                grouped[entry.serverName]!.disabledScopes[scope] = entry
            }
        }

        return Array(grouped.values).sorted { $0.baseName < $1.baseName }
    }

    private var installedServersSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Header with server counts
            serversSectionHeader

            let hasAnyServers = !client.installedServers.isEmpty || !disabledServersForClient.isEmpty

            if !hasAnyServers {
                VStack(spacing: 12) {
                    Image(systemName: "tray")
                        .font(.largeTitle)
                        .foregroundStyle(.tertiary)

                    Text("No servers installed")
                        .foregroundStyle(.secondary)

                    Text("Browse the Registry to discover and install MCP servers.")
                        .font(.caption)
                        .foregroundStyle(.tertiary)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 32)
                .cardStyle(padding: 0)
            } else if client.type == .claudeCode {
                // Claude Code: Grouped display with scope badges
                ForEach(groupedClaudeCodeServers) { grouped in
                    ClientGroupedServerRow(
                        groupedServer: grouped,
                        registryServer: unifiedServer(for: grouped.baseName)?.registryServer,
                        onViewInRegistry: {
                            if let unified = unifiedServer(for: grouped.baseName) {
                                if let repoURL = unified.registryServer?.repository?.url,
                                   !repoURL.isEmpty,
                                   let url = URL(string: repoURL) {
                                    NSWorkspace.shared.open(url)
                                } else {
                                    appState.navigateToRegistryEntry(for: unified)
                                }
                            }
                        }
                    )
                }
            } else {
                // Other clients: Original flat list display
                // Enabled servers
                ForEach(Array(client.installedServers.values.sorted(by: { $0.name < $1.name })), id: \.name) { config in
                    ClientServerRow(
                        config: config,
                        clientType: client.type,
                        registryServer: unifiedServer(for: config.name)?.registryServer,
                        isEnabled: true,
                        onViewInRegistry: {
                            if let unified = unifiedServer(for: config.name) {
                                if let repoURL = unified.registryServer?.repository?.url,
                                   !repoURL.isEmpty,
                                   let url = URL(string: repoURL) {
                                    NSWorkspace.shared.open(url)
                                } else {
                                    appState.navigateToRegistryEntry(for: unified)
                                }
                            }
                        },
                        onUninstall: {
                            serverToUninstall = config
                            showUninstallConfirm = true
                        }
                    )
                }

                // Disabled servers
                ForEach(disabledServersForClient.sorted(by: { $0.serverName < $1.serverName })) { entry in
                    ClientServerRow(
                        config: entry.config.toInstalledServerConfig(name: entry.serverName),
                        clientType: client.type,
                        registryServer: unifiedServer(for: entry.serverName)?.registryServer,
                        isEnabled: false,
                        onViewInRegistry: {
                            if let unified = unifiedServer(for: entry.serverName) {
                                if let repoURL = unified.registryServer?.repository?.url,
                                   !repoURL.isEmpty,
                                   let url = URL(string: repoURL) {
                                    NSWorkspace.shared.open(url)
                                } else {
                                    appState.navigateToRegistryEntry(for: unified)
                                }
                            }
                        },
                        onUninstall: {}  // Can't uninstall disabled servers
                    )
                }
            }
        }
    }

    /// Header for the servers section with appropriate counts
    private var serversSectionHeader: some View {
        HStack {
            Text("Servers")
                .font(.headline)

            if client.type == .claudeCode {
                // Claude Code: Show disabled scopes count
                let disabledScopeCount = groupedClaudeCodeServers.reduce(0) { $0 + $1.disabledScopes.count }
                if disabledScopeCount > 0 {
                    Text("(\(disabledScopeCount) scope\(disabledScopeCount == 1 ? "" : "s") disabled)")
                        .font(.caption)
                        .foregroundStyle(.orange)
                }

                Spacer()

                // Show grouped server count
                let enabledCount = groupedClaudeCodeServers.count
                Text("\(enabledCount) server\(enabledCount == 1 ? "" : "s")")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            } else {
                // Other clients: Original count display
                if !disabledServersForClient.isEmpty {
                    Text("(\(disabledServersForClient.count) disabled)")
                        .font(.caption)
                        .foregroundStyle(.orange)
                }

                Spacer()

                Text("\(client.installedServers.count) enabled")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
    }

    // MARK: - Registry Server Lookup

    private func unifiedServer(for serverName: String) -> UnifiedInstalledServer? {
        appState.installedServers.first { $0.name == serverName }
    }

    // MARK: - Uninstall Actions

    private func performUninstall(_ config: InstalledServerConfig) {
        guard let configPath = client.configPath else { return }

        uninstallSteps = [InstallationStep(clientType: client.type, configPath: configPath)]
        showProgressSheet = true

        Task {
            var steps = uninstallSteps
            steps[0].status = .inProgress
            steps[0].message = "Removing from \(client.type.displayName)..."
            uninstallSteps = steps

            do {
                // Pass claudeCodeScope if this is a Claude Code server
                try await appState.uninstallServer(config.name, fromClient: client.type, claudeCodeScope: config.claudeCodeScope)
                var steps = uninstallSteps
                steps[0].status = .success
                steps[0].message = "Removed successfully"
                uninstallSteps = steps
            } catch {
                var steps = uninstallSteps
                steps[0].status = .failed(error.localizedDescription)
                steps[0].message = error.localizedDescription
                uninstallSteps = steps
            }

            serverToUninstall = nil
        }
    }
}

// MARK: - Grouped Claude Code Server Model

struct GroupedClaudeCodeServer: Identifiable {
    let id: String  // base server name
    let baseName: String
    var enabledScopes: [ClaudeCodeScope: InstalledServerConfig]
    var disabledScopes: [ClaudeCodeScope: DisabledServerEntry]

    var allScopes: [ClaudeCodeScope] {
        Array(Set(enabledScopes.keys).union(disabledScopes.keys)).sorted()
    }

    var hasMixedState: Bool {
        !enabledScopes.isEmpty && !disabledScopes.isEmpty
    }

    var hasAllDisabled: Bool {
        enabledScopes.isEmpty && !disabledScopes.isEmpty
    }
}

// MARK: - Client Server Row

struct ClientServerRow: View {
    @EnvironmentObject var appState: AppState
    let config: InstalledServerConfig
    let clientType: MCPClientType
    let registryServer: MCPServer?
    let isEnabled: Bool
    let onViewInRegistry: (() -> Void)?
    let onUninstall: () -> Void

    @State private var isToggling = false

    var body: some View {
        HStack {
            Image(systemName: "server.rack")
                .foregroundStyle(isEnabled ? .secondary : .tertiary)

            VStack(alignment: .leading, spacing: 2) {
                HStack(spacing: 6) {
                    Text(config.name)
                        .font(.headline)
                        .foregroundStyle(isEnabled ? .primary : .secondary)

                    // Transport badge
                    if let transport = registryServer?.uniqueTransportTypes.first {
                        TransportTypeBadge(type: transport)
                    }

                    if !isEnabled {
                        DisabledBadge()
                    }
                }

                // Description from registry
                if let description = registryServer?.description {
                    Text(description)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .lineLimit(2)
                }
            }

            Spacer()

            // Action buttons
            HStack(spacing: 8) {
                // Enable/Disable toggle
                if isToggling {
                    ProgressView()
                        .controlSize(.small)
                } else {
                    Toggle("", isOn: Binding(
                        get: { isEnabled },
                        set: { toggleEnabled($0) }
                    ))
                    .toggleStyle(.switch)
                    .controlSize(.small)
                    .help(isEnabled ? "Disable" : "Enable")
                }

                // Open repository or view in Registry
                if registryServer != nil, let onViewInRegistry {
                    Button(action: onViewInRegistry) {
                        Image(systemName: "globe")
                    }
                    .buttonStyle(.borderless)
                    .help(registryServer?.repository?.url != nil ? "Open Repository" : "View in Registry")
                }

                // Uninstall button (only for enabled servers)
                if isEnabled {
                    Button(action: onUninstall) {
                        Image(systemName: "trash")
                    }
                    .buttonStyle(.borderless)
                    .foregroundStyle(.red)
                    .help("Uninstall from \(clientType.displayName)")
                }
            }
        }
        .padding()
        .background(Color(nsColor: .controlBackgroundColor))
        .cornerRadius(8)
        .opacity(isEnabled ? 1.0 : 0.7)
    }

    private func toggleEnabled(_ newValue: Bool) {
        isToggling = true
        Task {
            _ = await appState.toggleServerEnabled(config.name, enabled: newValue, forClient: clientType)
            await MainActor.run { isToggling = false }
        }
    }
}

// MARK: - Client Grouped Server Row (Claude Code with scopes)

struct ClientGroupedServerRow: View {
    @EnvironmentObject var appState: AppState
    let groupedServer: GroupedClaudeCodeServer
    let registryServer: MCPServer?
    let onViewInRegistry: (() -> Void)?

    @State private var isExpanded = false

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Header row with scope badges
            headerRow

            // Expanded: per-scope toggles
            if isExpanded {
                Divider()
                scopeTogglesSection
            }
        }
        .background(Color(nsColor: .controlBackgroundColor))
        .cornerRadius(8)
        .opacity(groupedServer.hasAllDisabled ? 0.7 : 1.0)
    }

    private var headerRow: some View {
        HStack {
            Image(systemName: "server.rack")
                .foregroundStyle(groupedServer.hasAllDisabled ? .tertiary : .secondary)

            VStack(alignment: .leading, spacing: 2) {
                HStack(spacing: 6) {
                    Text(groupedServer.baseName)
                        .font(.headline)
                        .foregroundStyle(groupedServer.hasAllDisabled ? .secondary : .primary)

                    if let transport = registryServer?.uniqueTransportTypes.first {
                        TransportTypeBadge(type: transport)
                    }

                    ClaudeCodeScopeBadgeStack(scopes: groupedServer.allScopes)

                    // Mixed state indicator
                    if groupedServer.hasMixedState {
                        Circle()
                            .fill(.orange)
                            .frame(width: 6, height: 6)
                            .help("Some scopes disabled")
                    }
                }

                if let description = registryServer?.description {
                    Text(description)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .lineLimit(2)
                }
            }

            Spacer()

            // View in registry button
            if registryServer != nil, let onViewInRegistry {
                Button(action: onViewInRegistry) {
                    Image(systemName: "globe")
                }
                .buttonStyle(.borderless)
                .help(registryServer?.repository?.url != nil ? "Open Repository" : "View in Registry")
            }

            // Expand/collapse chevron
            Button(action: { withAnimation(.easeInOut(duration: 0.2)) { isExpanded.toggle() } }) {
                Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
            }
            .buttonStyle(.borderless)
            .help(isExpanded ? "Collapse" : "Show scope controls")
        }
        .padding()
        .contentShape(Rectangle())
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.2)) { isExpanded.toggle() }
        }
    }

    private var scopeTogglesSection: some View {
        VStack(spacing: 0) {
            ForEach(groupedServer.allScopes, id: \.self) { scope in
                ClientScopeToggleRow(
                    serverName: groupedServer.baseName,
                    scope: scope,
                    config: groupedServer.enabledScopes[scope],
                    disabledEntry: groupedServer.disabledScopes[scope]
                )
                if scope != groupedServer.allScopes.last {
                    Divider().padding(.leading, 40)
                }
            }
        }
    }
}

// MARK: - Client Scope Toggle Row

struct ClientScopeToggleRow: View {
    @EnvironmentObject var appState: AppState
    let serverName: String
    let scope: ClaudeCodeScope
    let config: InstalledServerConfig?
    let disabledEntry: DisabledServerEntry?

    @State private var isToggling = false
    @State private var showUninstallConfirm = false

    private var isEnabled: Bool { config != nil }

    var body: some View {
        HStack(spacing: 12) {
            ScopeBadge(scope: scope, showProjectName: true, size: .regular)

            Spacer()

            if isToggling {
                ProgressView()
                    .controlSize(.small)
            } else {
                Toggle("", isOn: Binding(
                    get: { isEnabled },
                    set: { toggleScope(enabled: $0) }
                ))
                .toggleStyle(.switch)
                .controlSize(.small)
                .help(isEnabled ? "Disable" : "Enable")
            }

            // Uninstall button (only when enabled)
            if isEnabled {
                Button(action: { showUninstallConfirm = true }) {
                    Image(systemName: "trash")
                }
                .buttonStyle(.borderless)
                .foregroundStyle(.red)
                .help("Uninstall from \(scope.displayName)")
            } else {
                // Placeholder to keep alignment
                Color.clear.frame(width: 20)
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .opacity(isEnabled ? 1.0 : 0.7)
        .confirmationDialog(
            "Uninstall Server",
            isPresented: $showUninstallConfirm
        ) {
            Button("Uninstall from \(scope.displayName)", role: .destructive) {
                performUninstall()
            }
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Remove \"\(serverName)\" from \(scope.displayName)?")
        }
    }

    private func toggleScope(enabled: Bool) {
        isToggling = true
        Task {
            _ = await appState.toggleClaudeCodeScopeEnabled(
                serverName,
                enabled: enabled,
                scope: scope
            )
            await MainActor.run { isToggling = false }
        }
    }

    private func performUninstall() {
        Task {
            try? await appState.uninstallServer(
                serverName,
                fromClient: .claudeCode,
                claudeCodeScope: scope
            )
        }
    }
}

#Preview {
    ClientDetailView(client: MCPClient(
        type: .claudeDesktop,
        configPath: URL(fileURLWithPath: "/Users/demo/Library/Application Support/Claude/claude_desktop_config.json"),
        isInstalled: true,
        installedServers: [
            "filesystem": InstalledServerConfig(
                name: "filesystem",
                command: "npx",
                args: ["-y", "@modelcontextprotocol/server-filesystem"]
            ),
            "weather": InstalledServerConfig(
                name: "weather",
                command: "uvx",
                args: ["mcp-server-weather"],
                env: ["API_KEY": "secret"]
            )
        ]
    ))
    .environmentObject(AppState())
    .frame(width: 600, height: 700)
}
