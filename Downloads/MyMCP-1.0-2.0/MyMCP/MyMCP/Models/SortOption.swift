import Foundation

/// Sort options for the registry list
enum SortOption: String, CaseIterable, Identifiable {
    case stars = "Stars"
    case recentlyUpdated = "Recently Updated"
    case forks = "Forks"
    case name = "Name"

    var id: String { rawValue }

    var systemImage: String {
        switch self {
        case .stars: return "star.fill"
        case .recentlyUpdated: return "clock.fill"
        case .forks: return "arrow.triangle.branch"
        case .name: return "textformat.abc"
        }
    }
}
