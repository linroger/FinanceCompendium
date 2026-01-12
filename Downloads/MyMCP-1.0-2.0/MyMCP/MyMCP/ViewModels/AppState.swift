import Foundation
import SwiftUI
import os.log

/// Global application state
@MainActor
class AppState: ObservableObject {
    // MARK: - Services
    let registryService = RegistryService()
    let clientDiscoveryService = ClientDiscoveryService()
    let configFileService = ConfigFileService()
    let githubMetadataService = GitHubMetadataService()
    let disabledServersService = DisabledServersService()

    // MARK: - Published State
    @Published var registryServers: [MCPServer] = []
    @Published var clients: [MCPClient] = []
    @Published var githubMetadata: [String: GitHubMetadata] = [:]
    @Published var disabledServersStore: DisabledServersStore = DisabledServersStore()
    @Published var isLoadingRegistry: Bool = false
    @Published var isLoadingClients: Bool = false
    @Published var isLoadingMetadata: Bool = false
    @Published var error: AppError?
    @Published var searchText: String = ""

    // MARK: - Navigation State
    @Published var selectedSection: SidebarSection? = .installed
    @Published var pendingRegistrySelection: MCPServer? = nil

    init() {
        MCPLogger.appState.info("AppState initialized")
    }

    // MARK: - Derived State
    var installedServers: [UnifiedInstalledServer] {
        var unified: [String: UnifiedInstalledServer] = [:]

        // First, collect all enabled servers from clients
        for client in clients {
            for (compositeKey, config) in client.installedServers {
                // For Claude Code, extract base name from composite key
                let baseName = extractServerName(from: compositeKey, clientType: client.type)

                if var existing = unified[baseName] {
                    if client.type == .claudeCode, let scope = config.claudeCodeScope {
                        // Track Claude Code scopes separately
                        existing.claudeCodeScopes[scope] = config
                    } else {
                        existing.clients[client.type] = config
                    }
                    unified[baseName] = existing
                } else {
                    var newServer = UnifiedInstalledServer(
                        id: baseName,
                        name: baseName,
                        clients: [:],
                        registryServer: findRegistryServer(byName: baseName)
                    )
                    if client.type == .claudeCode, let scope = config.claudeCodeScope {
                        newServer.claudeCodeScopes[scope] = config
                    } else {
                        newServer.clients[client.type] = config
                    }
                    unified[baseName] = newServer
                }
            }
        }

        // Then, add disabled servers info
        for entry in disabledServersStore.entries {
            if var existing = unified[entry.serverName] {
                if let scope = entry.claudeCodeScope {
                    // Disabled Claude Code scope
                    existing.disabledClaudeCodeScopes.insert(scope)
                } else {
                    existing.disabledClients.insert(entry.clientType)
                }
                unified[entry.serverName] = existing
            } else {
                // Server only exists as disabled (not enabled in any client)
                var newServer = UnifiedInstalledServer(
                    id: entry.serverName,
                    name: entry.serverName,
                    clients: [:],
                    registryServer: findRegistryServer(byName: entry.serverName)
                )
                if let scope = entry.claudeCodeScope {
                    newServer.disabledClaudeCodeScopes.insert(scope)
                } else {
                    newServer.disabledClients = [entry.clientType]
                }
                unified[entry.serverName] = newServer
            }
        }

        return Array(unified.values).sorted { $0.name.lowercased() < $1.name.lowercased() }
    }

    /// Extract base server name from composite key (for Claude Code)
    private func extractServerName(from key: String, clientType: MCPClientType) -> String {
        if clientType == .claudeCode {
            // Keys are like "servername_global" or "servername_local:/path"
            if let lastUnderscoreIndex = key.lastIndex(of: "_"),
               (key[lastUnderscoreIndex...].contains("global") ||
                key[lastUnderscoreIndex...].contains("local:") ||
                key[lastUnderscoreIndex...].contains("project:")) {
                return String(key[..<lastUnderscoreIndex])
            }
        }
        return key
    }

    var installedClients: [MCPClient] {
        clients.filter { $0.isInstalled || !$0.installedServers.isEmpty }
    }

    var notInstalledClients: [MCPClient] {
        clients.filter { !$0.isInstalled && $0.installedServers.isEmpty }
    }

