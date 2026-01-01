//
//  ChartDataCache+IntegrationGuide.swift
//  CareerKit
//
//  Integration guide and examples for ChartDataCache
//  Demonstrates best practices and performance patterns
//

import SwiftUI
import SwiftData
import Foundation

// MARK: - Integration Guide

/*
 ChartDataCache Integration Guide
 ================================
 
 The ChartDataCache provides a comprehensive caching system for CareerBuilder charts and data processing.
 It follows Apple Sample Code patterns and integrates seamlessly with Swift Charts.
 
 ## Key Features:
 
 1. **NSCache-based Data Caching**: Thread-safe caching for chart data with automatic memory management
 2. **Image Caching**: Efficient caching of map markers and chart preview images
 3. **Computation Memoization**: Cache expensive computations with configurable TTL
 4. **Async Data Loading**: Prevent duplicate requests with coordinated async loading
 5. **Pagination Support**: Handle large datasets with efficient pagination
 6. **Store Integration**: Automatic cache invalidation when underlying data changes
 7. **Memory Management**: Automatic cleanup under memory pressure
 8. **Performance Monitoring**: Real-time cache hit rates and memory usage tracking
 
 ## Basic Usage:
 
 ### 1. Initialize the Cache
 
 ```swift
 // In your app initialization
 ChartDataCache.shared.configureWithStores(
     jobStore: jobStore,
     documentStore: documentStore,
     noteStore: noteStore
 )
 ```
 
 ### 2. Cache Chart Data
 
 ```swift
 func getChartData() async throws -> [ChartDataPoint] {
     return try await ChartDataCache.shared.getChartData(
         for: "applications_timeline",
         timeRange: "last30days",
         filters: "status=active",
         dateInterval: dateInterval,
         dataType: [ChartDataPoint].self
     ) {
         // Expensive computation here
         await computeTimelineData()
     }
 }
 ```
 
 ### 3. Cache Images
 
 ```swift
 func getMapMarker(status: JobStatus) async throws -> NSImage {
     return try await ChartDataCache.shared.getMapMarkerImage(
         for: status,
         size: CGSize(width: 30, height: 30)
     )
 }
 ```
 
 ### 4. Memoize Computations
 
 ```swift
 func expensiveComputation(input: String) -> Result {
     return ChartDataCache.shared.memoize(key: input) {
         // Expensive computation here
         return performExpensiveComputation(input: input)
     }
 }
 ```
 
 ### 5. Paginated Data Loading
 
 ```swift
 func loadPaginatedData(page: Int) async throws -> PaginatedResult<JobData> {
     let token = PaginationToken(
         offset: page * 50,
         limit: 50,
         sortDescriptor: "dateApplied",
         filters: "status=active"
     )
     
     return try await ChartDataCache.shared.getPaginatedData(
         dataType: "jobs",
         pageSize: 50,
         token: token,
         filters: "status=active"
     ) { offset, limit in
         await loadJobs(offset: offset, limit: limit)
     }
 }
 ```
 
 ## Advanced Patterns:
 
 ### 1. Custom Cache Keys
 
 ```swift
 struct CustomCacheKey: Hashable {
     let chartType: String
     let parameters: [String: Any]
     let version: Int
 }
 ```
 
 ### 2. Cache Invalidation Strategies
 
 ```swift
 // Invalidate specific chart type
 ChartDataCache.shared.invalidateCache(for: "applications_timeline")
 
 // Invalidate all caches
 ChartDataCache.shared.invalidateCache()
 
 // Automatic invalidation on data changes
 NotificationCenter.default.post(name: .jobStoreDidUpdate, object: nil)
 ```
 
 ### 3. Performance Monitoring
 
 ```swift
 let stats = ChartDataCache.shared.getCacheStatistics()
 print("Cache Hit Rate: \\(stats.hitRate)")
 print("Memory Usage: \\(stats.memoryUsage)")
 print("Total Requests: \\(stats.totalRequests)")
 ```
 
 ### 4. Memory Management
 
 ```swift
 // Set memory limits
 ChartDataCache.shared.setMaxMemoryUsage(.init(value: 100, unit: .megabytes))
 
 // Manual cleanup
 ChartDataCache.shared.invalidateExpiredEntries()
 
 // Handle memory warnings automatically
 // (Handled internally by the cache)
 ```
 
 ## Best Practices:
 
 1. **Use Appropriate Cache Keys**: Make cache keys specific enough to avoid collisions
    but general enough to maximize cache hits.
 
 2. **Cache at the Right Level**: Cache computed chart data rather than raw database
    results for better performance.
 
 3. **Handle Cache Misses Gracefully**: Always provide fallback computation for cache misses.
 
 4. **Monitor Performance**: Regularly check cache hit rates and adjust strategies.
 
 5. **Clean Up Properly**: Use appropriate cache invalidation strategies based on data
    change patterns.
 
 6. **Test with Real Data**: Test caching performance with realistic data volumes.
 
 7. **Consider Memory Limits**: Be mindful of memory usage, especially for image caching.
 
 8. **Use Async/Await**: Leverage Swift's concurrency for non-blocking cache operations.
 
 ## Integration Examples:
 */

