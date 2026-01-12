import SwiftUI

/// GitHub Desktop Wrapper - Modern SwiftUI macOS App
/// Optimized for Apple Silicon (M4) with Swift 6.2 strict concurrency
@main
struct GitHubApp: App {
    // MARK: - State Management

    @State private var navigationState = NavigationState()
    @State private var webViewState = WebViewState()

    // MARK: - App Lifecycle

    init() {
        // Configure app-wide settings
        setupAppearance()
    }

    // MARK: - Scene Configuration

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(navigationState)
                .environment(webViewState)
                .frame(minWidth: 800, minHeight: 600)
                .onAppear {
                    configureWindow()
                }
        }
        .windowStyle(.automatic)
        .windowToolbarStyle(.unified)
        .commands {
            // Custom menu commands
            CommandGroup(replacing: .appInfo) {
                Button("About GitHub App") {
                    NSApplication.shared.orderFrontStandardAboutPanel(
                        options: [
                            .applicationName: "GitHub",
                            .applicationVersion: "2.0.0",
                            .version: "2.0.0 (Swift 6.2)",
                            .credits: NSAttributedString(
                                string: "A modern macOS app for GitHub.com\n\nOptimized for Apple Silicon\nDeveloped with SwiftUI & Swift 6.2"
                            )
                        ]
                    )
                }
            }

            // Navigation commands
            CommandGroup(after: .sidebar) {
                Button("Toggle Sidebar") {
                    navigationState.isSidebarVisible.toggle()
                }
                .keyboardShortcut("b", modifiers: [.command])
            }

            // View commands
            CommandMenu("View") {
                Button("Reload") {
                    Task { @MainActor in
                        await webViewState.reload()
                    }
                }
                .keyboardShortcut("r", modifiers: [.command])

                Divider()

                Button("Back") {
                    Task { @MainActor in
                        webViewState.goBack()
                    }
                }
                .keyboardShortcut("[", modifiers: [.command])
                .disabled(!webViewState.canGoBack)

                Button("Forward") {
                    Task { @MainActor in
                        webViewState.goForward()
                    }
                }
                .keyboardShortcut("]", modifiers: [.command])
                .disabled(!webViewState.canGoForward)

                Divider()

                Button("Home") {
                    Task { @MainActor in
                        await webViewState.navigateToHome()
                    }
                }
                .keyboardShortcut("h", modifiers: [.command, .shift])
            }
        }

        #if DEBUG
        // Settings window for development
        Settings {
            SettingsView()
        }
        #endif
    }

    // MARK: - Private Methods

    private func setupAppearance() {
        // Configure app-wide appearance settings
        // This will respect system Dark Mode automatically via SwiftUI
    }

    @MainActor
    private func configureWindow() {
        // Additional window configuration
        if let window = NSApplication.shared.windows.first {
            window.titlebarAppearsTransparent = true
            window.titleVisibility = .hidden
        }
    }
}

// MARK: - Settings View

#if DEBUG
struct SettingsView: View {
    var body: some View {
        TabView {
            GeneralSettingsView()
                .tabItem {
                    Label("General", systemImage: "gear")
                }

            AdvancedSettingsView()
                .tabItem {
                    Label("Advanced", systemImage: "gearshape.2")
                }
        }
        .frame(width: 450, height: 300)
    }
}

struct GeneralSettingsView: View {
    @AppStorage("startURL") private var startURL = "https://github.com"

    var body: some View {
        Form {
            Section {
                TextField("Start URL", text: $startURL)
                    .textFieldStyle(.roundedBorder)
            } header: {
                Text("Startup")
            }
        }
        .padding()
    }
}

struct AdvancedSettingsView: View {
    var body: some View {
        Form {
            Section {
                Text("Developer settings")
                    .foregroundStyle(.secondary)
            } header: {
                Text("Advanced")
            }
        }
        .padding()
    }
}
#endif
