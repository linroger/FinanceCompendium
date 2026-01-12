import Foundation
import os.log

/// Centralized logging for MyMCP using Apple's unified logging system (OSLog)
///
/// Usage:
/// ```swift
/// MCPLogger.config.info("Installing server...")
/// MCPLogger.config.debug("Config path: \(path)")
/// MCPLogger.config.error("Failed: \(error)")
/// ```
///
/// View logs via:
/// - Console.app: Filter by subsystem "com.mymcp"
/// - Terminal: log stream --predicate 'subsystem == "com.mymcp"' --level debug
/// - Xcode: Debug console during development
struct MCPLogger {
    private static let subsystem = Bundle.main.bundleIdentifier ?? "com.mymcp"

    // MARK: - Log Categories

    /// Logging for config file operations (read/write/parse)
    static let config = Logger(subsystem: subsystem, category: "config")

    /// Logging for client discovery operations
    static let discovery = Logger(subsystem: subsystem, category: "discovery")

    /// Logging for AppState transitions and actions
    static let appState = Logger(subsystem: subsystem, category: "appState")

    /// Logging for process monitoring
    static let process = Logger(subsystem: subsystem, category: "process")

    /// Logging for UI operations and state changes
    static let ui = Logger(subsystem: subsystem, category: "ui")

    /// Logging for service operations (API calls, caching)
    static let services = Logger(subsystem: subsystem, category: "services")

    /// Logging for server matching (registry <-> installed)
    static let matching = Logger(subsystem: subsystem, category: "matching")

    // MARK: - Timing Utilities

    /// Execute and log an async operation with timing information
    /// - Parameters:
    ///   - logger: The logger category to use
    ///   - operation: A short description of the operation
    ///   - block: The async operation to execute
    /// - Returns: The result of the operation
    static func timed<T>(_ logger: Logger, operation: String, block: () async throws -> T) async rethrows -> T {
        let start = CFAbsoluteTimeGetCurrent()
        logger.debug("[\(operation, privacy: .public)] Starting...")
        do {
            let result = try await block()
            let elapsed = CFAbsoluteTimeGetCurrent() - start
            logger.debug("[\(operation, privacy: .public)] Completed in \(String(format: "%.3f", elapsed), privacy: .public)s")
            return result
        } catch {
            let elapsed = CFAbsoluteTimeGetCurrent() - start
            logger.error("[\(operation, privacy: .public)] Failed after \(String(format: "%.3f", elapsed), privacy: .public)s: \(error.localizedDescription, privacy: .public)")
            throw error
        }
    }

    /// Execute and log a synchronous operation with timing information
    static func timedSync<T>(_ logger: Logger, operation: String, block: () throws -> T) rethrows -> T {
        let start = CFAbsoluteTimeGetCurrent()
        logger.debug("[\(operation, privacy: .public)] Starting...")
        do {
            let result = try block()
            let elapsed = CFAbsoluteTimeGetCurrent() - start
            logger.debug("[\(operation, privacy: .public)] Completed in \(String(format: "%.3f", elapsed), privacy: .public)s")
            return result
        } catch {
            let elapsed = CFAbsoluteTimeGetCurrent() - start
            logger.error("[\(operation, privacy: .public)] Failed after \(String(format: "%.3f", elapsed), privacy: .public)s: \(error.localizedDescription, privacy: .public)")
            throw error
        }
    }
}
