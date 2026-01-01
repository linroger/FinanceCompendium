//
//  SettingsManager.swift
//  CareerKit
//
//  Settings and preferences manager for the application
//

import SwiftUI
import Combine
import OSLog

// MARK: - Enums

enum AppearanceMode: String, CaseIterable, Codable {
    case system = "System"
    case light = "Light"
    case dark = "Dark"
}

enum FontSize: String, CaseIterable, Codable {
    case small = "Small"
    case medium = "Medium"
    case large = "Large"
    
    var font: Font {
        switch self {
        case .small: return .caption
        case .medium: return .body
        case .large: return .title3
        }
    }
    
    var systemFontSize: CGFloat {
        switch self {
        case .small: return 12
        case .medium: return 14
        case .large: return 16
        }
    }
}

enum BackupFrequency: String, CaseIterable, Codable {
    case daily = "Daily"
    case weekly = "Weekly"
    case monthly = "Monthly"
}

@MainActor
final class SettingsManager: ObservableObject {
    static let shared = SettingsManager()

    private let logger = Logger(subsystem: "com.careerkit.settings", category: "SettingsManager")

    init() {
        logger.info("SettingsManager initialized")
    }
    
    // MARK: - General Settings
    
    @AppStorage("defaultJobStatus") var defaultJobStatus: JobStatus = .applied
    @AppStorage("autoSaveInterval") var autoSaveInterval: Int = 30 // seconds
    @AppStorage("dateFormat") var dateFormat: String = "MM/dd/yyyy"
    
    // MARK: - Notification Settings
    
    @AppStorage("showNewJobNotifications") var showNewJobNotifications: Bool = true
    @AppStorage("remindFollowUps") var remindFollowUps: Bool = true
    @AppStorage("dailySummaryNotifications") var dailySummaryNotifications: Bool = false
    
    // MARK: - Window Behavior
    
    @AppStorage("rememberWindowState") var rememberWindowState: Bool = true
    @AppStorage("closeToSystemTray") var closeToSystemTray: Bool = false
    @AppStorage("startMinimized") var startMinimized: Bool = false
    
    // MARK: - Appearance Settings
    
    @AppStorage("appearanceMode") var appearanceMode: AppearanceMode = .system
    @AppStorage("accentColorData") private var accentColorData: Data = Data()
    @AppStorage("sidebarWidth") private var sidebarWidthRaw: String = "280.0"
    var sidebarWidth: Double {
        get { Double(sidebarWidthRaw) ?? 280.0 }
        set { sidebarWidthRaw = String(format: "%.1f", newValue) }
    }
    @AppStorage("fontSize") var fontSize: FontSize = .medium
    @AppStorage("showJobThumbnails") var showJobThumbnails: Bool = true
    @AppStorage("showStatusBadges") var showStatusBadges: Bool = true
    @AppStorage("compactListView") var compactListView: Bool = false
    
    // Computed properties for appearance
    var useSystemAppearance: Bool {
        appearanceMode == .system
    }
    
    var isDarkMode: Bool {
        switch appearanceMode {
        case .system:
            return NSApp.effectiveAppearance.name == .darkAqua
        case .dark:
            return true
        case .light:
            return false
        }
    }
    
    // Computed property for accent color with proper encoding/decoding
    var accentColor: Color {
        get {
            if let nsColor = try? NSKeyedUnarchiver.unarchivedObject(ofClass: NSColor.self, from: accentColorData) {
                return Color(nsColor)
            }
            return .blue
        }
        set {
            // Convert SwiftUI Color to NSColor
            let nsColor = NSColor(newValue)
            if let data = try? NSKeyedArchiver.archivedData(withRootObject: nsColor, requiringSecureCoding: true) {
                accentColorData = data
            }
        }
    }
    
    // MARK: - Data Management
    
    @AppStorage("autoBackupToiCloud") var autoBackupToiCloud: Bool = false
    @AppStorage("backupFrequency") var backupFrequency: BackupFrequency = .weekly
    @AppStorage("backupRetention") var backupRetention: Int = 90 // days
    