// MARK: - Example Integration in a View

struct CachedChartExampleView: View {
    @StateObject private var cache = ChartDataCache.shared
    @EnvironmentObject var jobStore: JobStore
    
    @State private var chartData: [TimelineData] = []
    @State private var isLoading = false
    @State private var error: Error?
    
    var body: some View {
        VStack {
            if isLoading {
                ProgressView("Loading cached chart data...")
            } else if let error = error {
                Text("Error: \\(error.localizedDescription)")
                    .foregroundColor(.red)
            } else {
                Chart(chartData) { item in
                    LineMark(
                        x: .value("Date", item.date),
                        y: .value("Applications", item.count)
                    )
                    .foregroundStyle(Color.accentColor)
                }
                .frame(height: 300)
            }
            
            // Cache status
            HStack {
                Text("Cache Hit Rate: \\(Int(cache.cacheHitRate * 100))%")
                    .font(.caption)
                Spacer()
                Text("Memory: \\(cache.memoryUsage.formatted())")
                    .font(.caption)
            }
            .foregroundColor(.secondary)
            .padding()
        }
        .task {
            await loadChartData()
        }
        .onChange(of: jobStore.jobApplications) { _, _ in
            // Refresh data when job store changes
            Task {
                await loadChartData()
            }
        }
    }
    
    private func loadChartData() async {
        isLoading = true
        error = nil
        
        do {
            let timeRange = TimeRange.month
            let data = try await cache.getApplicationTimelineData(
                timeRange: timeRange,
                jobs: jobStore.jobApplications
            )
            
            await MainActor.run {
                self.chartData = data
                self.isLoading = false
            }
        } catch {
            await MainActor.run {
                self.error = error
                self.isLoading = false
            }
        }
    }
}

// MARK: - Advanced Caching Patterns

class AdvancedChartDataProvider {
    private let cache = ChartDataCache.shared
    
    // MARK: - Multi-Level Caching
    
    func getMultiLevelChartData<T: Codable>(
        primaryKey: String,
        secondaryKey: String,
        computation: @escaping () async throws -> T
    ) async throws -> T {
        // Try primary cache level (detailed)
        let primaryCacheKey = "primary_\(primaryKey)_\(secondaryKey)"
        if let cachedData = cache.memoize(key: primaryCacheKey, computation: { nil }) as? T {
            return cachedData
        }
        
        // Try secondary cache level (aggregated)
        let secondaryCacheKey = "secondary_\(primaryKey)"
        if let aggregatedData = cache.memoize(key: secondaryCacheKey, computation: { nil }) as? T {
            // Recompute detailed data from aggregated
            let detailedData = try await computation()
            cache.memoize(key: primaryCacheKey, computation: { detailedData })
            return detailedData
        }
        
        // Cache miss - compute and cache both levels
        let result = try await computation()
        cache.memoize(key: primaryCacheKey, computation: { result })
        cache.memoize(key: secondaryCacheKey, computation: { result })
        
        return result
    }
    
