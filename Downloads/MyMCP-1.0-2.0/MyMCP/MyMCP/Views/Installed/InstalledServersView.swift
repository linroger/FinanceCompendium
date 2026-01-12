import SwiftUI

struct InstalledServersView: View {
    @EnvironmentObject var appState: AppState
    @StateObject private var viewModel = InstalledServersViewModel()
    @State private var selectedServer: UnifiedInstalledServer?

    // Uninstall flow state
    @State private var serverToUninstall: UnifiedInstalledServer?
    @State private var showUninstallSheet = false
    @State private var selectedClientsToUninstall: Set<MCPClientType> = []
    @State private var uninstallSteps: [InstallationStep] = []
    @State private var showProgressSheet = false

    var body: some View {
        HSplitView {
            serverList
                .frame(minWidth: 300, idealWidth: 400)

            Group {
                if let server = selectedServer {
                    ServerConfigView(server: server)
                } else {
                    EmptyStateView(
                        title: "Select a Server",
                        message: "Choose an installed server to view its configuration.",
                        systemImage: "gearshape"
                    )
                }
            }
            .frame(minWidth: 400)
        }
        .navigationTitle("Installed Servers")
        .sheet(isPresented: $showUninstallSheet) {
            UninstallConfirmationSheet(
                server: serverToUninstall,
                selectedClients: $selectedClientsToUninstall,
                onConfirm: performUninstall,
                onCancel: { showUninstallSheet = false }
            )
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

    private var serverList: some View {
        VStack(spacing: 0) {
            // Search bar
            SearchField(text: $viewModel.searchText, placeholder: "Search installed servers...")
                .padding()

            // Filters
            HStack {
                Picker("Client", selection: $viewModel.selectedClientFilter) {
                    Text("All Clients").tag(nil as MCPClientType?)
                    ForEach(appState.installedClients, id: \.type) { client in
                        Text(client.type.displayName).tag(client.type as MCPClientType?)
                    }
                }
                .pickerStyle(.menu)
                .frame(maxWidth: 150)

                Spacer()

                if viewModel.searchText.isEmpty == false ||
                   viewModel.selectedClientFilter != nil {
                    Button("Clear") {
                        viewModel.clearFilters()
                    }
                    .buttonStyle(.borderless)
                    .foregroundStyle(.secondary)
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 8)

            Divider()

            // Server list
            let filteredServers = viewModel.filteredServers(from: appState.installedServers)

            if filteredServers.isEmpty {
                if appState.installedServers.isEmpty {
                    EmptyStateView(
                        title: "No Servers Installed",
                        message: "Install servers from the Registry to get started.",
                        systemImage: "tray"
                    )
                } else {
                    EmptyStateView(
                        title: "No Matching Servers",
                        message: "Try adjusting your search or filters.",
                        systemImage: "magnifyingglass"
                    )
                }
            } else {
                List(filteredServers, selection: $selectedServer) { server in
                    InstalledServerRow(server: server, onUninstall: { server in
                        serverToUninstall = server
                        selectedClientsToUninstall = Set(server.installedClientTypes)
                        showUninstallSheet = true
                    })
                    .tag(server)
                }
                .listStyle(.inset)
            }
        }
    }

    // MARK: - Uninstall Actions

    private func performUninstall() {
        guard let server = serverToUninstall else { return }
        showUninstallSheet = false

        // Build steps for each selected client
        uninstallSteps = selectedClientsToUninstall.compactMap { clientType in
            guard let client = appState.clients.first(where: { $0.type == clientType }),
                  let configPath = client.configPath else { return nil }
            return InstallationStep(clientType: clientType, configPath: configPath)
        }

        showProgressSheet = true

        Task {
            for i in uninstallSteps.indices {
                let clientType = uninstallSteps[i].clientType
                var steps = uninstallSteps
                steps[i].status = .inProgress
                steps[i].message = "Removing from \(clientType.displayName)..."
                uninstallSteps = steps

                do {
                    // For Claude Code, uninstall from all scopes
                    if clientType == .claudeCode {
                        for (scope, _) in server.claudeCodeScopes {
                            try await appState.uninstallServer(server.name, fromClient: clientType, claudeCodeScope: scope)
                        }
                    } else {
                        try await appState.uninstallServer(server.name, fromClient: clientType)
                    }
                    var steps = uninstallSteps
                    steps[i].status = .success
                    steps[i].message = "Removed successfully"
                    uninstallSteps = steps
                } catch {
                    var steps = uninstallSteps
                    steps[i].status = .failed(error.localizedDescription)
                    steps[i].message = error.localizedDescription
                    uninstallSteps = steps
                }
            }

            // Clear selection if the uninstalled server was selected
            if selectedServer?.id == server.id {
                selectedServer = nil
            }

            serverToUninstall = nil
            selectedClientsToUninstall.removeAll()
        }
    }
}

#Preview {
    InstalledServersView()
        .environmentObject(AppState())
}
