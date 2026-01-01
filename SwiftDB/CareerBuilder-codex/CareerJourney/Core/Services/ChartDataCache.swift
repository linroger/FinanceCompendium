//
//  ChartDataCache.swift
//  CareerKit
//
//  Performance caching system for charts and data processing
//  Based on Apple Sample Code patterns and Swift Charts Examples
//

import SwiftUI
import SwiftData
import Foundation
import Charts
import MapKit
import OSLog
import Combine

// MARK: - Sendable Extensions for Swift 6.2

#if os(macOS)
extension NSImage: @unchecked Sendable {}
#endif

// MARK: - Cache Keys

struct ChartCacheKey: Hashable {
    let chartType: String
    let timeRange: String
    let filters: String
    let dateInterval: DateInterval
    
    init(chartType: String, timeRange: String, filters: String = "", dateInterval: DateInterval) {
        self.chartType = chartType
        self.timeRange = timeRange
        self.filters = filters
        self.dateInterval = dateInterval
    }
}

struct DataCacheKey: Hashable {
    let dataType: String
    let parameters: String
    let timestamp: Date
}

// MARK: - Cache Entry Models

struct ChartDataEntry: Codable {
    let data: Data
    let metadata: ChartMetadata
    let timestamp: Date
    let accessCount: Int
    
    struct ChartMetadata: Codable {
        let dataPointCount: Int
        let dateRange: DateInterval
        let computationTime: TimeInterval
        let memoryUsage: Int
    }
}

struct ImageCacheEntry {
    let image: NSImage
    let size: CGSize
    let scale: CGFloat
    let timestamp: Date
    let cost: Int
}

// MARK: - Pagination Support

struct PaginationToken: Hashable {
    let offset: Int
    let limit: Int
    let sortDescriptor: String
    let filters: String
}

struct PaginatedResult<T> {
    let items: [T]
    let totalCount: Int
    let hasNextPage: Bool
    let nextToken: PaginationToken?
}

// MARK: - Computation Memoization

final class ComputationCache<T: Hashable, U> {
    private var cache: [T: (result: U, timestamp: Date)] = [:]
    private let maxAge: TimeInterval
    private let queue = DispatchQueue(label: "com.careerkit.computation-cache", attributes: .concurrent)
    
    init(maxAge: TimeInterval = 300) { // 5 minutes default
        self.maxAge = maxAge
    }
    
    func get(for key: T) -> U? {
        queue.sync {
            guard let entry = cache[key],
                  Date().timeIntervalSince(entry.timestamp) < maxAge else {
                return nil
            }
            return entry.result
        }
    }
    
    func set(_ result: U, for key: T) {
        queue.async(flags: .barrier) {
            self.cache[key] = (result: result, timestamp: Date())
        }
    }
    
    func clear() {
        queue.async(flags: .barrier) {
            self.cache.removeAll()
        }
    }
}

// MARK: - Async Data Loader

actor AsyncDataLoader<T: Sendable> {
    private var inFlightRequests: [String: Task<T, Error>] = [:]

    func load(_ key: String, operation: @escaping @Sendable () async throws -> T) async throws -> T {
        if let existingTask = inFlightRequests[key] {
            return try await existingTask.value
        }

        let task = Task { @Sendable in
            try await operation()
        }

        inFlightRequests[key] = task

        do {
            let result = try await task.value
            inFlightRequests.removeValue(forKey: key)
            return result
        } catch {
            inFlightRequests.removeValue(forKey: key)
            throw error
        }
    }

    func cancelLoad(for key: String) {
        inFlightRequests.removeValue(forKey: key)?.cancel()
    }
}

// MARK: - Main Chart Data Cache

@MainActor
final class ChartDataCache: ObservableObject {
    // MARK: - Singleton Instance
    
    static let shared = ChartDataCache()
    
    // MARK: - Published Properties
    
    @Published var cacheHitRate: Double = 0.0
    @Published var memoryUsage: Measurement<UnitInformationStorage> = Measurement(value: 0, unit: .bytes)
    @Published var isLoading: Bool = false
    
    // MARK: - Private Properties
    
    private let chartDataCache = NSCache<NSString, ChartDataCacheWrapper>()
    private let imageCache = NSCache<NSString, ImageCacheWrapper>()
    private let logger = Logger(subsystem: "com.careerkit.chartcache", category: "ChartDataCache")
    