    // MARK: - Conditional Caching
    
    func getConditionallyCachedData<T: Codable>(
        key: String,
        condition: () -> Bool,
        computation: @escaping () async throws -> T
    ) async throws -> T {
        // Only cache if condition is met
        guard condition() else {
            return try await computation()
        }
        
        return try await cache.getChartData(
            for: "conditional_\(key)",
            timeRange: "dynamic",
            filters: "",
            dateInterval: DateInterval(start: Date(), duration: 0),
            dataType: T.self
        ) {
            try await computation()
        }
    }
    
    // MARK: - Progressive Loading
    
    func getProgressiveChartData<T: Codable>(
        key: String,
        stages: [String],
        computation: @escaping (String) async throws -> T
    ) async throws -> [T] {
        var results: [T] = []
        
        for stage in stages {
            let stageKey = "\(key)_\(stage)"
            let result = try await cache.getChartData(
                for: "progressive_\(stageKey)",
                timeRange: stage,
                filters: "",
                dateInterval: DateInterval(start: Date(), duration: 0),
                dataType: T.self
            ) {
                try await computation(stage)
            }
            
            results.append(result)
            
            // Yield to allow UI updates
            await Task.yield()
        }
        
        return results
    }
    
    // MARK: - Cache Warming
    
    func warmCache(for timeRanges: [TimeRange], chartTypes: [ChartType]) async {
        await withTaskGroup(of: Void.self) { group in
            for timeRange in timeRanges {
                for chartType in chartTypes {
                    group.addTask {
                        await self.warmChartCache(
                            timeRange: timeRange,
                            chartType: chartType
                        )
                    }
                }
            }
        }
    }
    
    private func warmChartCache(timeRange: TimeRange, chartType: ChartType) async {
        // Implement cache warming logic
        switch chartType {
        case .overview:
            _ = try? await cache.getStatusDistributionData(
                timeRange: timeRange,
                jobs: [] // Would use actual job data
            )
        case .applications:
            _ = try? await cache.getApplicationTimelineData(
                timeRange: timeRange,
                jobs: []
            )
        default:
            break
        }
    }
}

// MARK: - Performance Monitoring

class CachePerformanceMonitor {
    private let cache = ChartDataCache.shared
    private var metrics: [CachePerformanceMetric] = []
    
    struct CachePerformanceMetric {
        let timestamp: Date
        let hitRate: Double
        let memoryUsage: Measurement<UnitInformationStorage>
        let requestCount: Int
        let averageResponseTime: TimeInterval
    }
    
    func recordMetrics() {
        let stats = cache.getCacheStatistics()
        let metric = CachePerformanceMetric(
            timestamp: Date(),
            hitRate: stats.hitRate,
            memoryUsage: stats.memoryUsage,
            requestCount: stats.totalRequests,
            averageResponseTime: calculateAverageResponseTime()
        )
        
        metrics.append(metric)
        
        // Keep only recent metrics
        if metrics.count > 100 {
            metrics.removeFirst()
        }
    }
    
    func getPerformanceReport() -> String {
        guard !metrics.isEmpty else {
            return "No performance data available"
        }
        
        let recentMetrics = Array(metrics.suffix(10))
        let avgHitRate = recentMetrics.map(\.hitRate).reduce(0, +) / Double(recentMetrics.count)
        let avgMemoryUsage = recentMetrics.map(\.memoryUsage).reduce(.zero) { $0 + $1 } / Double(recentMetrics.count)
        
        return """
        Cache Performance Report
        ======================
        Average Hit Rate: \(String(format: "%.1f%%", avgHitRate * 100))
        Average Memory Usage: \(avgMemoryUsage.formatted())
        Total Metrics Recorded: \(metrics.count)
        Recent Sample Size: \(recentMetrics.count)
        """
    }
    
