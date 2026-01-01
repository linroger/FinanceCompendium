
//  FoundationModelService.swift
//  CareerKit
//
//  Legacy wrapper retained for compatibility. All parsing now routes through
//  SystemLanguageModelService to ensure on-device processing.
//

import Foundation

// Compatibility aliases for legacy code that references FoundationModelService
@available(macOS 26.0, *)
typealias FoundationModelService = SystemLanguageModelService
@available(macOS 26.0, *)
typealias FoundationModelError = SystemLMError
