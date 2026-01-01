//
//  UnifiedErrorManager.swift
//  CareerKit
//
//  Centralized error handling and reporting
//

import SwiftUI
import Foundation
import OSLog
import Combine

@MainActor
final class UnifiedErrorManager: ObservableObject {
    static let shared = UnifiedErrorManager()
    
    @Published var currentError: ErrorInfo?
    @Published var isShowingError = false
    
    private let logger = Logger(subsystem: "com.careerkit.errors", category: "ErrorManager")
    private var errorHistory: [ErrorInfo] = []
    
    private init() {}
    
    func show(_ error: Error, severity: ErrorSeverity = .error, suggestion: String? = nil) {
        let errorInfo = ErrorInfo(
            error: error,
            message: error.localizedDescription,
            severity: severity,
            suggestion: suggestion,
            timestamp: Date()
        )
        
        show(errorInfo)
    }
    
    func show(message: String, severity: ErrorSeverity = .error, suggestion: String? = nil) {
        let errorInfo = ErrorInfo(
            error: nil,
            message: message,
            severity: severity,
            suggestion: suggestion,
            timestamp: Date()
        )
        
        show(errorInfo)
    }
    
    private func show(_ errorInfo: ErrorInfo) {
        currentError = errorInfo
        isShowingError = true
        errorHistory.append(errorInfo)
        
        // Log the error
        switch errorInfo.severity {
        case .info:
            logger.info("\(errorInfo.message)")
        case .warning:
            logger.warning("\(errorInfo.message)")
        case .error:
            logger.error("\(errorInfo.message)")
        case .critical:
            logger.critical("\(errorInfo.message)")
        }
        
        // Auto-dismiss info messages after 3 seconds
        if errorInfo.severity == .info {
            Task {
                try? await Task.sleep(nanoseconds: 3_000_000_000)
                if currentError?.id == errorInfo.id {
                    isShowingError = false
                }
            }
        }
    }
    
    func dismiss() {
        isShowingError = false
        currentError = nil
    }
    
    func clearHistory() {
        errorHistory.removeAll()
    }
    
    func getErrorHistory() -> [ErrorInfo] {
        errorHistory
    }
}

// MARK: - Error Info Model
struct ErrorInfo: Identifiable {
    let id = UUID()
    let error: Error?
    let message: String
    let severity: ErrorSeverity
    let suggestion: String?
    let timestamp: Date
}

// MARK: - Error Severity
enum ErrorSeverity {
    case info
    case warning
    case error
    case critical
    
    var color: Color {
        switch self {
        case .info: return .blue
        case .warning: return .orange
        case .error: return .red
        case .critical: return .purple
        }
    }
    
    var icon: String {
        switch self {
        case .info: return "info.circle"
        case .warning: return "exclamationmark.triangle"
        case .error: return "xmark.circle"
        case .critical: return "exclamationmark.octagon"
        }
    }
}

// MARK: - View Extension
extension View {
    func withUnifiedErrorHandling() -> some View {
        self
            .alert(
                "Error",
                isPresented: Binding(
                    get: { UnifiedErrorManager.shared.isShowingError },
                    set: { _ in UnifiedErrorManager.shared.dismiss() }
                ),
                presenting: UnifiedErrorManager.shared.currentError
            ) { errorInfo in
                Button("OK") {
                    UnifiedErrorManager.shared.dismiss()
                }
            } message: { errorInfo in
                VStack(alignment: .leading, spacing: 8) {
                    Text(errorInfo.message)
                    
                    if let suggestion = errorInfo.suggestion {
                        Text(suggestion)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
            }
    }
}