    private func calculateAverageResponseTime() -> TimeInterval {
        // This would be implemented with actual timing data
        return 0.1 // Placeholder
    }
}

// MARK: - Error Handling

extension ChartDataCache {
    
    /// Safely get cached data with fallback
    func getCachedDataSafely<T: Codable>(
        for key: String,
        fallback: @escaping () async throws -> T
    ) async throws -> T {
        do {
            // Try to get from cache
            return try await getChartData(
                for: key,
                timeRange: "safe",
                filters: "",
                dateInterval: DateInterval(start: Date(), duration: 0),
                dataType: T.self
            ) {
                try await fallback()
            }
        } catch {
            // Log error and use fallback
            Logger(subsystem: "com.careerkit.cache", category: "SafeCache")
                .error("Cache error for key \\(key): \\(error.localizedDescription)")
            
            return try await fallback()
        }
    }
    
    /// Batch cache operations
    func batchCacheOperations<T: Codable>(
        operations: [(key: String, computation: () async throws -> T)]
    ) async throws -> [T] {
        return try await withThrowingTaskGroup(of: T.self) { group in
            for operation in operations {
                group.addTask {
                    try await self.getCachedDataSafely(
                        for: operation.key,
                        fallback: operation.computation
                    )
                }
            }
            
            var results: [T] = []
            for try await result in group {
                results.append(result)
            }
            
            return results
        }
    }
}

// MARK: - Testing Utilities

#if DEBUG
extension ChartDataCache {
    
    /// Reset cache for testing
    func resetForTesting() {
        invalidateCache()
        // Reset statistics
        // This would need to be implemented in the main class
    }
    
    /// Generate test data
    func generateTestData(count: Int) -> [SwiftDataJobApplication] {
        var jobs: [SwiftDataJobApplication] = []
        let calendar = Calendar.current
        
        for i in 0..<count {
            let job = SwiftDataJobApplication(
                companyName: "Test Company \\(i)",
                jobTitle: "Software Engineer",
                status: JobStatus.allCases.randomElement() ?? .applied,
                dateOfApplication: calendar.date(byAdding: .day, value: -i, to: Date()) ?? Date(),
                location: "San Francisco, CA",
                salaryMin: Double.random(in: 50000...200000),
                salaryMax: Double.random(in: 100000...300000),
                desiredSkillNames: ["Swift", "SwiftUI", "iOS"].shuffled().prefix(2).map { $0 }
            )
            jobs.append(job)
        }
        
        return jobs
    }
    
    /// Performance test
    func performanceTest(iterations: Int = 100) async {
        let testJobs = generateTestData(count: 1000)
        let timeRange = TimeRange.month
        
        var totalTime: TimeInterval = 0
        var cacheHits = 0
        
        for i in 0..<iterations {
            let startTime = Date()
            
            do {
                _ = try await getApplicationTimelineData(
                    timeRange: timeRange,
                    jobs: testJobs
                )
                
                let elapsed = Date().timeIntervalSince(startTime)
                totalTime += elapsed
                
                if i > 0 { // Skip first iteration (always cache miss)
                    cacheHits += (elapsed < 0.01) ? 1 : 0 // Assume fast response = cache hit
                }
            } catch {
                print("Performance test error: \\(error)")
            }
        }
        
        let avgTime = totalTime / Double(iterations)
        let hitRate = Double(cacheHits) / Double(iterations - 1)
        
        print("""
        Performance Test Results:
        - Average Response Time: \\(avgTime, format: .fixed(precision: 4))s
        - Cache Hit Rate: \\(String(format: "%.1f%%", hitRate * 100))
        - Total Iterations: \\(iterations)
        """)
    }
}
#endif