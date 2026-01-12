import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appState: AppState
    @State private var columnVisibility: NavigationSplitViewVisibility = .all

    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility) {
            SidebarView(selection: $appState.selectedSection)
                .navigationSplitViewColumnWidth(min: 200, ideal: 240, max: 300)
        } detail: {
            detailView
        }
        .navigationSplitViewStyle(.balanced)
        .task {
            await appState.loadInitialData()
        }
        .alert(item: $appState.error) { error in
            Alert(
                title: Text("Error"),
                message: Text(error.localizedDescription),
                dismissButton: .default(Text("OK")) {
                    appState.clearError()
                }
            )
        }
    }

    @ViewBuilder
    private var detailView: some View {
        switch appState.selectedSection {
        case .installed:
            InstalledServersView()
        case .registry:
            RegistryListView()
        case .client(let clientType):
            if let client = appState.clients.first(where: { $0.type == clientType }) {
                ClientDetailView(client: client)
            } else {
                EmptyStateView(
                    title: "\(clientType.displayName) Not Found",
                    message: "This client is not installed on your system.",
                    systemImage: "questionmark.folder"
                )
            }
        case .none:
            EmptyStateView(
                title: "Welcome to MyMCP",
                message: "Select a section from the sidebar to get started managing your MCP servers.",
                systemImage: "sidebar.left"
            )
        }
    }
}

#Preview {
    ContentView()
        .frame(width: 1000, height: 700)
        .environmentObject(AppState())
}