    // MARK: - Actions
    func loadInitialData() async {
        MCPLogger.appState.info("Loading initial data...")
        let startTime = CFAbsoluteTimeGetCurrent()

        await withTaskGroup(of: Void.self) { group in
            group.addTask { await self.loadRegistry() }
            group.addTask { await self.discoverClients() }
            group.addTask { await self.loadGitHubMetadata() }
            group.addTask { await self.loadDisabledServers() }
        }

        let elapsed = CFAbsoluteTimeGetCurrent() - startTime
        MCPLogger.appState.info("Initial data loaded in \(String(format: "%.3f", elapsed), privacy: .public)s")
    }

    func loadDisabledServers() async {
        MCPLogger.appState.debug("Loading disabled servers...")
        do {
            disabledServersStore = try await disabledServersService.load()
            MCPLogger.appState.debug("Loaded \(self.disabledServersStore.entries.count, privacy: .public) disabled server entries")
        } catch {
            MCPLogger.appState.error("Failed to load disabled servers: \(error.localizedDescription, privacy: .public)")
            disabledServersStore = DisabledServersStore()
        }
    }

    func loadRegistry() async {
        MCPLogger.appState.debug("Loading registry...")
        isLoadingRegistry = true
        defer {
            isLoadingRegistry = false
            MCPLogger.appState.debug("Registry loading complete, found \(self.registryServers.count, privacy: .public) servers")
        }

        do {
            registryServers = try await registryService.fetchAllServers()
        } catch {
            MCPLogger.appState.error("Failed to load registry: \(error.localizedDescription, privacy: .public)")
            self.error = .registryLoadFailed(error.localizedDescription)
        }
    }

    func discoverClients() async {
        MCPLogger.appState.debug("Discovering clients...")
        isLoadingClients = true
        defer {
            isLoadingClients = false
            let installedCount = clients.filter { $0.isInstalled }.count
            MCPLogger.appState.debug("Client discovery complete: \(installedCount, privacy: .public) installed clients")
        }

        clients = await clientDiscoveryService.discoverClients()
    }

    func loadGitHubMetadata() async {
        MCPLogger.appState.debug("Loading GitHub metadata...")
        isLoadingMetadata = true
        defer {
            isLoadingMetadata = false
            MCPLogger.appState.debug("GitHub metadata loading complete: \(self.githubMetadata.count, privacy: .public) servers")
        }

        do {
            githubMetadata = try await githubMetadataService.fetchAllMetadata()
        } catch {
            // Silent failure - GitHub metadata is optional enrichment
            MCPLogger.appState.warning("Failed to load GitHub metadata: \(error.localizedDescription, privacy: .public)")
        }
    }

    /// Get GitHub metadata for a server by name
    func getMetadata(for server: MCPServer) -> GitHubMetadata? {
        return githubMetadata[server.name]
    }

    /// Install a server with optional progress callback for UI updates
    /// - Parameters:
    ///   - server: The server to install
    ///   - clientType: Target client type
    ///   - name: Server name
    ///   - envVars: Environment variables
    ///   - claudeCodeScope: For Claude Code only, specifies the installation scope
    ///   - progress: Optional progress callback
    func installServer(
        _ server: MCPServer,
        toClient clientType: MCPClientType,
        name: String,
        envVars: [String: String],
        claudeCodeScope: ClaudeCodeScope? = nil,
        progress: ((InstallProgress) -> Void)? = nil
    ) async throws {
        MCPLogger.appState.info("installServer called: '\(name, privacy: .public)' to \(clientType.displayName, privacy: .public)")

        guard let client = clients.first(where: { $0.type == clientType }) else {
            MCPLogger.appState.error("Client not found: \(clientType.displayName, privacy: .public)")
            progress?(.failed("Client not found"))
            throw AppError.clientNotFound
        }

        MCPLogger.appState.debug("Starting config file service install...")
        try await configFileService.installServer(
            server: server,
            serverName: name,
            toClient: client,
            envVars: envVars,
            claudeCodeScope: claudeCodeScope,
            progress: progress
        )
        MCPLogger.appState.debug("Config file service completed")

        progress?(.refreshingClients)
        MCPLogger.appState.debug("Refreshing clients...")
        await discoverClients()

        progress?(.completed)
        MCPLogger.appState.info("installServer completed successfully for '\(name, privacy: .public)'")
    }