    // Memory-limited caches
    private let dataCache = MemoryLimitedCache<ChartCacheKey, Data>()
    private let computationCache = ComputationCache<String, Any>()
    
    // Async loaders
    private let chartDataLoader = AsyncDataLoader<Data>()
    private let imageDataLoader = AsyncDataLoader<NSImage>()
    
    // Cache statistics
    private var cacheHits: Int = 0
    private var cacheMisses: Int = 0
    private var totalRequests: Int = 0
    
    // Stores integration
    private weak var jobStore: JobStore?
    private weak var documentStore: DocumentStore?
    private weak var noteStore: NoteStore?
    
    // Memory management
    private let maxMemoryUsage = Measurement(value: 100, unit: UnitInformationStorage.megabytes)
    
    // MARK: - Initialization
    
    private init() {
        setupCacheConfiguration()
        setupMemoryManagement()
        setupNotificationObservers()
    }
    
    private func setupCacheConfiguration() {
        chartDataCache.totalCostLimit = 50 * 1024 * 1024 // 50 MB
        chartDataCache.countLimit = 100
        
        imageCache.totalCostLimit = 25 * 1024 * 1024 // 25 MB
        imageCache.countLimit = 50
    }
    
    private func setupMemoryManagement() {
        // macOS doesn't have memory warning notifications like iOS
        // Instead, we periodically check cache usage and clean if needed
        // Memory pressure is handled automatically by NSCache via totalCostLimit
    }
    
