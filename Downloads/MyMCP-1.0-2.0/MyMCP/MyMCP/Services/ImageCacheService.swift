import Foundation
import SwiftUI

/// Service for caching server icons
actor ImageCacheService {
    static let shared = ImageCacheService()

    private var cache: [URL: NSImage] = [:]
    private let cacheDirectory: URL

    init() {
        let cachePath = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first
            ?? FileManager.default.temporaryDirectory
        cacheDirectory = cachePath.appendingPathComponent("MyMCP/icons")

        try? FileManager.default.createDirectory(at: cacheDirectory, withIntermediateDirectories: true)
    }

    /// Load image from URL with caching
    func loadImage(from url: URL) async throws -> NSImage {
        if let cached = cache[url] {
            return cached
        }

        let fileName = url.absoluteString.data(using: .utf8)?.base64EncodedString() ?? url.lastPathComponent
        let diskPath = cacheDirectory.appendingPathComponent(fileName)

        if let diskData = try? Data(contentsOf: diskPath),
           let image = NSImage(data: diskData) {
            cache[url] = image
            return image
        }

        let (data, _) = try await URLSession.shared.data(from: url)
        guard let image = NSImage(data: data) else {
            throw ImageCacheError.invalidImageData
        }

        cache[url] = image
        try? data.write(to: diskPath)

        return image
    }

    /// Clear all cached images
    func clearCache() {
        cache.removeAll()
        try? FileManager.default.removeItem(at: cacheDirectory)
        try? FileManager.default.createDirectory(at: cacheDirectory, withIntermediateDirectories: true)
    }
}

enum ImageCacheError: LocalizedError {
    case invalidImageData

    var errorDescription: String? {
        "Invalid image data"
    }
}
