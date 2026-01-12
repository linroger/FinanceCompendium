import SwiftUI

struct ServerConfigView: View {
    @EnvironmentObject var appState: AppState
    let server: UnifiedInstalledServer

    @State private var showUninstallConfirm = false
    @State private var clientToUninstall: MCPClientType?
    @State private var isUninstalling = false
    @State private var showProgressSheet = false
    @State private var uninstallSteps: [InstallationStep] = []

    // Install to more clients state
    @State private var selectedClientsForInstall: Set<MCPClientType> = []
    @State private var showInstallToMoreSheet = false
    @State private var installSteps: [InstallationStep] = []

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                header

                Divider()

                statusSection

                clientConfigsSection

                // Claude Code scopes section - show if there are any Claude Code installations
                if server.hasClaudeCodeInstallations {
                    claudeCodeScopesSection
                }

                // Only show "Install to More Clients" if there are available clients
                if !availableClients.isEmpty {
                    installToMoreSection
                }
            }
            .padding()
        }
        .navigationTitle(server.name)
        .confirmationDialog(
            "Uninstall Server",
            isPresented: $showUninstallConfirm,
            presenting: clientToUninstall
        ) { clientType in
            Button("Uninstall from \(clientType.displayName)", role: .destructive) {
                uninstallServer(from: clientType)
            }
            Button("Cancel", role: .cancel) {}
        } message: { clientType in
            Text("Are you sure you want to uninstall \"\(server.name)\" from \(clientType.displayName)? You may need to restart the client for changes to take effect.")
        }
        .sheet(isPresented: $showProgressSheet) {
            InstallationProgressSheet(
                title: "Uninstalling",
                serverName: server.name,
                steps: $uninstallSteps,
                onDismiss: { showProgressSheet = false }
            )
        }
        .sheet(isPresented: $showInstallToMoreSheet) {
            InstallationProgressSheet(
                title: "Installing",
                serverName: server.name,
                steps: $installSteps,
                onDismiss: {
                    showInstallToMoreSheet = false
                    selectedClientsForInstall.removeAll()
                }
            )
        }
    }

    private var header: some View {
        HStack(spacing: 16) {
            ServerIconView(url: server.registryServer?.iconURL, size: 64)

            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 6) {
                    Text(server.name)
                        .font(.title2)
                        .fontWeight(.bold)

                    ForEach(server.registryServer?.uniqueTransportTypes ?? [], id: \.self) { transport in
                        TransportTypeBadge(type: transport)
                    }
                }

                if let description = server.registryServer?.description {
                    Text(description)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        .lineLimit(2)
                }
            }

            Spacer()
        }
    }

    private var statusSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Overview")
                .font(.headline)

            StatusCard(
                title: "Installed In",
                value: "\(server.installedClientTypes.count) \(server.installedClientTypes.count == 1 ? "client" : "clients")",
                color: .blue,
                icon: "rectangle.stack"
            )
        }
    }

    private var clientConfigsSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Client Configurations")
                    .font(.headline)

                if server.hasDisabledClients {
                    Text("(\(server.disabledClients.count) disabled)")
                        .font(.caption)
                        .foregroundStyle(.orange)
                }
            }

            // Show enabled clients first
            ForEach(server.installedClientTypes, id: \.self) { clientType in
                if let config = server.clients[clientType] {
                    ClientConfigCard(
                        clientType: clientType,
                        config: config,
                        serverName: server.name,
                        isEnabled: true,
                        isUninstalling: isUninstalling && clientToUninstall == clientType,
                        onUninstall: {
                            clientToUninstall = clientType
                            showUninstallConfirm = true
                        }
                    )
                }
            }

            // Show disabled clients
            ForEach(Array(server.disabledClients).sorted { $0.displayName < $1.displayName }, id: \.self) { clientType in
                // Get stored config from disabled store
                if let storedConfig = appState.disabledServersStore.getConfig(serverName: server.name, clientType: clientType) {
                    ClientConfigCard(
                        clientType: clientType,
                        config: storedConfig.toInstalledServerConfig(name: server.name),
                        serverName: server.name,
                        isEnabled: false,
                        isUninstalling: false,
                        onUninstall: {}  // Can't uninstall disabled servers
                    )
                }
            }
        }
    }

    // MARK: - Claude Code Scopes Section

    private var claudeCodeScopesSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Claude Code Configurations")
                    .font(.headline)

                Spacer()

                // Show scope count summary
                let scopes = server.sortedClaudeCodeScopes
                let enabledCount = scopes.filter { !server.disabledClaudeCodeScopes.contains($0) }.count
                if enabledCount < scopes.count {
                    Text("\(enabledCount)/\(scopes.count) enabled")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }

            Text("Claude Code supports multiple configuration scopes. Manage each scope independently below.")
                .font(.caption)
                .foregroundStyle(.secondary)

            // Show each scope as a card
            ForEach(server.sortedClaudeCodeScopes, id: \.self) { scope in
                if let config = server.claudeCodeScopes[scope] {
                    ClaudeCodeScopeCard(
                        scope: scope,
                        config: config,
                        serverName: server.name,
                        isEnabled: !server.disabledClaudeCodeScopes.contains(scope),
                        isDisabled: server.disabledClaudeCodeScopes.contains(scope)
                    )
                }
            }

            // Also show disabled scopes that aren't in the active list
            ForEach(Array(server.disabledClaudeCodeScopes).sorted(), id: \.self) { scope in
                if server.claudeCodeScopes[scope] == nil {
                    // This scope is disabled - need to get config from disabled store
                    if let storedConfig = appState.disabledServersStore.getConfig(serverName: server.name, scope: scope) {
                        ClaudeCodeScopeCard(
                            scope: scope,
                            config: storedConfig.toInstalledServerConfig(name: server.name),
                            serverName: server.name,
                            isEnabled: false,
                            isDisabled: true
                        )
                    }
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(nsColor: .controlBackgroundColor))
        .cornerRadius(8)
    }

    // MARK: - Install to More Clients

    private var availableClients: [MCPClient] {
        server.availableClientsForInstall(from: appState.installedClients)
    }

    private var installToMoreSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Install to More Clients")
                .font(.headline)

            ForEach(availableClients, id: \.type) { client in
                ClientTypeToggle(
                    clientType: client.type,
                    isSelected: Binding(
                        get: { selectedClientsForInstall.contains(client.type) },
                        set: { isSelected in
                            if isSelected {
                                selectedClientsForInstall.insert(client.type)
                            } else {
                                selectedClientsForInstall.remove(client.type)
                            }
                        }
                    )
                )
            }

            Button(action: installToSelectedClients) {
                Label("Install to Selected", systemImage: "square.and.arrow.down")
            }
            .buttonStyle(.borderedProminent)
            .disabled(selectedClientsForInstall.isEmpty)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(nsColor: .controlBackgroundColor))
        .cornerRadius(8)
    }

    private func installToSelectedClients() {
        MCPLogger.ui.info("Install to more initiated for '\(server.name, privacy: .public)' to \(selectedClientsForInstall.count, privacy: .public) \(selectedClientsForInstall.count == 1 ? "client" : "clients")")

        // Build installation steps for each selected client
        installSteps = selectedClientsForInstall.compactMap { clientType in
            guard let client = appState.clients.first(where: { $0.type == clientType }),
                  let configPath = client.configPath else {
                MCPLogger.ui.warning("Skipping \(clientType.displayName, privacy: .public): no config path")
                return nil
            }
            MCPLogger.ui.debug("Will install to \(clientType.displayName, privacy: .public): \(configPath.path, privacy: .public)")
            return InstallationStep(clientType: clientType, configPath: configPath)
        }

        showInstallToMoreSheet = true

        Task {
            for i in installSteps.indices {
                let clientType = installSteps[i].clientType
                MCPLogger.ui.debug("Starting installation to \(clientType.displayName, privacy: .public)...")

                // IMPORTANT: Reassign entire array to trigger SwiftUI re-render
                var steps = installSteps
                steps[i].status = .inProgress
                steps[i].message = "Starting installation..."
                installSteps = steps

                do {
                    // Check if server has registry data or is manually added
                    if let registryServer = server.registryServer {
                        // Has registry data - use standard install
                        try await appState.installServer(
                            registryServer,
                            toClient: clientType,
                            name: server.name,
                            envVars: server.primaryConfig?.env ?? [:]
                        ) { progress in
                            Task { @MainActor in
                                MCPLogger.ui.debug("Progress update for \(clientType.displayName, privacy: .public): \(progress.message, privacy: .public)")
                                var steps = installSteps
                                steps[i].message = progress.message
                                installSteps = steps
                            }
                        }
                    } else if let existingConfig = server.primaryConfig {
                        // Manually added server - copy existing config
                        try await appState.copyServerConfig(
                            existingConfig,
                            serverName: server.name,
                            toClient: clientType
                        ) { progress in
                            Task { @MainActor in
                                MCPLogger.ui.debug("Progress update for \(clientType.displayName, privacy: .public): \(progress.message, privacy: .public)")
                                var steps = installSteps
                                steps[i].message = progress.message
                                installSteps = steps
                            }
                        }
                    } else {
                        throw AppError.installFailed("No server configuration available to copy")
                    }

                    MCPLogger.ui.info("Installation to \(clientType.displayName, privacy: .public) succeeded")

                    // Reassign entire array to trigger SwiftUI re-render
                    var steps = installSteps
                    steps[i].status = .success
                    steps[i].message = "Server installed successfully"
                    installSteps = steps
                } catch {
                    MCPLogger.ui.error("Installation to \(clientType.displayName, privacy: .public) failed: \(error.localizedDescription, privacy: .public)")

                    // Reassign entire array to trigger SwiftUI re-render
                    var steps = installSteps
                    steps[i].status = .failed(error.localizedDescription)
                    steps[i].message = error.localizedDescription
                    installSteps = steps
                }
            }

            MCPLogger.ui.info("Installation process complete for '\(server.name, privacy: .public)'")
        }
    }

    private func uninstallServer(from clientType: MCPClientType) {
        MCPLogger.ui.info("Uninstall initiated for '\(server.name, privacy: .public)' from \(clientType.displayName, privacy: .public)")
        isUninstalling = true

        // Build uninstall step
        guard let client = appState.clients.first(where: { $0.type == clientType }),
              let configPath = client.configPath else {
            MCPLogger.ui.error("Failed to find client or config path for \(clientType.displayName, privacy: .public)")
            isUninstalling = false
            return
        }

        MCPLogger.ui.debug("Config path: \(configPath.path, privacy: .public)")
        uninstallSteps = [InstallationStep(clientType: clientType, configPath: configPath)]
        showProgressSheet = true

        Task {
            MCPLogger.ui.debug("Starting uninstall task...")

            // IMPORTANT: Reassign entire array to trigger SwiftUI re-render
            // Direct element mutation (uninstallSteps[0].status = ...) may not trigger updates
            var steps = uninstallSteps
            steps[0].status = .inProgress
            steps[0].message = "Starting uninstall..."
            uninstallSteps = steps
            MCPLogger.ui.debug("Status set to inProgress")

            do {
                MCPLogger.ui.debug("Calling appState.uninstallServer...")

                // For Claude Code, uninstall from all scopes
                if clientType == .claudeCode {
                    for (scope, _) in server.claudeCodeScopes {
                        MCPLogger.ui.debug("Uninstalling from scope: \(scope.displayName, privacy: .public)")
                        try await appState.uninstallServer(server.name, fromClient: clientType, claudeCodeScope: scope) { progress in
                            Task { @MainActor in
                                MCPLogger.ui.debug("Progress update: \(progress.message, privacy: .public)")
                                var steps = uninstallSteps
                                steps[0].message = progress.message
                                uninstallSteps = steps
                            }
                        }
                    }
                } else {
                    try await appState.uninstallServer(server.name, fromClient: clientType) { progress in
                        // Update UI with real-time progress from the callback
                        Task { @MainActor in
                            MCPLogger.ui.debug("Progress update: \(progress.message, privacy: .public)")
                            var steps = uninstallSteps
                            steps[0].message = progress.message
                            uninstallSteps = steps
                        }
                    }
                }

                MCPLogger.ui.debug("appState.uninstallServer returned successfully")

                // Reassign entire array to trigger SwiftUI re-render
                var steps = uninstallSteps
                steps[0].status = .success
                steps[0].message = "Server removed successfully"
                uninstallSteps = steps
                MCPLogger.ui.info("Uninstall completed successfully for '\(server.name, privacy: .public)'")
            } catch {
                MCPLogger.ui.error("Uninstall failed: \(error.localizedDescription, privacy: .public)")

                // Reassign entire array to trigger SwiftUI re-render
                var steps = uninstallSteps
                steps[0].status = .failed(error.localizedDescription)
                steps[0].message = error.localizedDescription
                uninstallSteps = steps
            }

            isUninstalling = false
            clientToUninstall = nil
            MCPLogger.ui.debug("Uninstall task cleanup complete")
        }
    }
}