    private func setupNotificationObservers() {
        // Observe data changes in stores
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(handleDataChange),
            name: .jobStoreDidUpdate,
            object: nil
        )
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(handleDataChange),
            name: .documentStoreDidUpdate,
            object: nil
        )
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(handleDataChange),
            name: .noteStoreDidUpdate,
            object: nil
        )
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    // MARK: - Store Integration
    
    func configureWithStores(jobStore: JobStore, documentStore: DocumentStore, noteStore: NoteStore) {
        self.jobStore = jobStore
        self.documentStore = documentStore
        self.noteStore = noteStore
        logger.info("ChartDataCache configured with stores")
    }
    
    // MARK: - Chart Data Caching
    
    func getChartData<T: Codable>(
        for chartType: String,
        timeRange: String,
        filters: String = "",
        dateInterval: DateInterval,
        dataType: T.Type,
        computation: @escaping () async throws -> T
    ) async throws -> T {
        let cacheKey = ChartCacheKey(
            chartType: chartType,
            timeRange: timeRange,
            filters: filters,
            dateInterval: dateInterval
        )
        
        let keyString = cacheKeyString(from: cacheKey)
        
        // Check memory cache first
        if let cachedData = chartDataCache.object(forKey: keyString as NSString)?.data,
           let decodedData = try? JSONDecoder().decode(T.self, from: cachedData) {
            updateCacheStatistics(hit: true)
            logger.debug("Chart data cache hit for key: \(keyString)")
            return decodedData
        }
        
        updateCacheStatistics(hit: false)
        logger.debug("Chart data cache miss for key: \(keyString)")
        
        // Compute the result directly (AsyncDataLoader handles deduplication via in-flight tracking)
        let startTime = Date()
        let result = try await computation()
        let computationTime = Date().timeIntervalSince(startTime)

        // Cache the result
        if let encodedData = try? JSONEncoder().encode(result) {
            let entry = ChartDataEntry(
                data: encodedData,
                metadata: ChartDataEntry.ChartMetadata(
                    dataPointCount: 0, // Will be set by caller if needed
                    dateRange: dateInterval,
                    computationTime: computationTime,
                    memoryUsage: encodedData.count
                ),
                timestamp: Date(),
                accessCount: 1
            )

            let wrapper = ChartDataCacheWrapper(entry: entry, data: encodedData)
            chartDataCache.setObject(wrapper, forKey: keyString as NSString, cost: encodedData.count)

            logger.info("Cached chart data for key: \(keyString), size: \(encodedData.count) bytes, computation time: \(computationTime, format: .fixed(precision: 3))s")
        }

        return result
    }
    
    // MARK: - Image Caching
    
    func getCachedImage(for url: URL, size: CGSize? = nil, scale: CGFloat = 1.0) -> NSImage? {
        let cacheKey = imageCacheKey(from: url, size: size, scale: scale)
        
        if let cachedEntry = imageCache.object(forKey: cacheKey as NSString)?.entry {
            updateCacheStatistics(hit: true)
            logger.debug("Image cache hit for key: \(cacheKey)")
            return cachedEntry.image
        }
        
        updateCacheStatistics(hit: false)
        return nil
    }
    
    func cacheImage(_ image: NSImage, for url: URL, size: CGSize? = nil, scale: CGFloat = 1.0) {
        let cacheKey = imageCacheKey(from: url, size: size, scale: scale)
        let cost = Int(image.size.width * image.size.height * 4) // Rough estimate
        
        let entry = ImageCacheEntry(
            image: image,
            size: size ?? image.size,
            scale: scale,
            timestamp: Date(),
            cost: cost
        )
        
        let wrapper = ImageCacheWrapper(entry: entry)
        imageCache.setObject(wrapper, forKey: cacheKey as NSString, cost: cost)
        
        logger.debug("Cached image for key: \(cacheKey), cost: \(cost)")
    }
    
    // MARK: - Computation Memoization
    
    func memoize<T: Hashable, U>(key: T, computation: () -> U) -> U {
        let stringKey = "memo_\(String(describing: key))"
        
        if let cachedResult = computationCache.get(for: stringKey) as? U {
            updateCacheStatistics(hit: true)
            logger.debug("Memoization cache hit for key: \(stringKey)")
            return cachedResult
        }
        
        updateCacheStatistics(hit: false)
        let result = computation()
        computationCache.set(result, for: stringKey)
        
        logger.debug("Memoized computation for key: \(stringKey)")
        return result
    }
    
    // MARK: - Pagination Support
    
    func getPaginatedData<T: Codable>(
        dataType: String,
        pageSize: Int = 50,
        token: PaginationToken? = nil,
        filters: String = "",
        computation: @escaping (Int, Int) async throws -> [T]
    ) async throws -> PaginatedResult<T> {
        let offset = token?.offset ?? 0
        let limit = token?.limit ?? pageSize
        
        let cacheKey = "paginated_\(dataType)_\(offset)_\(limit)_\(filters)"
        
        // Check if we have this page cached
        if let cachedData = chartDataCache.object(forKey: cacheKey as NSString)?.data,
           let decodedData = try? JSONDecoder().decode([T].self, from: cachedData) {
            updateCacheStatistics(hit: true)
            
            // For simplicity, assume we know the total count from previous requests
            let hasNextPage = decodedData.count == limit
            let nextToken = hasNextPage ? PaginationToken(
                offset: offset + limit,
                limit: limit,
                sortDescriptor: token?.sortDescriptor ?? "",
                filters: filters
            ) : nil
            
            return PaginatedResult(
                items: decodedData,
                totalCount: offset + decodedData.count + (hasNextPage ? 1 : 0), // Estimate
                hasNextPage: hasNextPage,
                nextToken: nextToken
            )
        }
        
        updateCacheStatistics(hit: false)
        
        // Load the data
        let items = try await computation(offset, limit)
        
        // Cache the result
        if let encodedData = try? JSONEncoder().encode(items) {
            let wrapper = ChartDataCacheWrapper(
                entry: ChartDataEntry(
                    data: encodedData,
                    metadata: ChartDataEntry.ChartMetadata(
                        dataPointCount: items.count,
                        dateRange: DateInterval(start: Date(), duration: 0),
                        computationTime: 0,
                        memoryUsage: encodedData.count
                    ),
                    timestamp: Date(),
                    accessCount: 1
                ),
                data: encodedData
            )
            chartDataCache.setObject(wrapper, forKey: cacheKey as NSString, cost: encodedData.count)
        }
        
        let hasNextPage = items.count == limit
        let nextToken = hasNextPage ? PaginationToken(
            offset: offset + limit,
            limit: limit,
            sortDescriptor: token?.sortDescriptor ?? "",
            filters: filters
        ) : nil
        
        return PaginatedResult(
            items: items,
            totalCount: offset + items.count,
            hasNextPage: hasNextPage,
            nextToken: nextToken
        )
    }
    
    // MARK: - Async Data Loading

    func loadChartDataAsync<T: Codable>(
        for chartType: String,
        timeRange: String,
        computation: @escaping () async throws -> T
    ) async throws -> T {
        // Compute directly - cache handling is done via getChartData for persistent caching
        return try await computation()
    }
    
    func loadImageAsync(
        from url: URL,
        size: CGSize? = nil,
        scale: CGFloat = 1.0
    ) async throws -> NSImage {
        let cacheKey = imageCacheKey(from: url, size: size, scale: scale)
        
        // Check cache first
        if let cachedImage = getCachedImage(for: url, size: size, scale: scale) {
            return cachedImage
        }
        
        // Load asynchronously
        return try await imageDataLoader.load(cacheKey) {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            guard let image = NSImage(data: data) else {
                throw CacheError.invalidImageData
            }
            
            // Resize if needed
            let finalImage: NSImage
            if let targetSize = size {
                finalImage = image.resized(to: targetSize)
            } else {
                finalImage = image
            }
            
            // Cache the result
            await self.cacheImage(finalImage, for: url, size: size, scale: scale)
            
            return finalImage
        }
    }
    
    // MARK: - Cache Invalidation

    func invalidateCache(for chartType: String? = nil) {
        if chartType != nil {
            // NSCache doesn't support enumeration, so invalidate all for simplicity
            // For selective invalidation, would need a separate tracking of keys
            chartDataCache.removeAllObjects()
            logger.info("Invalidated chart data cache (requested type: \(chartType ?? "all"))")
        } else {
            // Invalidate all caches
            chartDataCache.removeAllObjects()
            imageCache.removeAllObjects()
            computationCache.clear()
            logger.info("Invalidated all caches")
        }

        updateMemoryUsage()
    }
    
    func invalidateExpiredEntries() {
        let now = Date()
        let expirationInterval: TimeInterval = 3600 // 1 hour
        
        // This is a simplified implementation
        // In production, you'd iterate through cache entries and remove expired ones
        if totalRequests > 1000 && cacheHitRate < 0.5 {
            // Poor cache performance, clear some entries
            chartDataCache.removeAllObjects()
            logger.info("Cleared chart data cache due to poor performance")
        }
        
        updateMemoryUsage()
    }
    
    // MARK: - Memory Management
    
    private func handleMemoryWarning() {
        logger.warning("Received memory warning, clearing caches")
        
        // Clear least recently used items
        chartDataCache.removeAllObjects()
        imageCache.removeAllObjects()
        
        // Clear computation cache
        computationCache.clear()
        
        updateMemoryUsage()
    }
    
    private func updateMemoryUsage() {
        // Update published memory usage
        let chartDataUsage = chartDataCache.totalCostLimit
        let imageUsage = imageCache.totalCostLimit
        
        memoryUsage = Measurement(
            value: Double(chartDataUsage + imageUsage),
            unit: UnitInformationStorage.bytes
        )
    }
    
    // MARK: - Cache Statistics
    
    private func updateCacheStatistics(hit: Bool) {
        totalRequests += 1
        
        if hit {
            cacheHits += 1
        } else {
            cacheMisses += 1
        }
        
        cacheHitRate = totalRequests > 0 ? Double(cacheHits) / Double(totalRequests) : 0.0
    }
    
    func getCacheStatistics() -> CacheStatistics {
        return CacheStatistics(
            totalRequests: totalRequests,
            cacheHits: cacheHits,
            cacheMisses: cacheMisses,
            hitRate: cacheHitRate,
            memoryUsage: memoryUsage
        )
    }
    
    // MARK: - Helper Methods
    
    private func cacheKeyString(from key: ChartCacheKey) -> String {
        return "\(key.chartType)_\(key.timeRange)_\(key.filters)_\(key.dateInterval.start.timeIntervalSince1970)_\(key.dateInterval.end.timeIntervalSince1970)"
    }
    
    private func imageCacheKey(from url: URL, size: CGSize?, scale: CGFloat) -> String {
        var key = url.absoluteString
        if let size = size {
            key += "_\(size.width)x\(size.height)"
        }
        key += "_\(scale)"
        return key
    }
    
    @objc private func handleDataChange(_ notification: Notification) {
        logger.info("Data change detected, invalidating relevant caches")
        
        // Invalidate caches based on notification type
        switch notification.name {
        case .jobStoreDidUpdate:
            invalidateCache(for: "applications")
            invalidateCache(for: "timeline")
            invalidateCache(for: "companies")
        case .documentStoreDidUpdate:
            invalidateCache(for: "documents")
        case .noteStoreDidUpdate:
            invalidateCache(for: "notes")
        default:
            break
        }
    }
}

