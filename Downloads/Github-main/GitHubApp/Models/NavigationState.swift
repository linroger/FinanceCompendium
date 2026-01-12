import SwiftUI
import Observation

/// Navigation state management using Swift 6.2's @Observable macro
/// This provides automatic SwiftUI view updates without manual @Published properties
@Observable
@MainActor
final class NavigationState: Sendable {
    // MARK: - Properties

    /// Controls sidebar visibility
    var isSidebarVisible: Bool = true

    /// Currently selected sidebar item
    var selectedSidebarItem: SidebarItem? = .home

    /// Favorite repositories (persisted)
    var favoriteRepos: [RepositoryItem] = []

    /// Bookmark items
    var bookmarks: [BookmarkItem] = []

    // MARK: - Initialization

    init() {
        loadPersistedData()
    }

    // MARK: - Methods

    func selectSidebarItem(_ item: SidebarItem) {
        selectedSidebarItem = item
    }

    func toggleSidebar() {
        isSidebarVisible.toggle()
    }

    func addFavorite(_ repo: RepositoryItem) {
        if !favoriteRepos.contains(where: { $0.id == repo.id }) {
            favoriteRepos.append(repo)
            persistData()
        }
    }

    func removeFavorite(_ repo: RepositoryItem) {
        favoriteRepos.removeAll { $0.id == repo.id }
        persistData()
    }

    func addBookmark(_ bookmark: BookmarkItem) {
        if !bookmarks.contains(where: { $0.id == bookmark.id }) {
            bookmarks.append(bookmark)
            persistData()
        }
    }

    func removeBookmark(_ bookmark: BookmarkItem) {
        bookmarks.removeAll { $0.id == bookmark.id }
        persistData()
    }

    // MARK: - Persistence

    private func loadPersistedData() {
        // Load from UserDefaults
        if let data = UserDefaults.standard.data(forKey: "favoriteRepos"),
           let decoded = try? JSONDecoder().decode([RepositoryItem].self, from: data) {
            favoriteRepos = decoded
        }

        if let data = UserDefaults.standard.data(forKey: "bookmarks"),
           let decoded = try? JSONDecoder().decode([BookmarkItem].self, from: data) {
            bookmarks = decoded
        }
    }

    private func persistData() {
        if let encoded = try? JSONEncoder().encode(favoriteRepos) {
            UserDefaults.standard.set(encoded, forKey: "favoriteRepos")
        }

        if let encoded = try? JSONEncoder().encode(bookmarks) {
            UserDefaults.standard.set(encoded, forKey: "bookmarks")
        }
    }
}

// MARK: - Supporting Types

enum SidebarItem: Hashable, Sendable {
    case home
    case notifications
    case pullRequests
    case issues
    case repositories
    case favorites
    case bookmark(BookmarkItem)
}

struct RepositoryItem: Identifiable, Codable, Hashable, Sendable {
    let id: UUID
    let name: String
    let owner: String
    let url: String

    var fullName: String {
        "\(owner)/\(name)"
    }

    init(id: UUID = UUID(), name: String, owner: String, url: String) {
        self.id = id
        self.name = name
        self.owner = owner
        self.url = url
    }
}

struct BookmarkItem: Identifiable, Codable, Hashable, Sendable {
    let id: UUID
    let title: String
    let url: String

    init(id: UUID = UUID(), title: String, url: String) {
        self.id = id
        self.title = title
        self.url = url
    }
}
