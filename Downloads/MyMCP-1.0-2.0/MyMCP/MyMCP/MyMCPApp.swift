import SwiftUI
import Sentry

enum WindowID {
    static let main = "main-window"
}

@main
struct MyMCPApp: App {
    @StateObject private var appState = AppState()

    init() {
        SentrySDK.start { options in
            options.dsn = "https://9c4e1a8b99ee3935fc23440dfbfe6f9c@o4509384540880896.ingest.us.sentry.io/4510574581579776"

            // Disable verbose Sentry logging
            options.debug = false

            // Performance monitoring (profiling enabled by default in SDK 9.0+)
            options.tracesSampleRate = 1.0

            // Include user IP and stack traces
            options.sendDefaultPii = true
            options.attachStacktrace = true

            // Set environment
            #if DEBUG
            options.environment = "development"
            #else
            options.environment = "production"
            #endif
        }
    }

    var body: some Scene {
        // Main window
        WindowGroup(id: WindowID.main) {
            ContentView()
                .frame(minWidth: 900, minHeight: 600)
                .environmentObject(appState)
                .handlesExternalEvents(preferring: [WindowID.main], allowing: [WindowID.main])
        }
        .handlesExternalEvents(matching: [WindowID.main])
        .windowStyle(.automatic)
        .defaultSize(width: 1100, height: 750)
        .commands {
            CommandGroup(replacing: .newItem) { }

            CommandMenu("Server") {
                Button("Refresh All") {
                    Task { await appState.refreshAll() }
                }
                .keyboardShortcut("r", modifiers: .command)
            }
        }

        // Menu bar extra
        MenuBarExtra("MyMCP", systemImage: "server.rack") {
            MenuBarView()
                .environmentObject(appState)
        }
        .menuBarExtraStyle(.window)
    }
}
