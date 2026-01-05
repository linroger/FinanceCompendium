//
//  RecognizedTextItem.swift
//  UITranslator
//
//  Created by Roger Lin on 1/6/26.
//

import Foundation
import CoreGraphics

/// Represents a piece of text recognized from the captured window
struct RecognizedTextItem: Identifiable, Hashable {
    let id = UUID()

    /// The recognized text string
    let text: String

    /// Normalized bounding box from Vision (0-1 coordinates, origin at bottom-left)
    let normalizedBoundingBox: CGRect

    /// Confidence level of the recognition (0-1)
    let confidence: Float

    /// Timestamp when this text was recognized
    let timestamp: Date

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: RecognizedTextItem, rhs: RecognizedTextItem) -> Bool {
        lhs.id == rhs.id
    }
}

extension RecognizedTextItem {
    /// Converts the normalized bounding box to screen coordinates
    /// - Parameters:
    ///   - windowFrame: The frame of the captured window in screen coordinates
    /// - Returns: The bounding box in screen coordinates
    func screenBoundingBox(for windowFrame: CGRect) -> CGRect {
        // Vision uses normalized coordinates with origin at bottom-left
        // macOS screen coordinates have origin at bottom-left too, but we need to
        // convert to the window's coordinate space

        let x = windowFrame.origin.x + (normalizedBoundingBox.origin.x * windowFrame.width)
        // Flip Y coordinate since Vision uses bottom-left origin
        let y = windowFrame.origin.y + ((1.0 - normalizedBoundingBox.origin.y - normalizedBoundingBox.height) * windowFrame.height)
        let width = normalizedBoundingBox.width * windowFrame.width
        let height = normalizedBoundingBox.height * windowFrame.height

        return CGRect(x: x, y: y, width: width, height: height)
    }
}