    // MARK: - AI & Parsing Settings
    
    @AppStorage("enableAIParsing") var enableAIParsing: Bool = true
    @AppStorage("autoParseOnPaste") var autoParseOnPaste: Bool = true
    @AppStorage("extractSkillsAutomatically") var extractSkillsAutomatically: Bool = true
    @AppStorage("detectSalaryRanges") var detectSalaryRanges: Bool = true
    @AppStorage("identifyRemoteWork") var identifyRemoteWork: Bool = true
    @AppStorage("parsingConfidenceThreshold") private var parsingConfidenceThresholdRaw: String = "0.7"
    var parsingConfidenceThreshold: Double {
        get { Double(parsingConfidenceThresholdRaw) ?? 0.7 }
        set { parsingConfidenceThresholdRaw = String(format: "%.3f", newValue) }
    }
    @AppStorage("processDataLocallyOnly") var processDataLocallyOnly: Bool = true
    @AppStorage("clearParsingHistoryOnExit") var clearParsingHistoryOnExit: Bool = false
    @AppStorage("maxConcurrentParsingOperations") var maxConcurrentParsingOperations: Int = 2
    @AppStorage("parsingTimeout") var parsingTimeout: Int = 60 // seconds
    
    // MARK: - Privacy Settings
    
    @AppStorage("shareAnalytics") var shareAnalytics: Bool = false
    @AppStorage("crashReporting") var crashReporting: Bool = true
    @AppStorage("trashRetentionDays") var trashRetentionDays: Int = 30
    @AppStorage("autoDeleteAfterDays") var autoDeleteAfterDays: Int = -1 // -1 means never
    
    // MARK: - Security Settings
    
    @AppStorage("requireAuthentication") var requireAuthentication: Bool = false
    @AppStorage("autoLockAfterInactivity") var autoLockAfterInactivity: Bool = false
    @AppStorage("autoLockTimeoutMinutes") var autoLockTimeoutMinutes: Int = 15
    
    // MARK: - Advanced Settings
    
    @AppStorage("enableDebugMode") var enableDebugMode: Bool = false
    @AppStorage("enableExperimentalFeatures") var enableExperimentalFeatures: Bool = false
    @AppStorage("maxRecentDocuments") var maxRecentDocuments: Int = 10
    @AppStorage("enableSpellCheck") var enableSpellCheck: Bool = true
    @AppStorage("enableAutoCorrect") var enableAutoCorrect: Bool = true
    
    // MARK: - Cache and Performance
    
    @AppStorage("enableCaching") var enableCaching: Bool = true
    @AppStorage("maxCacheSize") var maxCacheSize: Int = 100 // MB
    @AppStorage("enablePreloading") var enablePreloading: Bool = true
    
    // MARK: - Backup Dates (stored as TimeInterval for AppStorage compatibility)

    @AppStorage("lastBackupDateInterval") private var lastBackupDateIntervalRaw: String = "0"
    private var lastBackupDateInterval: Double {
        get { Double(lastBackupDateIntervalRaw) ?? 0 }
        set { lastBackupDateIntervalRaw = String(format: "%.0f", newValue) }
    }
    @AppStorage("nextScheduledBackupInterval") private var nextScheduledBackupIntervalRaw: String = "0"
    private var nextScheduledBackupInterval: Double {
        get { Double(nextScheduledBackupIntervalRaw) ?? 0 }
        set { nextScheduledBackupIntervalRaw = String(format: "%.0f", newValue) }
    }

    var lastBackupDate: Date? {
        get { lastBackupDateInterval > 0 ? Date(timeIntervalSince1970: lastBackupDateInterval) : nil }
        set { lastBackupDateInterval = newValue?.timeIntervalSince1970 ?? 0 }
    }

    var nextScheduledBackup: Date? {
        get { nextScheduledBackupInterval > 0 ? Date(timeIntervalSince1970: nextScheduledBackupInterval) : nil }
        set { nextScheduledBackupInterval = newValue?.timeIntervalSince1970 ?? 0 }
    }
    
