import SwiftUI

/// ViewModel for installed servers view
@MainActor
class InstalledServersViewModel: ObservableObject {
    @Published var searchText: String = ""
    @Published var selectedClientFilter: MCPClientType? = nil

    func filteredServers(from servers: [UnifiedInstalledServer]) -> [UnifiedInstalledServer] {
        var result = servers.matching(query: searchText)

        if let clientType = selectedClientFilter {
            result = result.filter { $0.clients.keys.contains(clientType) }
        }

        return result.sorted { $0.name.lowercased() < $1.name.lowercased() }
    }

    func clearFilters() {
        searchText = ""
        selectedClientFilter = nil
    }
}