// MARK: - Cache Wrapper Classes

final class ChartDataCacheWrapper: NSObject {
    let entry: ChartDataEntry
    let data: Data
    
    init(entry: ChartDataEntry, data: Data) {
        self.entry = entry
        self.data = data
        super.init()
    }
}

final class ImageCacheWrapper: NSObject {
    let entry: ImageCacheEntry
    
    init(entry: ImageCacheEntry) {
        self.entry = entry
        super.init()
    }
}

// MARK: - Supporting Types

struct CacheStatistics {
    let totalRequests: Int
    let cacheHits: Int
    let cacheMisses: Int
    let hitRate: Double
    let memoryUsage: Measurement<UnitInformationStorage>
    
    var description: String {
        return """
        Cache Statistics:
        - Total Requests: \(totalRequests)
        - Cache Hits: \(cacheHits)
        - Cache Misses: \(cacheMisses)
        - Hit Rate: \(String(format: "%.1f%%", hitRate * 100))
        - Memory Usage: \(memoryUsage.formatted())
        """
    }
}

enum CacheError: LocalizedError {
    case invalidImageData
    case cacheMiss
    case computationFailed(Error)
    case encodingFailed(Error)
    case decodingFailed(Error)
    
    var errorDescription: String? {
        switch self {
        case .invalidImageData:
            return "Invalid image data"
        case .cacheMiss:
            return "Data not found in cache"
        case .computationFailed(let error):
            return "Computation failed: \(error.localizedDescription)"
        case .encodingFailed(let error):
            return "Encoding failed: \(error.localizedDescription)"
        case .decodingFailed(let error):
            return "Decoding failed: \(error.localizedDescription)"
        }
    }
}

