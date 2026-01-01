//
//  CareerJourneyApp.swift
//  CareerJourney
//
//  Main app entry point following Apple Sample Code patterns
//

import SwiftUI
import SwiftData
import AppKit
import OSLog

// MARK: - Logger Extension
extension Logger {
    static let app = Logger(subsystem: "com.careerkit.app", category: "CareerJourney")
    static let data = Logger(subsystem: "com.careerkit.app", category: "Data")
    static let ui = Logger(subsystem: "com.careerkit.app", category: "UI")
    static let accessibility = Logger(subsystem: "com.careerkit.app", category: "Accessibility")
}

// MARK: - AppDelegate for macOS lifecycle
class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
    
    func applicationWillTerminate(_ notification: Notification) {
        Logger.app.info("Application will terminate")
    }
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        Logger.app.info("Application did finish launching")
    }
}

@main
struct CareerJourneyApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    // Set up the model container for SwiftData
    let container: ModelContainer
    
    // Shared managers and services
    private let importExportHelper = ImportExportHelper()
    private let performanceOptimizer: PerformanceOptimizer
    @State private var modelData = CareerDataModel()
@State private var accessibilityManager = AccessibilityManager()
    @State private var keyboardManager = KeyboardShortcutManager()
    private let settingsManager = SettingsManager.shared
    
    init() {
        // Initialize container using factory method
        let (containerResult, performanceOptimizerResult) = Self.createContainer()
        
        switch containerResult {
        case .success(let containerInstance):
            self.container = containerInstance
            self.performanceOptimizer = performanceOptimizerResult
            Logger.app.info("✅ CareerKit initialized successfully")
            
        case .failure(let error):
            Logger.app.critical("❌ Critical: Failed to initialize SwiftData container: \(error.localizedDescription)")
            
            // Report critical error to user
            Task { @MainActor in
                UnifiedErrorManager.shared.show(
                    message: "Database initialization failed. The app will run with limited functionality.",
                    severity: .error,
                    suggestion: "Try restarting the application. If the problem persists, contact support."
                )
            }
            
            // Force create in-memory fallback
            let inMemoryConfig = ModelConfiguration(isStoredInMemoryOnly: true)
            do {
                self.container = try ModelContainer(
                    for: SwiftDataJobApplication.self,
                         SwiftDataJobDocument.self,
                         SwiftDataNote.self,
                         SwiftDataDocumentCategory.self,
                    configurations: inMemoryConfig
                )
                self.performanceOptimizer = PerformanceOptimizer(container: self.container)
            } catch {
                // Ultimate fallback - use minimal in-memory container with logging
                Logger.app.fault("❌ Fatal: Even in-memory database creation failed: \(error.localizedDescription)")
                do {
                    let fallbackConfig = ModelConfiguration(isStoredInMemoryOnly: true)
                    self.container = try ModelContainer(for: SwiftDataJobApplication.self, configurations: fallbackConfig)
                    self.performanceOptimizer = PerformanceOptimizer(container: self.container)
                    Logger.app.info("✅ Created minimal in-memory fallback container")
                } catch {
                    // Last resort: create empty container with just JobApplication
                    Logger.app.critical("❌ Critical: All database initialization attempts failed: \(error.localizedDescription)")
                    // This should never happen, but if it does, the app will crash
                    // which is better than silent failure with force unwrap
                    fatalError("Failed to create any database container: \(error.localizedDescription)")
                }
            }
        }
    }
    
    /// Factory method to create ModelContainer with proper error recovery
    private static func createContainer() -> (Result<ModelContainer, Error>, PerformanceOptimizer) {
        
        // First attempt: Normal initialization
        do {
            let config = ModelConfiguration(
                isStoredInMemoryOnly: false,
                allowsSave: true,
                groupContainer: .automatic,
                cloudKitDatabase: .none
            )
            
            let container = try ModelContainer(
                for: SwiftDataJobApplication.self,
                     SwiftDataJobDocument.self,
                     SwiftDataNote.self,
                     SwiftDataDocumentCategory.self,
                configurations: config
            )
            
            let performanceOptimizer = PerformanceOptimizer(container: container)
            return (.success(container), performanceOptimizer)
            
        } catch {
            Logger.app.error("⚠️ SwiftData initialization failed: \(error.localizedDescription)")
            Logger.app.info("🔄 Attempting data migration and recovery...")
            
            // Report to unified error manager for user-facing notification
            Task { @MainActor in
                UnifiedErrorManager.shared.show(error, severity: .error, suggestion: "We're attempting to recover your data. The app may need to restart.")
            }
            
            // Second attempt: Clear database and retry
            if let appSupport = FileManager.default.urls(for: .applicationSupportDirectory, 
                                                        in: .userDomainMask).first {
                let dbURL = appSupport.appendingPathComponent("default.store")
                try? FileManager.default.removeItem(at: dbURL)
                Logger.app.info("🗑️ Cleared old database file")
            }
            
            do {
                let freshConfig = ModelConfiguration(
                    isStoredInMemoryOnly: false,
                    allowsSave: true,
                    groupContainer: .automatic,
                    cloudKitDatabase: .none
                )
                
                let freshContainer = try ModelContainer(
                    for: SwiftDataJobApplication.self,
                         SwiftDataJobDocument.self,
                         SwiftDataNote.self,
                         SwiftDataDocumentCategory.self,
                    configurations: freshConfig
                )
                
                Logger.app.info("✅ Successfully created fresh database")
                let performanceOptimizer = PerformanceOptimizer(container: freshContainer)
                return (.success(freshContainer), performanceOptimizer)
                
            } catch {
                // Both attempts failed
                Logger.app.error("❌ Both database initialization attempts failed: \(error.localizedDescription)")
                // Create a minimal in-memory container as last resort
                // This should never fail for SwiftDataJobApplication alone
                let minimalConfig = ModelConfiguration(isStoredInMemoryOnly: true)
                do {
                    let minimalContainer = try ModelContainer(for: SwiftDataJobApplication.self, configurations: minimalConfig)
                    Logger.app.info("✅ Created minimal in-memory container after all attempts failed")
                    return (.failure(error), PerformanceOptimizer(container: minimalContainer))
                } catch {
                    // This should never happen, but if it does, we need to crash
                    // because the app cannot function without a database
                    Logger.app.critical("❌ Critical: Cannot create any database container. App cannot function.")
                    fatalError("Failed to create any database container: \(error.localizedDescription)")
                }
            }
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
                .environmentObject(keyboardManager)
                .environmentObject(accessibilityManager)
                .environmentObject(settingsManager)
                .onAppear {
                    Logger.app.info("✅ WindowGroup ContentView appeared")
                    NotificationCenter.default.post(name: .appearanceDidChange, object: nil)
                    settingsManager.updateAppearance()
                }
                .preferredColorScheme(settingsManager.useSystemAppearance ? nil :
                                       (settingsManager.isDarkMode ? .dark : .light))
                .sheet(isPresented: Binding(
                    get: { keyboardManager.showingKeyboardHelp },
                    set: { keyboardManager.showingKeyboardHelp = $0 }
                )) {
                    KeyboardHelpView()
                        .environmentObject(settingsManager)
                        .frame(minWidth: 600, idealWidth: 700, maxWidth: 800,
                               minHeight: 400, idealHeight: 500, maxHeight: 600)
                }
                .withUnifiedErrorHandling()
                .frame(minWidth: 1000, idealWidth: 1400, maxWidth: .infinity,
                       minHeight: 700, idealHeight: 900, maxHeight: .infinity)
                // Handle import from Safari clipper

        }
        .defaultSize(width: 1400, height: 900)
        .modelContainer(container)
        .windowResizability(.contentSize)
        .windowToolbarStyle(.unified(showsTitle: true))
        .windowStyle(.automatic)
        .commands {
            MenuBarCommands()
        }

        Settings {
            SettingsView()
                .environmentObject(settingsManager)
                .environment(modelData)
                .frame(minWidth: 720, idealWidth: 800, maxWidth: 920,
                       minHeight: 540, idealHeight: 620, maxHeight: 740)
        }
    }
}

