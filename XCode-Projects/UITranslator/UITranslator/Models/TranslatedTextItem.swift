//
//  TranslatedTextItem.swift
//  UITranslator
//
//  Created by Roger Lin on 1/6/26.
//

import Foundation
import CoreGraphics

/// Represents a translated text item with positioning information for overlay display
@Observable
final class TranslatedTextItem: Identifiable {
    let id = UUID()

    /// The original recognized text
    let originalText: String

    /// The translated text (nil while translation is pending)
    var translatedText: String?

    /// Screen position for the overlay (center point)
    var screenPosition: CGPoint

    /// Size of the original text bounding box
    var size: CGSize

    /// Estimated font size based on bounding box height
    var estimatedFontSize: CGFloat

    /// Whether translation is in progress
    var isTranslating: Bool = false

    /// Error message if translation failed
    var error: String?

    /// Timestamp for cache invalidation
    let timestamp: Date

    init(
        originalText: String,
        translatedText: String? = nil,
        screenPosition: CGPoint,
        size: CGSize,
        timestamp: Date = Date()
    ) {
        self.originalText = originalText
        self.translatedText = translatedText
        self.screenPosition = screenPosition
        self.size = size
        self.timestamp = timestamp

        // Estimate font size from bounding box height
        // Typically, font size is roughly 70-80% of the bounding box height
        self.estimatedFontSize = max(10, size.height * 0.75)
    }
}

extension TranslatedTextItem: Hashable {
    static func == (lhs: TranslatedTextItem, rhs: TranslatedTextItem) -> Bool {
        lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

/// Cache for translated text to avoid re-translating the same content
actor TranslationCache {
    private var cache: [String: String] = [:]
    private let maxCacheSize = 1000

    func get(_ key: String) -> String? {
        cache[key]
    }

    func set(_ key: String, value: String) {
        // Simple LRU-ish eviction: clear half when full
        if cache.count >= maxCacheSize {
            let keysToRemove = Array(cache.keys.prefix(maxCacheSize / 2))
            for key in keysToRemove {
                cache.removeValue(forKey: key)
            }
        }
        cache[key] = value
    }

    func clear() {
        cache.removeAll()
    }
}
