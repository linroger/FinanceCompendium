import SwiftUI

struct ServerDetailView: View {
    @EnvironmentObject var appState: AppState
    let server: MCPServer

    @State private var selectedClients: Set<MCPClientType> = []
    @State private var serverName: String = ""
    @State private var envVars: [String: String] = [:]
    @State private var showProgressSheet = false
    @State private var installationSteps: [InstallationStep] = []

    // Claude Code scope selection
    @State private var selectedClaudeCodeScope: ClaudeCodeScope = .global
    @State private var knownProjectPaths: [String] = []

    /// Auth credentials required by this server (env vars marked as secret)
    private var authCredentials: [MCPEnvironmentVariable] {
        server.primaryPackage?.environmentVariables?.filter { $0.isSecret == true } ?? []
    }

    /// Whether this server can be installed (has package info)
    private var canInstall: Bool {
        server.primaryPackage != nil
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                header

                Divider()

                if let description = server.description {
                    descriptionSection(description)
                }

                // GitHub stats section (only shown if metadata available)
                if let metadata = appState.getMetadata(for: server) {
                    githubSection(metadata)
                }

                packagesSection

                if !authCredentials.isEmpty {
                    authenticationSection
                }

                Divider()

                installSection
            }
            .padding()
        }
        .navigationTitle(server.displayName)
        .onAppear {
            initializeState()
        }
        .onChange(of: server) { _, _ in
            initializeState()
        }
        .sheet(isPresented: $showProgressSheet) {
            InstallationProgressSheet(
                title: "Installing",
                serverName: serverName,
                steps: $installationSteps,
                onDismiss: { showProgressSheet = false }
            )
        }
    }

    private var header: some View {
        HStack(spacing: 16) {
            ServerIconView(url: server.iconURL, size: 64)

            VStack(alignment: .leading, spacing: 4) {
                Text(server.displayName)
                    .font(.title2)
                    .fontWeight(.bold)

                Text(server.name)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .textSelection(.enabled)

                HStack(spacing: 6) {
                    if let version = server.version {
                        Text("v\(version)")
                            .font(.caption)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 2)
                            .background(Color(nsColor: .controlBackgroundColor))
                            .cornerRadius(4)
                    }

                    if !authCredentials.isEmpty {
                        HStack(spacing: 4) {
                            Image(systemName: "lock.fill")
                                .font(.caption2)
                            Text("\(authCredentials.count) credential\(authCredentials.count == 1 ? "" : "s")")
                        }
                        .font(.caption)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 2)
                        .background(Color.orange.opacity(0.15))
                        .foregroundStyle(.orange)
                        .cornerRadius(4)
                    }
                }
            }

            Spacer()

            if let repoURL = server.repository?.url,
               !repoURL.isEmpty,
               let url = URL(string: repoURL) {
                Link(destination: url) {
                    Label("Repository", systemImage: "arrow.up.right.square")
                }
                .buttonStyle(.bordered)
            }
        }
    }

    private func descriptionSection(_ description: String) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Description")
                .font(.headline)

            Text(description)
                .foregroundStyle(.secondary)
        }
    }

    private func githubSection(_ metadata: GitHubMetadata) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("GitHub")
                .font(.headline)

            // Stats grid
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) {
                StatCard(title: "Stars", value: metadata.formattedStars, icon: "star.fill", color: .yellow)
                StatCard(title: "Forks", value: "\(metadata.forks)", icon: "arrow.triangle.branch", color: .blue)
                StatCard(title: "Issues", value: "\(metadata.openIssues)", icon: "exclamationmark.circle", color: .orange)
                if let language = metadata.language {
                    StatCard(title: "Language", value: language, icon: "chevron.left.forwardslash.chevron.right", color: .purple)
                }
            }

            // Topics
            if !metadata.topics.isEmpty {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        ForEach(metadata.topics.prefix(8), id: \.self) { topic in
                            TopicPill(topic: topic)
                        }
                    }
                }
            }

            // License and activity
            HStack {
                if let license = metadata.license {
                    HStack(spacing: 4) {
                        Image(systemName: "doc.text")
                        Text(license)
                    }
                    .font(.caption)
                    .foregroundStyle(.secondary)
                }

                Spacer()

                if let lastCommit = metadata.lastCommitRelative {
                    HStack(spacing: 4) {
                        Image(systemName: "clock")
                        Text(lastCommit)
                    }
                    .font(.caption)
                    .foregroundStyle(.secondary)
                }

                ActivityIndicator(status: metadata.activityStatus)
            }

            // Archived warning
            if metadata.archived {
                HStack {
                    Image(systemName: "exclamationmark.triangle.fill")
                        .foregroundStyle(.orange)
                    Text("This repository is archived and no longer maintained")
                        .font(.caption)
                }
                .padding(12)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.orange.opacity(0.1))
                .cornerRadius(8)
            }
        }
    }

    private var packagesSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Packages")
                .font(.headline)

            if server.packages.isEmpty {
                Text("No packages available for this server.")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(nsColor: .controlBackgroundColor))
                    .cornerRadius(8)
            } else {
                ForEach(server.packages) { package in
                    PackageInfoCard(package: package)
                }
            }
        }
    }

    private var authenticationSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Authentication")
                .font(.headline)

            ForEach(authCredentials) { credential in
                AuthCredentialCard(credential: credential)
            }
        }
    }

    private var installSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Install")
                .font(.headline)

            // Server name input
            VStack(alignment: .leading, spacing: 4) {
                Text("Server Name")
                    .font(.subheadline)
                    .fontWeight(.medium)

                TextField("Enter server name", text: $serverName)
                    .textFieldStyle(.roundedBorder)

                Text("This name will be used to identify the server in your client's configuration.")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            // Client selection
            VStack(alignment: .leading, spacing: 8) {
                Text("Install to Clients")
                    .font(.subheadline)
                    .fontWeight(.medium)

                if appState.installedClients.isEmpty {
                    Text("No MCP clients detected on your system.")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(nsColor: .controlBackgroundColor))
                        .cornerRadius(8)
                } else {
                    ForEach(appState.installedClients, id: \.type) { client in
                        ClientTypeToggle(
                            clientType: client.type,
                            isSelected: Binding(
                                get: { selectedClients.contains(client.type) },
                                set: { isSelected in
                                    if isSelected {
                                        selectedClients.insert(client.type)
                                    } else {
                                        selectedClients.remove(client.type)
                                    }
                                }
                            )
                        )
                    }
                }
            }

            // Claude Code scope picker (shown when Claude Code is selected)
            if selectedClients.contains(.claudeCode) {
                claudeCodeScopeSection
            }

            // Environment variables
            if let requiredEnvVars = server.primaryPackage?.environmentVariables, !requiredEnvVars.isEmpty {
                envVarsSection(requiredEnvVars)
            }

            // Warning for servers without package info
            if !canInstall {
                HStack(spacing: 8) {
                    Image(systemName: "exclamationmark.triangle.fill")
                        .foregroundStyle(.orange)
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Cannot Install")
                            .fontWeight(.medium)
                        Text("This server doesn't have package information in the registry and cannot be installed automatically.")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.orange.opacity(0.1))
                .cornerRadius(8)
            }

            // Install button
            HStack {
                Button(action: installServer) {
                    Label("Install Server", systemImage: "square.and.arrow.down")
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .disabled(selectedClients.isEmpty || serverName.isEmpty || !canInstall)

                if !selectedClients.isEmpty {
                    Text("Installing to \(selectedClients.count) \(selectedClients.count == 1 ? "client" : "clients")")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
        }
    }

    private func envVarsSection(_ envVars: [MCPEnvironmentVariable]) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Environment Variables")
                .font(.subheadline)
                .fontWeight(.medium)

            ForEach(envVars) { envVar in
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(envVar.name)
                            .font(.system(.caption, design: .monospaced))
                            .fontWeight(.medium)

                        if envVar.isSecret == true {
                            Image(systemName: "lock.fill")
                                .font(.caption2)
                                .foregroundStyle(.secondary)
                        }
                    }

                    if let description = envVar.description {
                        Text(description)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }

                    if envVar.isSecret == true {
                        SecureField("Enter \(envVar.name)", text: Binding(
                            get: { self.envVars[envVar.name] ?? "" },
                            set: { self.envVars[envVar.name] = $0 }
                        ))
                        .textFieldStyle(.roundedBorder)
                    } else {
                        TextField("Enter \(envVar.name)", text: Binding(
                            get: { self.envVars[envVar.name] ?? "" },
                            set: { self.envVars[envVar.name] = $0 }
                        ))
                        .textFieldStyle(.roundedBorder)
                    }
                }
            }
        }
    }

    // MARK: - Claude Code Scope Section

    private var claudeCodeScopeSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Claude Code Scope")
                .font(.subheadline)
                .fontWeight(.medium)

            Text("Choose where to install the server for Claude Code.")
                .font(.caption)
                .foregroundStyle(.secondary)

            // Scope type picker
            Picker("Scope", selection: $selectedClaudeCodeScope) {
                Label("Global", systemImage: "globe")
                    .tag(ClaudeCodeScope.global)

                if !knownProjectPaths.isEmpty {
                    Divider()
                    ForEach(knownProjectPaths, id: \.self) { path in
                        Label(projectDisplayName(for: path), systemImage: "person.circle")
                            .tag(ClaudeCodeScope.local(projectPath: path))
                    }
                }
            }
            .pickerStyle(.menu)

            // Scope description
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 6) {
                    Image(systemName: selectedClaudeCodeScope.systemIconName)
                        .foregroundStyle(selectedClaudeCodeScope.color)
                    Text(selectedClaudeCodeScope.displayName)
                        .fontWeight(.medium)
                }

                Text(scopeDescription)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .padding(10)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(selectedClaudeCodeScope.color.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }

    private func projectDisplayName(for path: String) -> String {
        URL(fileURLWithPath: path).lastPathComponent
    }

    private var scopeDescription: String {
        switch selectedClaudeCodeScope {
        case .global:
            return "Available in all Claude Code sessions. Stored in ~/.claude.json"
        case .local(let path):
            return "Available only in \(projectDisplayName(for: path)). Stored in ~/.claude.json under projects."
        case .project(let path):
            return "Team-shared config for \(projectDisplayName(for: path)). Stored in .mcp.json in project root."
        }
    }

    /// Initialize/reset state when view appears or server changes
    private func initializeState() {
        serverName = server.displayName.lowercased()
            .replacingOccurrences(of: " ", with: "-")
            .replacingOccurrences(of: "/", with: "-")
        selectedClients = Set(appState.installedClients.map { $0.type })
        envVars = [:]
        installationSteps = []

        // Load known project paths for Claude Code scope picker
        selectedClaudeCodeScope = .global
        Task {
            let paths = await appState.getKnownClaudeCodeProjectPaths()
            await MainActor.run {
                knownProjectPaths = paths
            }
        }
    }

    private func installServer() {
        MCPLogger.ui.info("Install initiated for '\(serverName, privacy: .public)' to \(selectedClients.count, privacy: .public) \(selectedClients.count == 1 ? "client" : "clients")")

        // Build installation steps for each selected client
        installationSteps = selectedClients.compactMap { clientType in
            guard let client = appState.clients.first(where: { $0.type == clientType }),
                  let configPath = client.configPath else {
                MCPLogger.ui.warning("Skipping \(clientType.displayName, privacy: .public): no config path")
                return nil
            }
            MCPLogger.ui.debug("Will install to \(clientType.displayName, privacy: .public): \(configPath.path, privacy: .public)")
            return InstallationStep(clientType: clientType, configPath: configPath)
        }

        showProgressSheet = true

        Task {
            for i in installationSteps.indices {
                let clientType = installationSteps[i].clientType
                MCPLogger.ui.debug("Starting installation to \(clientType.displayName, privacy: .public)...")

                // IMPORTANT: Reassign entire array to trigger SwiftUI re-render
                var steps = installationSteps
                steps[i].status = .inProgress
                steps[i].message = "Starting installation..."
                installationSteps = steps

                do {
                    // Pass scope for Claude Code installations
                    let scope: ClaudeCodeScope? = clientType == .claudeCode ? selectedClaudeCodeScope : nil

                    try await appState.installServer(
                        server,
                        toClient: clientType,
                        name: serverName,
                        envVars: envVars,
                        claudeCodeScope: scope
                    ) { progress in
                        // Update UI with real-time progress from the callback
                        Task { @MainActor in
                            MCPLogger.ui.debug("Progress update for \(clientType.displayName, privacy: .public): \(progress.message, privacy: .public)")
                            var steps = installationSteps
                            steps[i].message = progress.message
                            installationSteps = steps
                        }
                    }

                    MCPLogger.ui.info("Installation to \(clientType.displayName, privacy: .public) succeeded")

                    // Reassign entire array to trigger SwiftUI re-render
                    var steps = installationSteps
                    steps[i].status = .success
                    steps[i].message = "Server installed successfully"
                    installationSteps = steps
                } catch {
                    MCPLogger.ui.error("Installation to \(clientType.displayName, privacy: .public) failed: \(error.localizedDescription, privacy: .public)")

                    // Reassign entire array to trigger SwiftUI re-render
                    var steps = installationSteps
                    steps[i].status = .failed(error.localizedDescription)
                    steps[i].message = error.localizedDescription
                    installationSteps = steps
                }
            }

            MCPLogger.ui.info("Installation process complete for '\(serverName, privacy: .public)'")
        }
    }
}