// MARK: - Notification Names
extension Notification.Name {
    static let appearanceDidChange = Notification.Name("appearanceDidChange")
    
    // Menu commands
    static let menuAddJob = Notification.Name("menuAddJob")
    static let menuEditJob = Notification.Name("menuEditJob")
    static let menuDeleteJob = Notification.Name("menuDeleteJob")
    static let menuImportData = Notification.Name("menuImportData")
    static let menuExportData = Notification.Name("menuExportData")
    static let menuImportCSV = Notification.Name("menuImportCSV")
    static let menuExportCSV = Notification.Name("menuExportCSV")
    static let menuExportNotes = Notification.Name("menuExportNotes")
    static let menuExportDocumentsFolder = Notification.Name("menuExportDocumentsFolder")
    static let menuShowJobDetails = Notification.Name("menuShowJobDetails")
    static let menuShowDocuments = Notification.Name("menuShowDocuments")
    static let menuShowNotes = Notification.Name("menuShowNotes")
    static let menuShowStatistics = Notification.Name("menuShowStatistics")
}

enum SettingsLauncher {
    static func open() {
        if NSApp.responds(to: Selector(("showSettingsWindow:"))) {
            NSApp.sendAction(Selector(("showSettingsWindow:")), to: nil, from: nil)
        } else {
            NSApp.sendAction(Selector(("orderFrontPreferencesWindow:")), to: nil, from: nil)
        }
    }
}
