import SwiftUI

/// Sidebar navigation view with favorites and quick links
@MainActor
struct SidebarView: View {
    // MARK: - Environment

    @Environment(NavigationState.self) private var navigationState
    @Environment(WebViewState.self) private var webViewState

    // MARK: - Body

    var body: some View {
        List(selection: Binding(
            get: { navigationState.selectedSidebarItem },
            set: { newValue in
                if let item = newValue {
                    handleSelection(item)
                }
            }
        )) {
            // Quick Links Section
            Section("Quick Links") {
                NavigationLink(value: SidebarItem.home) {
                    Label("Home", systemImage: "house")
                }

                NavigationLink(value: SidebarItem.notifications) {
                    Label("Notifications", systemImage: "bell")
                }

                NavigationLink(value: SidebarItem.pullRequests) {
                    Label("Pull Requests", systemImage: "arrow.triangle.pull")
                }

                NavigationLink(value: SidebarItem.issues) {
                    Label("Issues", systemImage: "exclamationmark.circle")
                }

                NavigationLink(value: SidebarItem.repositories) {
                    Label("Repositories", systemImage: "folder")
                }
            }

            // Favorites Section
            if !navigationState.favoriteRepos.isEmpty {
                Section("Favorites") {
                    ForEach(navigationState.favoriteRepos) { repo in
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundStyle(.yellow)
                                .font(.caption)

                            Text(repo.fullName)
                                .font(.system(.body, design: .monospaced))
                        }
                        .contextMenu {
                            Button("Remove from Favorites", systemImage: "star.slash") {
                                navigationState.removeFavorite(repo)
                            }

                            Button("Copy URL", systemImage: "doc.on.doc") {
                                NSPasteboard.general.clearContents()
                                NSPasteboard.general.setString(repo.url, forType: .string)
                            }
                        }
                        .onTapGesture {
                            if let url = URL(string: repo.url) {
                                Task {
                                    await webViewState.load(url: url)
                                }
                            }
                        }
                    }
                }
            }

            // Bookmarks Section
            if !navigationState.bookmarks.isEmpty {
                Section("Bookmarks") {
                    ForEach(navigationState.bookmarks) { bookmark in
                        NavigationLink(value: SidebarItem.bookmark(bookmark)) {
                            Label(bookmark.title, systemImage: "bookmark")
                        }
                        .contextMenu {
                            Button("Remove Bookmark", systemImage: "trash") {
                                navigationState.removeBookmark(bookmark)
                            }

                            Button("Copy URL", systemImage: "doc.on.doc") {
                                NSPasteboard.general.clearContents()
                                NSPasteboard.general.setString(bookmark.url, forType: .string)
                            }
                        }
                    }
                }
            }
        }
        .listStyle(.sidebar)
        .navigationTitle("GitHub")
    }

    // MARK: - Methods

    private func handleSelection(_ item: SidebarItem) {
        navigationState.selectSidebarItem(item)

        // Navigate to appropriate URL
        let urlString: String

        switch item {
        case .home:
            urlString = "https://github.com"
        case .notifications:
            urlString = "https://github.com/notifications"
        case .pullRequests:
            urlString = "https://github.com/pulls"
        case .issues:
            urlString = "https://github.com/issues"
        case .repositories:
            urlString = "https://github.com?tab=repositories"
        case .favorites:
            urlString = "https://github.com/stars"
        case .bookmark(let bookmark):
            urlString = bookmark.url
        }

        Task {
            await webViewState.load(urlString: urlString)
        }
    }
}

// MARK: - Preview

#Preview {
    NavigationSplitView {
        SidebarView()
            .environment(NavigationState())
            .environment(WebViewState())
    } detail: {
        Text("Detail View")
    }
    .frame(width: 800, height: 600)
}