    // MARK: - Methods
    
    func resetToDefaults() {
        logger.info("Resetting settings to defaults")
        
        defaultJobStatus = .applied
        autoSaveInterval = 30
        dateFormat = "MM/dd/yyyy"
        
        showNewJobNotifications = true
        remindFollowUps = true
        dailySummaryNotifications = false
        
        rememberWindowState = true
        closeToSystemTray = false
        startMinimized = false
        
        appearanceMode = .system
        accentColor = .blue
        sidebarWidth = 280.0
        fontSize = .medium
        showJobThumbnails = true
        showStatusBadges = true
        compactListView = false
        
        autoBackupToiCloud = false
        backupFrequency = .weekly
        backupRetention = 90
        
        enableAIParsing = true
        autoParseOnPaste = true
        extractSkillsAutomatically = true
        detectSalaryRanges = true
        identifyRemoteWork = true
        parsingConfidenceThreshold = 0.7
        processDataLocallyOnly = true
        clearParsingHistoryOnExit = false
        maxConcurrentParsingOperations = 2
        parsingTimeout = 60
        
        shareAnalytics = false
        crashReporting = true
        trashRetentionDays = 30
        autoDeleteAfterDays = -1
        
        requireAuthentication = false
        autoLockAfterInactivity = false
        autoLockTimeoutMinutes = 15
        
        enableDebugMode = false
        enableExperimentalFeatures = false
        maxRecentDocuments = 10
        enableSpellCheck = true
        enableAutoCorrect = true
        
        enableCaching = true
        maxCacheSize = 100
        enablePreloading = true
        
        logger.info("Settings reset to defaults completed")
    }
    
    func exportSettings() -> Data? {
        logger.info("Exporting settings")
        
        let settings: [String: Any] = [
            "defaultJobStatus": defaultJobStatus.rawValue,
            "autoSaveInterval": autoSaveInterval,
            "dateFormat": dateFormat,
            "showNewJobNotifications": showNewJobNotifications,
            "remindFollowUps": remindFollowUps,
            "dailySummaryNotifications": dailySummaryNotifications,
            "rememberWindowState": rememberWindowState,
            "closeToSystemTray": closeToSystemTray,
            "startMinimized": startMinimized,
            "appearanceMode": appearanceMode.rawValue,
            "sidebarWidth": sidebarWidth,
            "fontSize": fontSize.rawValue,
            "showJobThumbnails": showJobThumbnails,
            "showStatusBadges": showStatusBadges,
            "compactListView": compactListView,
            "autoBackupToiCloud": autoBackupToiCloud,
            "backupFrequency": backupFrequency.rawValue,
            "backupRetention": backupRetention,
            "enableAIParsing": enableAIParsing,
            "autoParseOnPaste": autoParseOnPaste,
            "extractSkillsAutomatically": extractSkillsAutomatically,
            "detectSalaryRanges": detectSalaryRanges,
            "identifyRemoteWork": identifyRemoteWork,
            "parsingConfidenceThreshold": parsingConfidenceThreshold,
            "processDataLocallyOnly": processDataLocallyOnly,
            "clearParsingHistoryOnExit": clearParsingHistoryOnExit,
            "maxConcurrentParsingOperations": maxConcurrentParsingOperations,
            "parsingTimeout": parsingTimeout,
            "shareAnalytics": shareAnalytics,
            "crashReporting": crashReporting,
            "trashRetentionDays": trashRetentionDays,
            "autoDeleteAfterDays": autoDeleteAfterDays,
            "requireAuthentication": requireAuthentication,
            "autoLockAfterInactivity": autoLockAfterInactivity,
            "autoLockTimeoutMinutes": autoLockTimeoutMinutes,
            "enableDebugMode": enableDebugMode,
            "enableExperimentalFeatures": enableExperimentalFeatures,
            "maxRecentDocuments": maxRecentDocuments,
            "enableSpellCheck": enableSpellCheck,
            "enableAutoCorrect": enableAutoCorrect,
            "enableCaching": enableCaching,
            "maxCacheSize": maxCacheSize,
            "enablePreloading": enablePreloading
        ]
        
        do {
            let data = try JSONSerialization.data(withJSONObject: settings, options: .prettyPrinted)
            logger.info("Settings exported successfully")
            return data
        } catch {
            logger.error("Failed to export settings: \(error.localizedDescription)")
            return nil
        }
    }
    