    /// Uninstall a server with optional progress callback for UI updates
    /// For Claude Code, specify the scope to uninstall from a specific location
    func uninstallServer(
        _ serverName: String,
        fromClient clientType: MCPClientType,
        claudeCodeScope: ClaudeCodeScope? = nil,
        progress: ((UninstallProgress) -> Void)? = nil
    ) async throws {
        let scopeInfo = claudeCodeScope.map { " scope: \($0.displayName)" } ?? ""
        MCPLogger.appState.info("uninstallServer called: '\(serverName, privacy: .public)' from \(clientType.displayName, privacy: .public)\(scopeInfo, privacy: .public)")

        guard let client = clients.first(where: { $0.type == clientType }) else {
            MCPLogger.appState.error("Client not found: \(clientType.displayName, privacy: .public)")
            progress?(.failed("Client not found"))
            throw AppError.clientNotFound
        }

        MCPLogger.appState.debug("Starting config file service uninstall...")
        try await configFileService.uninstallServer(
            serverName: serverName,
            fromClient: client,
            claudeCodeScope: claudeCodeScope,
            progress: progress
        )
        MCPLogger.appState.debug("Config file service completed")

        progress?(.refreshingClients)
        MCPLogger.appState.debug("Refreshing clients...")
        await discoverClients()

        progress?(.completed)
        MCPLogger.appState.info("uninstallServer completed successfully for '\(serverName, privacy: .public)'")
    }

    /// Copy an existing server config to another client (for manually added servers)
    func copyServerConfig(
        _ config: InstalledServerConfig,
        serverName: String,
        toClient clientType: MCPClientType,
        progress: ((InstallProgress) -> Void)? = nil
    ) async throws {
        MCPLogger.appState.info("copyServerConfig called: '\(serverName, privacy: .public)' to \(clientType.displayName, privacy: .public)")

        guard let client = clients.first(where: { $0.type == clientType }) else {
            MCPLogger.appState.error("Client not found: \(clientType.displayName, privacy: .public)")
            progress?(.failed("Client not found"))
            throw AppError.clientNotFound
        }

        MCPLogger.appState.debug("Starting config file service copy...")
        try await configFileService.copyServerConfig(
            config: config,
            serverName: serverName,
            toClient: client,
            progress: progress
        )
        MCPLogger.appState.debug("Config file service completed")

        progress?(.refreshingClients)
        MCPLogger.appState.debug("Refreshing clients...")
        await discoverClients()

        progress?(.completed)
        MCPLogger.appState.info("copyServerConfig completed successfully for '\(serverName, privacy: .public)'")
    }

    // MARK: - Enable/Disable Server Actions

    /// Disable a server for a specific client (removes from client config, stores in MyMCP)
    func disableServer(
        _ serverName: String,
        forClient clientType: MCPClientType,
        progress: ((UninstallProgress) -> Void)? = nil
    ) async throws {
        MCPLogger.appState.info("Disabling server '\(serverName, privacy: .public)' for \(clientType.displayName, privacy: .public)")

        guard let client = clients.first(where: { $0.type == clientType }) else {
            MCPLogger.appState.error("Client not found: \(clientType.displayName, privacy: .public)")
            progress?(.failed("Client not found"))
            throw AppError.clientNotFound
        }

        // Check if server exists in client config
        guard let config = client.installedServers[serverName] else {
            // Server not in config - it was already removed externally
            // Just refresh state so UI syncs with actual config
            MCPLogger.appState.info("Server '\(serverName, privacy: .public)' already removed from \(clientType.displayName, privacy: .public) config - refreshing state")
            progress?(.refreshingClients)
            await discoverClients()
            progress?(.completed)
            return
        }

        // 1. Store the config in our disabled servers store FIRST
        MCPLogger.appState.debug("Storing config in disabled servers store...")
        try await disabledServersService.disableServer(
            serverName: serverName,
            clientType: clientType,
            config: config
        )

        // 2. Remove from client config
        MCPLogger.appState.debug("Removing from client config...")
        try await configFileService.uninstallServer(
            serverName: serverName,
            fromClient: client,
            progress: progress
        )

        // 3. Refresh state
        progress?(.refreshingClients)
        await loadDisabledServers()
        await discoverClients()

        progress?(.completed)
        MCPLogger.appState.info("Server '\(serverName, privacy: .public)' disabled for \(clientType.displayName, privacy: .public)")
    }

