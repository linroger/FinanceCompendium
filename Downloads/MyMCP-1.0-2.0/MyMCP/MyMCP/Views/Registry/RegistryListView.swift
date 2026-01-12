import SwiftUI

struct RegistryListView: View {
    @EnvironmentObject var appState: AppState
    @StateObject private var viewModel = RegistryViewModel()
    @State private var selectedServer: MCPServer?

    var body: some View {
        HSplitView {
            serverList
                .frame(minWidth: 300, idealWidth: 400)

            Group {
                if let server = selectedServer {
                    ServerDetailView(server: server)
                } else {
                    EmptyStateView(
                        title: "Select a Server",
                        message: "Choose a server from the list to view details and install.",
                        systemImage: "server.rack"
                    )
                }
            }
            .frame(minWidth: 400)
        }
        .navigationTitle("MCP Registry")
        .onChange(of: appState.pendingRegistrySelection) { _, newValue in
            if let server = newValue {
                selectedServer = server
                appState.pendingRegistrySelection = nil
            }
        }
        .onAppear {
            if let pending = appState.pendingRegistrySelection {
                selectedServer = pending
                appState.pendingRegistrySelection = nil
            }
        }
    }

    private var serverList: some View {
        VStack(spacing: 0) {
            // Search bar with refresh
            HStack(spacing: 12) {
                SearchField(text: $viewModel.searchText, placeholder: "Search servers...")

                Button(action: {
                    Task { await appState.refreshAll() }
                }) {
                    Image(systemName: "arrow.clockwise")
                }
                .buttonStyle(.borderless)
                .help("Refresh")
                .disabled(appState.isLoadingRegistry || appState.isLoadingClients)
            }
            .padding(.horizontal)
            .padding(.top)

            // Filter and sort pickers - glass pill style
            HStack {
                // Type filter
                Picker("Type", selection: $viewModel.selectedPackageType) {
                    Text("All").tag(nil as PackageRegistryType?)
                    ForEach(PackageRegistryType.allCases, id: \.self) { type in
                        Text(type.displayName).tag(type as PackageRegistryType?)
                    }
                }
                .pickerStyle(.menu)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 8))

                Spacer()

                // Sort picker
                Picker("Sort", selection: $viewModel.sortOption) {
                    ForEach(SortOption.allCases) { option in
                        Label(option.rawValue, systemImage: option.systemImage)
                            .tag(option)
                    }
                }
                .pickerStyle(.menu)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 8))
            }
            .padding(.horizontal)
            .padding(.vertical, 12)

            Divider()

            // Server list - wait for both registry and GitHub metadata
            if appState.isLoadingRegistry || appState.isLoadingMetadata {
                VStack {
                    Spacer()
                    ProgressView("Loading registry...")
                    Spacer()
                }
            } else {
                let filteredServers = viewModel.filteredServers(
                    from: appState.registryServers,
                    metadata: appState.githubMetadata
                )

                if filteredServers.isEmpty {
                    EmptyStateView(
                        title: "No Servers Found",
                        message: viewModel.searchText.isEmpty
                            ? "The registry appears to be empty."
                            : "Try adjusting your search or filters.",
                        systemImage: "magnifyingglass"
                    )
                } else {
                    List(filteredServers, selection: $selectedServer) { server in
                        RegistryServerRow(
                            server: server,
                            metadata: appState.githubMetadata[server.name]
                        )
                        .tag(server)
                    }
                    .listStyle(.inset)
                }
            }
        }
    }
}

#Preview {
    RegistryListView()
        .environmentObject(AppState())
}