struct PackageInfoCard: View {
    let package: MCPPackage

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                PackageTypeBadge(type: package.registryType)

                Text(package.identifier)
                    .font(.system(.body, design: .monospaced))
                    .textSelection(.enabled)

                Spacer()

                CopyButton(package.identifier)
                    .buttonStyle(.borderless)
                    .help("Copy to clipboard")
            }

            if let transport = package.transport {
                HStack {
                    Text("Transport:")
                        .foregroundStyle(.secondary)
                    Text(transport.type.rawValue)
                        .font(.system(.body, design: .monospaced))
                }
                .font(.caption)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(nsColor: .controlBackgroundColor))
        .cornerRadius(8)
    }
}

struct AuthCredentialCard: View {
    let credential: MCPEnvironmentVariable

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                Image(systemName: "lock.fill")
                    .foregroundStyle(.orange)

                Text(credential.name)
                    .font(.system(.body, design: .monospaced))
                    .fontWeight(.medium)
            }

            if let description = credential.description {
                Text(description)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            if let format = credential.format {
                HStack(spacing: 4) {
                    Text("Format:")
                        .foregroundStyle(.tertiary)
                    Text(format)
                        .font(.system(.caption, design: .monospaced))
                }
                .font(.caption)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(nsColor: .controlBackgroundColor))
        .cornerRadius(8)
    }
}

#Preview {
    ServerDetailView(server: MCPServer(
        name: "io.github.example/filesystem",
        title: "Filesystem Server",
        description: "A server for file system operations with support for reading and writing files.",
        version: "1.0.0",
        packages: [MCPPackage(
            registryType: .npm,
            identifier: "@modelcontextprotocol/server-filesystem",
            transport: MCPTransport(type: .stdio),
            environmentVariables: [
                MCPEnvironmentVariable(name: "ALLOWED_PATHS", description: "Comma-separated list of allowed paths"),
                MCPEnvironmentVariable(name: "API_KEY", description: "API key for authentication", isSecret: true)
            ]
        )],
        repository: MCPRepository(url: "https://github.com/modelcontextprotocol/servers")
    ))
    .environmentObject(AppState())
    .frame(width: 500, height: 800)
}
