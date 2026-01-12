import SwiftUI

enum SidebarSection: Hashable {
    case installed
    case registry
    case client(MCPClientType)
}

struct SidebarView: View {
    @EnvironmentObject var appState: AppState
    @Binding var selection: SidebarSection?

    var body: some View {
        List(selection: $selection) {
            Section {
                NavigationLink(value: SidebarSection.installed) {
                    Label {
                        HStack {
                            Text("Installed")
                            Spacer()
                            if appState.installedServers.count > 0 {
                                CountBadge(count: appState.installedServers.count)
                            }
                        }
                    } icon: {
                        Image(systemName: "square.stack.3d.up")
                    }
                }

                NavigationLink(value: SidebarSection.registry) {
                    Label {
                        HStack {
                            Text("Registry")
                            Spacer()
                            if appState.isLoadingRegistry || appState.isLoadingMetadata {
                                ProgressView()
                                    .controlSize(.small)
                                    .scaleEffect(0.8)
                            } else if appState.registryServers.count > 0 {
                                CountBadge(count: appState.registryServers.count)
                            }
                        }
                    } icon: {
                        Image(systemName: "globe")
                    }
                }
            }

            if !appState.installedClients.isEmpty {
                Section("Clients") {
                    ForEach(appState.installedClients, id: \.type) { client in
                        NavigationLink(value: SidebarSection.client(client.type)) {
                            SidebarClientRow(client: client)
                        }
                    }
                }
            }

            if !appState.notInstalledClients.isEmpty {
                Section {
                    DisclosureGroup("Undetected Clients") {
                        ForEach(appState.notInstalledClients, id: \.type) { client in
                            NavigationLink(value: SidebarSection.client(client.type)) {
                                SidebarClientRow(client: client)
                            }
                        }
                    }
                    .foregroundStyle(.secondary)
                }
            }
        }
        .listStyle(.sidebar)
        .navigationTitle("MyMCP")
    }
}

struct SidebarClientRow: View {
    let client: MCPClient

    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: client.type.systemIconFallback)
                .foregroundStyle(client.type.accentColor)
                .frame(width: 20)

            Text(client.type.displayName)

            Spacer()

            if client.installedServers.count > 0 {
                CountBadge(count: client.installedServers.count)
            }
        }
    }
}

#Preview {
    SidebarView(selection: .constant(.installed))
        .environmentObject(AppState())
        .frame(width: 250)
}
