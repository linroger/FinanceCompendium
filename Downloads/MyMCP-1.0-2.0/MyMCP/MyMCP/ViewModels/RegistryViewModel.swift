import SwiftUI

/// ViewModel for registry browsing
@MainActor
class RegistryViewModel: ObservableObject {
    @Published var searchText: String = ""
    @Published var selectedPackageType: PackageRegistryType? = nil
    @Published var sortOption: SortOption = .stars

    func filteredServers(from servers: [MCPServer], metadata: [String: GitHubMetadata]) -> [MCPServer] {
        var result = servers.matching(query: searchText)

        // Apply package type filter
        if let packageType = selectedPackageType {
            result = result.filter {
                $0.packages.contains { $0.registryType == packageType }
            }
        }

        // Apply sorting based on selected option
        result.sort { server1, server2 in
            let meta1 = metadata[server1.name]
            let meta2 = metadata[server2.name]

            switch sortOption {
            case .stars:
                // Servers with metadata sorted by stars (desc), then servers without at bottom
                let stars1 = meta1?.stars ?? -1
                let stars2 = meta2?.stars ?? -1
                if stars1 != stars2 {
                    return stars1 > stars2
                }
                return server1.displayName.lowercased() < server2.displayName.lowercased()

            case .forks:
                let forks1 = meta1?.forks ?? -1
                let forks2 = meta2?.forks ?? -1
                if forks1 != forks2 {
                    return forks1 > forks2
                }
                return server1.displayName.lowercased() < server2.displayName.lowercased()

            case .recentlyUpdated:
                // Sort by last commit date (most recent first)
                let date1 = meta1?.lastCommitAt ?? Date.distantPast
                let date2 = meta2?.lastCommitAt ?? Date.distantPast
                if date1 != date2 {
                    return date1 > date2
                }
                return server1.displayName.lowercased() < server2.displayName.lowercased()

            case .name:
                return server1.displayName.lowercased() < server2.displayName.lowercased()
            }
        }

        return result
    }

    func clearFilters() {
        searchText = ""
        selectedPackageType = nil
        sortOption = .stars
    }
}