    func importSettings(from data: Data) -> Bool {
        logger.info("Importing settings")
        
        do {
            guard let settings = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                logger.error("Invalid settings format")
                return false
            }
            
            // Import general settings
            if let value = settings["defaultJobStatus"] as? String,
               let status = JobStatus(rawValue: value) {
                defaultJobStatus = status
            }
            if let value = settings["autoSaveInterval"] as? Int { autoSaveInterval = value }
            if let value = settings["dateFormat"] as? String { dateFormat = value }
            
            // Import notification settings
            if let value = settings["showNewJobNotifications"] as? Bool { showNewJobNotifications = value }
            if let value = settings["remindFollowUps"] as? Bool { remindFollowUps = value }
            if let value = settings["dailySummaryNotifications"] as? Bool { dailySummaryNotifications = value }
            
            // Import window behavior
            if let value = settings["rememberWindowState"] as? Bool { rememberWindowState = value }
            if let value = settings["closeToSystemTray"] as? Bool { closeToSystemTray = value }
            if let value = settings["startMinimized"] as? Bool { startMinimized = value }
            
            // Import appearance settings
            if let value = settings["appearanceMode"] as? String,
               let mode = AppearanceMode(rawValue: value) {
                appearanceMode = mode
            }
            if let value = settings["sidebarWidth"] as? Double { sidebarWidth = value }
            if let value = settings["fontSize"] as? String,
               let size = FontSize(rawValue: value) {
                fontSize = size
            }
            if let value = settings["showJobThumbnails"] as? Bool { showJobThumbnails = value }
            if let value = settings["showStatusBadges"] as? Bool { showStatusBadges = value }
            if let value = settings["compactListView"] as? Bool { compactListView = value }
            
            // Import data management
            if let value = settings["autoBackupToiCloud"] as? Bool { autoBackupToiCloud = value }
            if let value = settings["backupFrequency"] as? String,
               let frequency = BackupFrequency(rawValue: value) {
                backupFrequency = frequency
            }
            if let value = settings["backupRetention"] as? Int { backupRetention = value }
            
            // Import AI settings
            if let value = settings["enableAIParsing"] as? Bool { enableAIParsing = value }
            if let value = settings["autoParseOnPaste"] as? Bool { autoParseOnPaste = value }
            if let value = settings["extractSkillsAutomatically"] as? Bool { extractSkillsAutomatically = value }
            if let value = settings["detectSalaryRanges"] as? Bool { detectSalaryRanges = value }
            if let value = settings["identifyRemoteWork"] as? Bool { identifyRemoteWork = value }
            if let value = settings["parsingConfidenceThreshold"] as? Double { parsingConfidenceThreshold = value }
            if let value = settings["processDataLocallyOnly"] as? Bool { processDataLocallyOnly = value }
            if let value = settings["clearParsingHistoryOnExit"] as? Bool { clearParsingHistoryOnExit = value }
            if let value = settings["maxConcurrentParsingOperations"] as? Int { maxConcurrentParsingOperations = value }
            if let value = settings["parsingTimeout"] as? Int { parsingTimeout = value }
            
            // Import privacy settings
            if let value = settings["shareAnalytics"] as? Bool { shareAnalytics = value }
            if let value = settings["crashReporting"] as? Bool { crashReporting = value }
            if let value = settings["trashRetentionDays"] as? Int { trashRetentionDays = value }
            if let value = settings["autoDeleteAfterDays"] as? Int { autoDeleteAfterDays = value }
            
            // Import security settings
            if let value = settings["requireAuthentication"] as? Bool { requireAuthentication = value }
            if let value = settings["autoLockAfterInactivity"] as? Bool { autoLockAfterInactivity = value }
            if let value = settings["autoLockTimeoutMinutes"] as? Int { autoLockTimeoutMinutes = value }
            
            // Import advanced settings
            if let value = settings["enableDebugMode"] as? Bool { enableDebugMode = value }
            if let value = settings["enableExperimentalFeatures"] as? Bool { enableExperimentalFeatures = value }
            if let value = settings["maxRecentDocuments"] as? Int { maxRecentDocuments = value }
            if let value = settings["enableSpellCheck"] as? Bool { enableSpellCheck = value }
            if let value = settings["enableAutoCorrect"] as? Bool { enableAutoCorrect = value }
            
            // Import cache settings
            if let value = settings["enableCaching"] as? Bool { enableCaching = value }
            if let value = settings["maxCacheSize"] as? Int { maxCacheSize = value }
            if let value = settings["enablePreloading"] as? Bool { enablePreloading = value }
            
            logger.info("Settings imported successfully")
            return true
            
        } catch {
            logger.error("Failed to import settings: \(error.localizedDescription)")
            return false
        }
    }
    
    func validateSettings() -> [String] {
        var warnings: [String] = []
        
        if autoSaveInterval < 0 {
            warnings.append("Auto-save interval must be non-negative")
        }
        
        if sidebarWidth < 200 || sidebarWidth > 500 {
            warnings.append("Sidebar width should be between 200-500 pixels")
        }
        
        if parsingConfidenceThreshold < 0.1 || parsingConfidenceThreshold > 1.0 {
            warnings.append("Parsing confidence threshold should be between 0.1 and 1.0")
        }
        
        if maxConcurrentParsingOperations < 1 || maxConcurrentParsingOperations > 8 {
            warnings.append("Max concurrent parsing operations should be between 1-8")
        }
        
        if parsingTimeout < 10 || parsingTimeout > 600 {
            warnings.append("Parsing timeout should be between 10-600 seconds")
        }
        
        if backupRetention < 1 && backupRetention != -1 {
            warnings.append("Backup retention must be positive or -1 for forever")
        }
        
        if trashRetentionDays < 1 && trashRetentionDays != -1 {
            warnings.append("Trash retention must be positive or -1 for forever")
        }
        
        if maxRecentDocuments < 1 || maxRecentDocuments > 50 {
            warnings.append("Max recent documents should be between 1-50")
        }
        
        if maxCacheSize < 10 || maxCacheSize > 1000 {
            warnings.append("Max cache size should be between 10-1000 MB")
        }
        
        return warnings
    }
    
    func applyAppearanceSettings() {
        logger.info("Applying appearance settings")
        
        switch appearanceMode {
        case .system:
            NSApp.appearance = nil
        case .light:
            NSApp.appearance = NSAppearance(named: .aqua)
        case .dark:
            NSApp.appearance = NSAppearance(named: .darkAqua)
        }
        
        logger.info("Appearance settings applied")
    }
    
    // Alias for applyAppearanceSettings for backward compatibility
    func updateAppearance() {
        applyAppearanceSettings()
    }
}

// MARK: - Supporting Enums


// MARK: - Extensions

extension AppearanceMode {
    var displayName: String {
        return rawValue
    }
    
    var systemImage: String {
        switch self {
        case .system: return "gear"
        case .light: return "sun.max"
        case .dark: return "moon"
        }
    }
}

extension FontSize {
    var displayName: String {
        return rawValue
    }
    
    var relativeSize: CGFloat {
        switch self {
        case .small: return 0.9
        case .medium: return 1.0
        case .large: return 1.1
        }
    }
}

extension BackupFrequency {
    var displayName: String {
        return rawValue
    }
    
    var intervalInDays: Int {
        switch self {
        case .daily: return 1
        case .weekly: return 7
        case .monthly: return 30
        }
    }
}