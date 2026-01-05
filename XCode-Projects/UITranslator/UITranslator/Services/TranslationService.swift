//
//  TranslationService.swift
//  UITranslator
//
//  Created by Roger Lin on 1/6/26.
//

import Foundation
import Translation

/// Errors that can occur during translation
enum TranslationError: LocalizedError {
    case sessionCreationFailed(Error)
    case translationFailed(Error)
    case languageNotSupported(String)
    case languageNotInstalled(String)

    var errorDescription: String? {
        switch self {
        case .sessionCreationFailed(let error):
            return "Failed to create translation session: \(error.localizedDescription)"
        case .translationFailed(let error):
            return "Translation failed: \(error.localizedDescription)"
        case .languageNotSupported(let language):
            return "Language '\(language)' is not supported for translation."
        case .languageNotInstalled(let language):
            return "Language '\(language)' is not installed. Please download it in System Settings."
        }
    }
}

/// Configuration for translation
struct TranslationConfiguration {
    var sourceLanguage: Locale.Language
    var targetLanguage: Locale.Language

    static var chineseToEnglish: TranslationConfiguration {
        TranslationConfiguration(
            sourceLanguage: Locale.Language(identifier: "zh-Hans"),
            targetLanguage: Locale.Language(identifier: "en")
        )
    }

    static var traditionalChineseToEnglish: TranslationConfiguration {
        TranslationConfiguration(
            sourceLanguage: Locale.Language(identifier: "zh-Hant"),
            targetLanguage: Locale.Language(identifier: "en")
        )
    }
}

/// Service responsible for translating text using Apple's Translation framework
@MainActor
@Observable
final class TranslationService {
    // MARK: - State

    /// Current configuration
    private(set) var configuration: TranslationConfiguration

    /// Whether translation is available (languages installed)
    private(set) var isAvailable: Bool = false

    /// Whether a download is in progress
    private(set) var isDownloading: Bool = false

    /// Current error
    private(set) var error: TranslationError?

    // MARK: - Private Properties

    private var session: TranslationSession?
    private let cache = TranslationCache()

    // MARK: - Initialization

    init(configuration: TranslationConfiguration = .chineseToEnglish) {
        self.configuration = configuration
    }

    // MARK: - Language Availability

    /// Check if the configured languages are available
    func checkAvailability() async {
        let availability = LanguageAvailability()
        let status = await availability.status(
            from: configuration.sourceLanguage,
            to: configuration.targetLanguage
        )

        switch status {
        case .installed:
            isAvailable = true
            error = nil
        case .supported:
            isAvailable = false
            error = .languageNotInstalled(configuration.sourceLanguage.minimalIdentifier)
        case .unsupported:
            isAvailable = false
            error = .languageNotSupported(configuration.sourceLanguage.minimalIdentifier)
        @unknown default:
            isAvailable = false
        }
    }

    /// Update the translation configuration
    func updateConfiguration(_ configuration: TranslationConfiguration) async {
        self.configuration = configuration
        self.session = nil
        await checkAvailability()
    }

    // MARK: - Translation

    /// Prepare a translation session (call this before translating)
    func prepareSession() async throws {
        guard isAvailable else {
            throw error ?? TranslationError.languageNotInstalled(configuration.sourceLanguage.minimalIdentifier)
        }

        do {
            session = try TranslationSession(
                installedSource: configuration.sourceLanguage,
                target: configuration.targetLanguage
            )
        } catch {
            throw TranslationError.sessionCreationFailed(error)
        }
    }

    /// Translate a single string
    func translate(_ text: String) async throws -> String {
        // Check cache first
        if let cached = await cache.get(text) {
            return cached
        }

        // Ensure session is ready
        if session == nil {
            try await prepareSession()
        }

        guard let session = session else {
            throw TranslationError.sessionCreationFailed(NSError(domain: "TranslationService", code: -1))
        }

        do {
            let response = try await session.translate(text)
            let translated = response.targetText

            // Cache the result
            await cache.set(text, value: translated)

            return translated
        } catch {
            throw TranslationError.translationFailed(error)
        }
    }

    /// Translate multiple strings in a batch
    func translateBatch(_ texts: [String]) async throws -> [String: String] {
        var results: [String: String] = [:]
        var textsToTranslate: [String] = []

        // Check cache for each text
        for text in texts {
            if let cached = await cache.get(text) {
                results[text] = cached
            } else {
                textsToTranslate.append(text)
            }
        }

        // If all texts were cached, return early
        guard !textsToTranslate.isEmpty else {
            return results
        }

        // Ensure session is ready
        if session == nil {
            try await prepareSession()
        }

        guard let session = session else {
            throw TranslationError.sessionCreationFailed(NSError(domain: "TranslationService", code: -1))
        }

        // Create batch requests
        let requests = textsToTranslate.map { TranslationSession.Request(sourceText: $0) }

        do {
            // Use batch translation for efficiency
            let responses = try await session.translations(from: requests)

            for response in responses {
                let original = response.sourceText
                let translated = response.targetText
                results[original] = translated
                await cache.set(original, value: translated)
            }
        } catch {
            // Fall back to individual translation if batch fails
            for text in textsToTranslate {
                do {
                    let response = try await session.translate(text)
                    results[text] = response.targetText
                    await cache.set(text, value: response.targetText)
                } catch {
                    // Use original text as fallback
                    results[text] = text
                }
            }
        }

        return results
    }

    /// Clear the translation cache
    func clearCache() async {
        await cache.clear()
    }
}

// MARK: - Supported Languages

extension TranslationService {
    /// Common language pairs
    static let supportedLanguagePairs: [(source: String, target: String, displayName: String)] = [
        ("zh-Hans", "en", "Chinese (Simplified) → English"),
        ("zh-Hant", "en", "Chinese (Traditional) → English"),
        ("ja", "en", "Japanese → English"),
        ("ko", "en", "Korean → English"),
        ("es", "en", "Spanish → English"),
        ("fr", "en", "French → English"),
        ("de", "en", "German → English"),
        ("en", "zh-Hans", "English → Chinese (Simplified)"),
        ("en", "ja", "English → Japanese"),
    ]
}
