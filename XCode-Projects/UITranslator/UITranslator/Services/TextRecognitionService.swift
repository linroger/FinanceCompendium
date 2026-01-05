//
//  TextRecognitionService.swift
//  UITranslator
//
//  Created by Roger Lin on 1/6/26.
//

import Foundation
import Vision
import CoreGraphics

/// Errors that can occur during text recognition
enum TextRecognitionError: LocalizedError {
    case requestFailed(Error)
    case noTextFound
    case invalidImage

    var errorDescription: String? {
        switch self {
        case .requestFailed(let error):
            return "Text recognition failed: \(error.localizedDescription)"
        case .noTextFound:
            return "No text was found in the image."
        case .invalidImage:
            return "The provided image is invalid."
        }
    }
}

/// Configuration for text recognition
struct TextRecognitionConfiguration {
    /// Languages to recognize (in priority order)
    var recognitionLanguages: [String] = ["zh-Hans", "zh-Hant", "en"]

    /// Recognition level (accurate vs fast)
    var recognitionLevel: VNRequestTextRecognitionLevel = .accurate

    /// Whether to use language correction
    var usesLanguageCorrection: Bool = true

    /// Minimum confidence threshold (0-1)
    var minimumConfidence: Float = 0.5

    /// Minimum text height relative to image height
    var minimumTextHeight: Float = 0.01
}

/// Service responsible for recognizing text in images using Vision framework
actor TextRecognitionService {
    // MARK: - Properties

    private var configuration: TextRecognitionConfiguration

    // MARK: - Initialization

    init(configuration: TextRecognitionConfiguration = TextRecognitionConfiguration()) {
        self.configuration = configuration
    }

    // MARK: - Configuration

    func updateConfiguration(_ configuration: TextRecognitionConfiguration) {
        self.configuration = configuration
    }

    /// Get supported recognition languages
    nonisolated func supportedLanguages() -> [String] {
        do {
            return try VNRecognizeTextRequest.supportedRecognitionLanguages(
                for: .accurate,
                revision: VNRecognizeTextRequestRevision3
            )
        } catch {
            return ["en"]
        }
    }

    // MARK: - Text Recognition

    /// Recognize text in a CGImage
    /// - Parameter image: The image to analyze
    /// - Returns: Array of recognized text items with their bounding boxes
    func recognizeText(in image: CGImage) async throws -> [RecognizedTextItem] {
        try await withCheckedThrowingContinuation { continuation in
            let request = VNRecognizeTextRequest { request, error in
                if let error = error {
                    continuation.resume(throwing: TextRecognitionError.requestFailed(error))
                    return
                }

                guard let observations = request.results as? [VNRecognizedTextObservation] else {
                    continuation.resume(returning: [])
                    return
                }

                let items = observations.compactMap { observation -> RecognizedTextItem? in
                    // Get the top candidate
                    guard let candidate = observation.topCandidates(1).first else {
                        return nil
                    }

                    // Filter by confidence
                    guard candidate.confidence >= self.configuration.minimumConfidence else {
                        return nil
                    }

                    // Skip very short text (likely noise)
                    guard candidate.string.count >= 2 else {
                        return nil
                    }

                    return RecognizedTextItem(
                        text: candidate.string,
                        normalizedBoundingBox: observation.boundingBox,
                        confidence: candidate.confidence,
                        timestamp: Date()
                    )
                }

                continuation.resume(returning: items)
            }

            // Configure the request
            request.recognitionLevel = configuration.recognitionLevel
            request.recognitionLanguages = configuration.recognitionLanguages
            request.usesLanguageCorrection = configuration.usesLanguageCorrection
            request.minimumTextHeight = configuration.minimumTextHeight

            // Perform the request
            let handler = VNImageRequestHandler(cgImage: image, options: [:])
            do {
                try handler.perform([request])
            } catch {
                continuation.resume(throwing: TextRecognitionError.requestFailed(error))
            }
        }
    }

    /// Recognize text with debouncing for live capture scenarios
    /// This helps reduce duplicate processing of similar frames
    func recognizeTextDebounced(
        in image: CGImage,
        previousItems: [RecognizedTextItem],
        similarityThreshold: Float = 0.9
    ) async throws -> [RecognizedTextItem] {
        let newItems = try await recognizeText(in: image)

        // If the recognized text is very similar to previous, skip processing
        if areSimilar(newItems, previousItems, threshold: similarityThreshold) {
            return previousItems
        }

        return newItems
    }

    // MARK: - Private Methods

    private func areSimilar(
        _ items1: [RecognizedTextItem],
        _ items2: [RecognizedTextItem],
        threshold: Float
    ) -> Bool {
        // Quick check: if counts differ significantly, they're not similar
        guard !items1.isEmpty && !items2.isEmpty else {
            return items1.isEmpty && items2.isEmpty
        }

        let countDifference = abs(items1.count - items2.count)
        if countDifference > max(1, items1.count / 5) {
            return false
        }

        // Compare text content
        let texts1 = Set(items1.map { $0.text })
        let texts2 = Set(items2.map { $0.text })

        let intersection = texts1.intersection(texts2)
        let union = texts1.union(texts2)

        guard !union.isEmpty else { return true }

        let similarity = Float(intersection.count) / Float(union.count)
        return similarity >= threshold
    }
}

// MARK: - Batch Processing Extension

extension TextRecognitionService {
    /// Process multiple images concurrently
    func recognizeTextBatch(in images: [CGImage]) async throws -> [[RecognizedTextItem]] {
        try await withThrowingTaskGroup(of: (Int, [RecognizedTextItem]).self) { group in
            for (index, image) in images.enumerated() {
                group.addTask {
                    let items = try await self.recognizeText(in: image)
                    return (index, items)
                }
            }

            var results: [[RecognizedTextItem]] = Array(repeating: [], count: images.count)
            for try await (index, items) in group {
                results[index] = items
            }
            return results
        }
    }
}