struct StatusCard: View {
    let title: String
    let value: String
    let color: Color
    let icon: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: icon)
                    .foregroundStyle(color)
                Text(title)
                    .foregroundStyle(.secondary)
            }
            .font(.caption)

            Text(value)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(color)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(nsColor: .controlBackgroundColor))
        .cornerRadius(8)
    }
}

struct ClientConfigCard: View {
    @EnvironmentObject var appState: AppState
    let clientType: MCPClientType
    let config: InstalledServerConfig
    let serverName: String
    let isEnabled: Bool
    let isUninstalling: Bool
    let onUninstall: () -> Void

    @State private var isExpanded = true
    @State private var isToggling = false

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Header
            HStack {
                Image(systemName: clientType.systemIconFallback)
                    .foregroundStyle(clientType.accentColor)
                    .frame(width: 24)

                Text(clientType.displayName)
                    .font(.subheadline)
                    .fontWeight(.semibold)

                if !isEnabled {
                    DisabledBadge()
                }

                Spacer()

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
                    .help(isEnabled ? "Disable for \(clientType.displayName)" : "Enable for \(clientType.displayName)")
                }

                Button(action: { withAnimation { isExpanded.toggle() } }) {
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                        .foregroundStyle(.secondary)
                }
                .buttonStyle(.plain)
            }

            if isExpanded {
                // Command
                VStack(alignment: .leading, spacing: 4) {
                    Text("Command")
                        .font(.caption)
                        .foregroundStyle(.secondary)

                    HStack {
                        Text("\(config.command) \(config.args.joined(separator: " "))")
                            .font(.system(.body, design: .monospaced))
                            .lineLimit(2)
                            .textSelection(.enabled)

                        Spacer()

                        CopyButton("\(config.command) \(config.args.joined(separator: " "))")
                            .buttonStyle(.borderless)
                            .help("Copy command")
                    }
                    .padding(8)
                    .background(Color(nsColor: .textBackgroundColor))
                    .cornerRadius(6)
                }

                // Environment variables
                if let env = config.env, !env.isEmpty {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Environment Variables")
                            .font(.caption)
                            .foregroundStyle(.secondary)

                        ForEach(Array(env.keys.sorted()), id: \.self) { key in
                            HStack {
                                Text(key)
                                    .font(.system(.caption, design: .monospaced))
                                Spacer()
                                Text(String(repeating: "•", count: 8))
                                    .font(.system(.caption, design: .monospaced))
                                    .foregroundStyle(.secondary)
                            }
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(Color(nsColor: .textBackgroundColor))
                            .cornerRadius(4)
                        }
                    }
                }

                // Actions
                HStack {
                    Button(action: onUninstall) {
                        if isUninstalling {
                            HStack {
                                ProgressView()
                                    .controlSize(.small)
                                Text("Uninstalling...")
                            }
                        } else {
                            Label("Uninstall", systemImage: "trash")
                        }
                    }
                    .buttonStyle(.borderless)
                    .foregroundStyle(.red)
                    .disabled(isUninstalling)

                    Spacer()
                }
            }
        }
        .cardStyle()
        .opacity(isEnabled ? 1.0 : 0.7)
    }

    private func toggleEnabled(_ newValue: Bool) {
        isToggling = true
        Task {
            _ = await appState.toggleServerEnabled(serverName, enabled: newValue, forClient: clientType)
            await MainActor.run { isToggling = false }
        }
    }

}

#Preview {
    ServerConfigView(server: UnifiedInstalledServer(
        id: "filesystem",
        name: "filesystem",
        clients: [
            .claudeDesktop: InstalledServerConfig(
                name: "filesystem",
                command: "npx",
                args: ["-y", "@modelcontextprotocol/server-filesystem", "/Users/demo"],
                env: ["API_KEY": "secret"]
            ),
            .cursor: InstalledServerConfig(
                name: "filesystem",
                command: "npx",
                args: ["-y", "@modelcontextprotocol/server-filesystem"]
            )
        ],
        registryServer: nil,
        disabledClients: [.windsurf]
    ))
    .environmentObject(AppState())
    .frame(width: 500, height: 600)
}