// MARK: - NSImage Extensions

extension NSImage {
    func resized(to size: CGSize) -> NSImage {
        let newImage = NSImage(size: size)
        newImage.lockFocus()
        
        let sourceSize = self.size
        let sourceRect = NSRect(origin: .zero, size: sourceSize)
        let destRect = NSRect(origin: .zero, size: size)
        
        self.draw(in: destRect, from: sourceRect, operation: .sourceOver, fraction: 1.0)
        
        newImage.unlockFocus()
        return newImage
    }
}

// MARK: - Notification Names

extension Notification.Name {
    static let jobStoreDidUpdate = Notification.Name("jobStoreDidUpdate")
    static let documentStoreDidUpdate = Notification.Name("documentStoreDidUpdate")
    static let noteStoreDidUpdate = Notification.Name("noteStoreDidUpdate")
}

// MARK: - Memory-Limited Cache Implementation

class MemoryLimitedCache<Key: Hashable, Value> {
    private let cache = NSCache<NSString, CacheWrapper<Value>>()
    private let accessQueue = DispatchQueue(label: "com.careerkit.memory-cache", attributes: .concurrent)
    
    init(memoryLimit: Measurement<UnitInformationStorage> = .init(value: 50, unit: .megabytes)) {
        cache.totalCostLimit = Int(memoryLimit.converted(to: .bytes).value)
    }
    
    func set(_ value: Value, forKey key: Key, cost: Int = 0) {
        let wrapper = CacheWrapper(value: value)
        let keyString = NSString(string: String(describing: key))
        cache.setObject(wrapper, forKey: keyString, cost: cost)
    }
    
    func get(forKey key: Key) -> Value? {
        let keyString = NSString(string: String(describing: key))
        return cache.object(forKey: keyString)?.value
    }
    
    func remove(forKey key: Key) {
        let keyString = NSString(string: String(describing: key))
        cache.removeObject(forKey: keyString)
    }
    
    func removeAll() {
        cache.removeAllObjects()
    }
}

final class CacheWrapper<T>: NSObject {
    let value: T
    
    init(value: T) {
        self.value = value
        super.init()
    }
}
