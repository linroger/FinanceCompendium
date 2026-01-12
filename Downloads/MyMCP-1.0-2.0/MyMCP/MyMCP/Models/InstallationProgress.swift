import Foundation

// MARK: - Progress Callbacks for Real-time Updates

/// Progress states during server installation
enum InstallProgress: Equatable {
    case generatingConfig
    case readingExistingConfig
    case addingServerEntry
    case writingConfig
    case refreshingClients
    case completed
    case failed(String)

    var message: String {
        switch self {
        case .generatingConfig: return "Generating server configuration..."
        case .readingExistingConfig: return "Reading existing config file..."
        case .addingServerEntry: return "Adding server entry..."
        case .writingConfig: return "Writing config file..."
        case .refreshingClients: return "Refreshing client list..."
        case .completed: return "Server installed successfully"
        case .failed(let error): return error
        }
    }

    var isComplete: Bool {
        switch self {
        case .completed, .failed: return true
        default: return false
        }
    }
}

/// Progress states during server uninstallation
enum UninstallProgress: Equatable {
    case readingConfig
    case parsingConfig
    case removingEntry
    case writingConfig
    case refreshingClients
    case completed
    case failed(String)

    var message: String {
        switch self {
        case .readingConfig: return "Reading config file..."
        case .parsingConfig: return "Parsing configuration..."
        case .removingEntry: return "Removing server entry..."
        case .writingConfig: return "Writing config file..."
        case .refreshingClients: return "Refreshing client list..."
        case .completed: return "Server removed successfully"
        case .failed(let error): return error
        }
    }

    var isComplete: Bool {
        switch self {
        case .completed, .failed: return true
        default: return false
        }
    }
}

// MARK: - Installation Step Model

/// Represents a step in the installation/uninstallation process
struct InstallationStep: Identifiable {
    let id = UUID()
    let clientType: MCPClientType
    let configPath: URL
    var status: StepStatus
    var message: String?

    enum StepStatus: Equatable {
        case pending
        case inProgress
        case success
        case failed(String)

        var isComplete: Bool {
            switch self {
            case .success, .failed: return true
            default: return false
            }
        }

        var isError: Bool {
            if case .failed = self { return true }
            return false
        }
    }

    init(clientType: MCPClientType, configPath: URL, status: StepStatus = .pending, message: String? = nil) {
        self.clientType = clientType
        self.configPath = configPath
        self.status = status
        self.message = message
    }
}