    /// Enable a previously disabled server for a specific client
    func enableServer(
        _ serverName: String,
        forClient clientType: MCPClientType,
        progress: ((InstallProgress) -> Void)? = nil
    ) async throws {
        MCPLogger.appState.info("Enabling server '\(serverName, privacy: .public)' for \(clientType.displayName, privacy: .public)")

        guard let client = clients.first(where: { $0.type == clientType }) else {
            MCPLogger.appState.error("Client not found: \(clientType.displayName, privacy: .public)")
            progress?(.failed("Client not found"))
            throw AppError.clientNotFound
        }

        // 1. Get stored config
        guard let storedConfig = try await disabledServersService.getStoredConfig(
            serverName: serverName,
            clientType: clientType
        ) else {
            MCPLogger.appState.error("No stored config found for '\(serverName, privacy: .public)'")
            progress?(.failed("No stored configuration found"))
            throw AppError.installFailed("No stored configuration found for \(serverName)")
        }

        // 2. Re-add to client config
        MCPLogger.appState.debug("Re-adding to client config...")
        try await configFileService.enableServer(
            serverName: serverName,
            config: storedConfig,
            toClient: client,
            progress: progress
        )

        // 3. Remove from disabled store
        MCPLogger.appState.debug("Removing from disabled store...")
        try await disabledServersService.enableServer(
            serverName: serverName,
            clientType: clientType
        )

        // 4. Refresh state
        progress?(.refreshingClients)
        await loadDisabledServers()
        await discoverClients()

        progress?(.completed)
        MCPLogger.appState.info("Server '\(serverName, privacy: .public)' enabled for \(clientType.displayName, privacy: .public)")
    }

    func refreshAll() async {
        MCPLogger.appState.info("Refreshing all data...")
        await loadInitialData()
    }

    func clearError() {
        MCPLogger.appState.debug("Clearing error state")
        error = nil
    }

    // MARK: - Navigation Actions
    func navigateToRegistryEntry(for server: UnifiedInstalledServer) {
        guard let registryServer = server.registryServer else { return }
        MCPLogger.appState.info("Navigating to registry entry for '\(server.name, privacy: .public)'")
        pendingRegistrySelection = registryServer
        selectedSection = .registry
    }

    // MARK: - Convenience Methods

    /// Toggle server enabled/disabled state, returns true if successful
    func toggleServerEnabled(
        _ serverName: String,
        enabled: Bool,
        forClient clientType: MCPClientType
    ) async -> Bool {
        do {
            if enabled {
                try await enableServer(serverName, forClient: clientType)
            } else {
                try await disableServer(serverName, forClient: clientType)
            }
            return true
        } catch {
            MCPLogger.ui.error("Toggle failed: \(error.localizedDescription, privacy: .public)")
            return false
        }
    }

    // MARK: - Claude Code Scope Actions

    /// Disable a Claude Code server for a specific scope
    func disableClaudeCodeServer(
        _ serverName: String,
        scope: ClaudeCodeScope,
        progress: ((UninstallProgress) -> Void)? = nil
    ) async throws {
        MCPLogger.appState.info("Disabling Claude Code server '\(serverName, privacy: .public)' for scope: \(scope.displayName, privacy: .public)")

        guard let client = clients.first(where: { $0.type == .claudeCode }) else {
            MCPLogger.appState.error("Claude Code client not found")
            progress?(.failed("Claude Code not found"))
            throw AppError.clientNotFound
        }

        // Find the config for this scope using composite key
        let compositeKey = "\(serverName)_\(scope.id)"
        guard let config = client.installedServers[compositeKey] else {
            // Server not in config - it was already removed externally
            // Just refresh state so UI syncs with actual config
            MCPLogger.appState.info("Claude Code server '\(serverName, privacy: .public)' already removed from scope \(scope.displayName, privacy: .public) - refreshing state")
            progress?(.refreshingClients)
            await discoverClients()
            progress?(.completed)
            return
        }

        // 1. Store the config in disabled servers store
        MCPLogger.appState.debug("Storing config in disabled servers store...")
        try await disabledServersService.disableServer(
            serverName: serverName,
            scope: scope,
            config: config
        )

        // 2. Remove from client config
        MCPLogger.appState.debug("Removing from Claude Code config...")
        try await configFileService.uninstallServer(
            serverName: serverName,
            fromClient: client,
            claudeCodeScope: scope,
            progress: progress
        )

        // 3. Refresh state
        progress?(.refreshingClients)
        await loadDisabledServers()
        await discoverClients()

        progress?(.completed)
        MCPLogger.appState.info("Claude Code server '\(serverName, privacy: .public)' disabled for scope: \(scope.displayName, privacy: .public)")
    }

    /// Enable a previously disabled Claude Code server scope
    func enableClaudeCodeServer(
        _ serverName: String,
        scope: ClaudeCodeScope,
        progress: ((InstallProgress) -> Void)? = nil
    ) async throws {
        MCPLogger.appState.info("Enabling Claude Code server '\(serverName, privacy: .public)' for scope: \(scope.displayName, privacy: .public)")

        guard let client = clients.first(where: { $0.type == .claudeCode }) else {
            MCPLogger.appState.error("Claude Code client not found")
            progress?(.failed("Claude Code not found"))
            throw AppError.clientNotFound
        }

        // Get stored config
        guard let storedConfig = try await disabledServersService.getStoredConfig(
            serverName: serverName,
            scope: scope
        ) else {
            MCPLogger.appState.error("No stored config found for '\(serverName, privacy: .public)' scope: \(scope.displayName, privacy: .public)")
            progress?(.failed("No stored configuration found"))
            throw AppError.installFailed("No stored configuration found")
        }

        // Re-add to client config
        MCPLogger.appState.debug("Re-adding to Claude Code config...")
        try await configFileService.enableServer(
            serverName: serverName,
            config: storedConfig,
            toClient: client,
            claudeCodeScope: scope,
            progress: progress
        )

        // Remove from disabled store
        MCPLogger.appState.debug("Removing from disabled store...")
        try await disabledServersService.enableServer(
            serverName: serverName,
            scope: scope
        )

        // Refresh state
        progress?(.refreshingClients)
        await loadDisabledServers()
        await discoverClients()

        progress?(.completed)
        MCPLogger.appState.info("Claude Code server '\(serverName, privacy: .public)' enabled for scope: \(scope.displayName, privacy: .public)")
    }

    /// Toggle Claude Code server enabled/disabled state for a specific scope
    func toggleClaudeCodeScopeEnabled(
        _ serverName: String,
        enabled: Bool,
        scope: ClaudeCodeScope
    ) async -> Bool {
        do {
            if enabled {
                try await enableClaudeCodeServer(serverName, scope: scope)
            } else {
                try await disableClaudeCodeServer(serverName, scope: scope)
            }
            return true
        } catch {
            MCPLogger.ui.error("Toggle failed: \(error.localizedDescription, privacy: .public)")
            return false
        }
    }

    /// Get known project paths from Claude Code config
    func getKnownClaudeCodeProjectPaths() async -> [String] {
        await clientDiscoveryService.getKnownProjectPaths()
    }

    // MARK: - Private Helpers

    /// Find a registry server by name using exact matching with controlled fallbacks
    private func findRegistryServer(byName name: String) -> MCPServer? {
        // 1. Exact match on primary package identifier
        if let server = registryServers.first(where: {
            $0.primaryPackage?.identifier == name
        }) {
            return server
        }

        // 2. Exact match on short package name (after /)
        if let server = registryServers.first(where: {
            ($0.primaryPackage?.identifier.components(separatedBy: "/").last ?? "") == name
        }) {
            return server
        }

        // 3. Exact display name match (case-insensitive)
        if let server = registryServers.first(where: {
            $0.displayName.lowercased() == name.lowercased()
        }) {
            return server
        }

        // 4. Last resort: suffix match on full name (for backwards compatibility)
        if let server = registryServers.first(where: { $0.name.hasSuffix("/\(name)") }) {
            return server
        }

        return nil
    }
}

enum AppError: LocalizedError, Identifiable {
    case clientNotFound
    case registryLoadFailed(String)
    case installFailed(String)
    case uninstallFailed(String)

    var id: String {
        switch self {
        case .clientNotFound: return "clientNotFound"
        case .registryLoadFailed: return "registryLoadFailed"
        case .installFailed: return "installFailed"
        case .uninstallFailed: return "uninstallFailed"
        }
    }

    var errorDescription: String? {
        switch self {
        case .clientNotFound: return "MCP client not found"
        case .registryLoadFailed(let msg): return "Failed to load registry: \(msg)"
        case .installFailed(let msg): return "Installation failed: \(msg)"
        case .uninstallFailed(let msg): return "Uninstallation failed: \(msg)"
        }
    }
}
