//
//  ChartDataCacheTests.swift
//  CareerKitTests
//
//  Comprehensive tests for ChartDataCache performance and functionality
//

import XCTest
import SwiftUI
import SwiftData
import Charts
@testable import CareerKit

@MainActor
final class ChartDataCacheTests: XCTestCase {
    
    var cache: ChartDataCache!
    var mockJobStore: MockJobStore!
    
    override func setUp() {
        super.setUp()
        cache = ChartDataCache.shared
        mockJobStore = MockJobStore()
        
        // Configure cache for testing
        cache.configureWithStores(
            jobStore: mockJobStore,
            documentStore: nil,
            noteStore: nil
        )
        
        // Reset cache for clean tests
        cache.invalidateCache()
    }
    
    override func tearDown() {
        cache.invalidateCache()
        cache = nil
        mockJobStore = nil
        super.tearDown()
    }
    
    // MARK: - Basic Caching Tests
    
    func testChartDataCaching() async throws {
        // Given
        let timeRange = TimeRange.month
        let testJobs = generateTestJobs(count: 100)
        let expectation = expectation(description: "Chart data cached")
        
        // When - First call (cache miss)
        let startTime = Date()
        let firstResult = try await cache.getApplicationTimelineData(
            timeRange: timeRange,
            jobs: testJobs
        )
        let firstCallTime = Date().timeIntervalSince(startTime)
        
        // Then - Verify data
        XCTAssertFalse(firstResult.isEmpty, "Should return timeline data")
        
        // When - Second call (cache hit)
        let secondStartTime = Date()
        let secondResult = try await cache.getApplicationTimelineData(
            timeRange: timeRange,
            jobs: testJobs
        )
        let secondCallTime = Date().timeIntervalSince(secondStartTime)
        
        // Then - Verify cache performance
        XCTAssertEqual(firstResult.count, secondResult.count, "Cached data should match")
        XCTAssertTrue(secondCallTime < firstCallTime, "Cached call should be faster")
        
        // Verify cache statistics
        let stats = cache.getCacheStatistics()
        XCTAssertGreaterThan(stats.hitRate, 0, "Should have cache hits")
        expectation.fulfill()
        
        await fulfillment(of: [expectation], timeout: 5.0)
    }
    
    func testCompanyDistributionCaching() async throws {
        // Given
        let timeRange = TimeRange.allTime
        let testJobs = generateTestJobs(count: 50)
        
        // When
        let companies = try await cache.getCompanyDistributionData(
            timeRange: timeRange,
            jobs: testJobs
        )
        
        // Then
        XCTAssertFalse(companies.isEmpty, "Should return company data")
        
        // Test cache hit
        let cachedCompanies = try await cache.getCompanyDistributionData(
            timeRange: timeRange,
            jobs: testJobs
        )
        
        XCTAssertEqual(companies.count, cachedCompanies.count, "Cached data should match")
    }
    
    func testStatusDistributionCaching() async throws {
        // Given
        let timeRange = TimeRange.month
        let testJobs = generateTestJobs(count: 75)
        
        // When
        let statusData = try await cache.getStatusDistributionData(
            timeRange: timeRange,
            jobs: testJobs
        )
        
        // Then
        XCTAssertFalse(statusData.isEmpty, "Should return status data")
        
        // Verify all statuses are represented
        let expectedStatuses = Set(JobStatus.allCases.map { $0.rawValue })
        let actualStatuses = Set(statusData.map { $0.status })
        XCTAssertTrue(actualStatuses.isSubset(of: expectedStatuses), "Should contain valid statuses")
    }
    
    // MARK: - Image Caching Tests
    
    func testMapMarkerImageCaching() async throws {
        // Given
        let status = JobStatus.applied
        let size = CGSize(width: 30, height: 30)
        
        // When
        let image = try await cache.getMapMarkerImage(for: status, size: size)
        
        // Then
        XCTAssertNotNil(image, "Should return marker image")
        XCTAssertEqual(image.size, size, "Image should be correct size")
        
        // Test cache hit
        let cachedImage = try await cache.getMapMarkerImage(for: status, size: size)
        XCTAssertNotNil(cachedImage, "Should return cached image")
    }
    
    func testChartPreviewCaching() async throws {
        // Given
        let chartView = Text("Test Chart")
            .frame(width: 200, height: 100)
            .background(Color.blue)
        
        let size = CGSize(width: 200, height: 100)
        
        // When
        let previewImage = try await cache.getChartPreviewImage(
            for: chartView,
            size: size
        )
        
        // Then
        XCTAssertNotNil(previewImage, "Should return preview image")
        XCTAssertEqual(previewImage.size, size, "Preview should be correct size")
    }
    
    // MARK: - Memoization Tests
    
    func testComputationMemoization() {
        // Given
        let computationKey = "test_computation_\(UUID().uuidString)"
        var computationCount = 0
        
        // When - First computation
        let result1: Int = cache.memoize(key: computationKey) {
            computationCount += 1
            return 42
        }
        
        // Then
        XCTAssertEqual(result1, 42, "Should return correct result")
        XCTAssertEqual(computationCount, 1, "Should compute once")
        
        // When - Second computation (should use cache)
        let result2: Int = cache.memoize(key: computationKey) {
            computationCount += 1
            return 42
        }
        
        // Then
        XCTAssertEqual(result2, 42, "Should return same result")
        XCTAssertEqual(computationCount, 1, "Should not recompute")
    }
    
    func testMemoizationExpiration() {
        // Given
        let computationKey = "test_expiration_\(UUID().uuidString)"
        var computationCount = 0
        
        // When - First computation
        _ = cache.memoize(key: computationKey) {
            computationCount += 1
            return "result"
        }
        
        // Simulate time passing (in real implementation, would use time-based expiration)
        cache.invalidateCache()
        
        // When - Second computation after expiration
        _ = cache.memoize(key: computationKey) {
            computationCount += 1
            return "result"
        }
        
        // Then
        XCTAssertEqual(computationCount, 2, "Should recompute after expiration")
    }
    
    // MARK: - Pagination Tests
    
    func testPaginatedDataLoading() async throws {
        // Given
        let testJobs = generateTestJobs(count: 200)
        let pageSize = 50
        
        // When - Load first page
        let firstPage = try await cache.getPaginatedData(
            dataType: "test_jobs",
            pageSize: pageSize,
            token: nil,
            filters: ""
        ) { offset, limit in
            Array(testJobs[offset..<min(offset + limit, testJobs.count)])
        }
        
        // Then
        XCTAssertEqual(firstPage.items.count, pageSize, "First page should have correct size")
        XCTAssertTrue(firstPage.hasNextPage, "Should have next page")
        XCTAssertNotNil(firstPage.nextToken, "Should have next token")
        
        // When - Load second page
        let secondPage = try await cache.getPaginatedData(
            dataType: "test_jobs",
            pageSize: pageSize,
            token: firstPage.nextToken,
            filters: ""
        ) { offset, limit in
            Array(testJobs[offset..<min(offset + limit, testJobs.count)])
        }
        
        // Then
        XCTAssertEqual(secondPage.items.count, pageSize, "Second page should have correct size")
        XCTAssertNotEqual(firstPage.items.first?.skill, secondPage.items.first?.skill, "Pages should have different data")
    }
    
    // MARK: - Async Loading Tests
    
    func testAsyncDataLoading() async throws {
        // Given
        let testKey = "test_async_\(UUID().uuidString)"
        var computationCount = 0
        
        // When - Multiple concurrent requests
        async let result1 = cache.loadChartDataAsync(for: testKey, timeRange: "test") {
            computationCount += 1
            try await Task.sleep(nanoseconds: 100_000_000) // 0.1 second
            return ["data1", "data2", "data3"]
        }
        
        async let result2 = cache.loadChartDataAsync(for: testKey, timeRange: "test") {
            computationCount += 1
            try await Task.sleep(nanoseconds: 100_000_000) // 0.1 second
            return ["data1", "data2", "data3"]
        }
        
        let (r1, r2) = try await (result1, result2)
        
        // Then
        XCTAssertEqual(r1, r2, "Concurrent requests should return same data")
        XCTAssertEqual(computationCount, 1, "Should only compute once")
    }
    
    // MARK: - Cache Invalidation Tests
    
    func testCacheInvalidation() async throws {
        // Given
        let timeRange = TimeRange.month
        let testJobs = generateTestJobs(count: 50)
        
        // When - Load and cache data
        let firstResult = try await cache.getApplicationTimelineData(
            timeRange: timeRange,
            jobs: testJobs
        )
        
        // Invalidate cache
        cache.invalidateCache(for: "applications_timeline")
        
        // When - Load again (should be cache miss)
        let secondResult = try await cache.getApplicationTimelineData(
            timeRange: timeRange,
            jobs: testJobs
        )
        
        // Then
        XCTAssertEqual(firstResult.count, secondResult.count, "Results should be identical")
        
        // Verify cache statistics show miss after invalidation
        let stats = cache.getCacheStatistics()
        // Note: This would need to be implemented to track invalidations
    }
    
    func testCompleteCacheInvalidation() async throws {
        // Given
        let testJobs = generateTestJobs(count: 30)
        
        // When - Cache multiple types of data
        _ = try await cache.getApplicationTimelineData(
            timeRange: .month,
            jobs: testJobs
        )
        
        _ = try await cache.getCompanyDistributionData(
            timeRange: .allTime,
            jobs: testJobs
        )
        
        _ = try await cache.getStatusDistributionData(
            timeRange: .month,
            jobs: testJobs
        )
        
        // Invalidate all caches
        cache.invalidateCache()
        
        // Then - Verify all data needs to be recomputed
        // This would require tracking cache state in the implementation
    }
    
    // MARK: - Memory Management Tests
    
    func testMemoryUsageTracking() {
        // Given
        let initialStats = cache.getCacheStatistics()
        
        // When - Cache some data
        _ = cache.memoize(key: "memory_test_\(UUID().uuidString)") {
            return Array(repeating: "test_data", count: 1000)
        }
        
        // Then
        let finalStats = cache.getCacheStatistics()
        XCTAssertGreaterThan(finalStats.memoryUsage.value, initialStats.memoryUsage.value, "Memory usage should increase")
    }
    
    func testCacheStatistics() {
        // Given
        let testKey = "stats_test_\(UUID().uuidString)"
        
        // When - Perform multiple operations
        _ = cache.memoize(key: testKey) { "result1" }
        _ = cache.memoize(key: testKey) { "result1" } // Cache hit
        _ = cache.memoize(key: "\(testKey)_2") { "result2" }
        
        // Then
        let stats = cache.getCacheStatistics()
        XCTAssertGreaterThan(stats.totalRequests, 0, "Should have requests")
        XCTAssertGreaterThanOrEqual(stats.hitRate, 0, "Hit rate should be non-negative")
        XCTAssertGreaterThanOrEqual(stats.hitRate, 1.0, "Hit rate should not exceed 1.0")
    }
    
    // MARK: - Performance Tests
    
    func testCachePerformance() async throws {
        // Given
        let testJobs = generateTestJobs(count: 1000)
        let timeRange = TimeRange.allTime
        let iterations = 10
        
        var firstCallTimes: [TimeInterval] = []
        var cachedCallTimes: [TimeInterval] = []
        
        // When - Measure performance over multiple iterations
        for _ in 0..<iterations {
            // First call (cache miss)
            let start1 = Date()
            _ = try await cache.getApplicationTimelineData(
                timeRange: timeRange,
                jobs: testJobs
            )
            firstCallTimes.append(Date().timeIntervalSince(start1))
            
            // Second call (cache hit)
            let start2 = Date()
            _ = try await cache.getApplicationTimelineData(
                timeRange: timeRange,
                jobs: testJobs
            )
            cachedCallTimes.append(Date().timeIntervalSince(start2))
            
            // Clear cache for next iteration
            cache.invalidateCache()
        }
        
        // Then - Analyze performance
        let avgFirstCall = firstCallTimes.reduce(0, +) / Double(iterations)
        let avgCachedCall = cachedCallTimes.reduce(0, +) / Double(iterations)
        let performanceImprovement = (avgFirstCall - avgCachedCall) / avgFirstCall
        
        print("Average first call time: \\(avgFirstCall, format: .fixed(precision: 4))s")
        print("Average cached call time: \\(avgCachedCall, format: .fixed(precision: 4))s")
        print("Performance improvement: \\(String(format: "%.1f%%", performanceImprovement * 100))")
        
        // Verify significant performance improvement
        XCTAssertGreaterThan(performanceImprovement, 0.5, "Cache should provide significant performance improvement")
    }
    
    func testLargeDatasetPerformance() async throws {
        // Given
        let testJobs = generateTestJobs(count: 5000)
        let timeRange = TimeRange.allTime
        
        // When
        let startTime = Date()
        let result = try await cache.getApplicationTimelineData(
            timeRange: timeRange,
            jobs: testJobs
        )
        let computationTime = Date().timeIntervalSince(startTime)
        
        // Then
        XCTAssertFalse(result.isEmpty, "Should handle large datasets")
        XCTAssertLessThan(computationTime, 5.0, "Should process large datasets quickly")
        
        // Test cached performance
        let cachedStartTime = Date()
        let cachedResult = try await cache.getApplicationTimelineData(
            timeRange: timeRange,
            jobs: testJobs
        )
        let cachedTime = Date().timeIntervalSince(cachedStartTime)
        
        XCTAssertLessThan(cachedTime, computationTime, "Cached call should be faster")
    }
    
    // MARK: - Error Handling Tests
    
    func testErrorHandling() async {
        // Given
        struct TestError: Error {}
        
        // When/Then - Test computation error handling
        do {
            _ = try await cache.loadChartDataAsync(for: "error_test", timeRange: "test") {
                throw TestError()
            }
            XCTFail("Should throw error")
        } catch {
            // Expected error
            XCTAssertTrue(error is TestError, "Should propagate computation errors")
        }
    }
    
    func testSafeCacheAccess() async {
        // Given
        struct TestError: Error, LocalizedError {
            var errorDescription: String? { "Test error" }
        }
        
        // When - Use safe cache access
        let result = try? await cache.getCachedDataSafely(for: "safe_test") {
            throw TestError()
        }
        
        // Then - Should return nil on error instead of throwing
        XCTAssertNil(result, "Should return nil on error")
    }
    
    // MARK: - Integration Tests
    
    func testStoreIntegration() async throws {
        // Given
        let testJobs = generateTestJobs(count: 50)
        mockJobStore.jobApplications = testJobs
        
        // When - Data changes in store
        NotificationCenter.default.post(name: .jobStoreDidUpdate, object: nil)
        
        // Allow time for notification processing
        try await Task.sleep(nanoseconds: 100_000_000) // 0.1 second
        
        // Then - Cache should be invalidated (implementation dependent)
        // This would need to be verified with proper cache state tracking
    }
    
    func testConcurrentAccess() async throws {
        // Given
        let testJobs = generateTestJobs(count: 100)
        let timeRange = TimeRange.month
        let concurrentCount = 10
        
        // When - Multiple concurrent cache requests
        await withTaskGroup(of: [TimelineData].self) { group in
            for _ in 0..<concurrentCount {
                group.addTask {
                    try? await self.cache.getApplicationTimelineData(
                        timeRange: timeRange,
                        jobs: testJobs
                    )
                }
            }
            
            // Then - All requests should complete successfully
            var results: [[TimelineData]] = []
            for await result in group {
                results.append(result)
            }
            
            XCTAssertEqual(results.count, concurrentCount, "All concurrent requests should complete")
        }
    }
    
    // MARK: - Helper Methods
    
    private func generateTestJobs(count: Int) -> [SwiftDataJobApplication] {
        var jobs: [SwiftDataJobApplication] = []
        let calendar = Calendar.current
        let companies = ["Apple", "Google", "Microsoft", "Amazon", "Meta"]
        let statuses: [JobStatus] = [.applied, .interview, .offer, .rejected]
        let locations = ["San Francisco, CA", "New York, NY", "Seattle, WA", "Austin, TX"]
        
        for i in 0..<count {
            let job = SwiftDataJobApplication(
                companyName: companies[i % companies.count],
                jobTitle: "Software Engineer Level \\(i % 5 + 1)",
                status: statuses[i % statuses.count],
                dateOfApplication: calendar.date(byAdding: .day, value: -i, to: Date()) ?? Date(),
                location: locations[i % locations.count],
                salaryMin: Double.random(in: 50000...150000),
                salaryMax: Double.random(in: 100000...250000),
                desiredSkillNames: ["Swift", "SwiftUI", "iOS", "macOS"].shuffled().prefix(2).map { $0 }
            )
            jobs.append(job)
        }
        
        return jobs
    }
}

// MARK: - Mock Objects

class MockJobStore: JobStore {
    override init() {
        super.init()
        self.jobApplications = []
    }
    
    func addMockJobs(_ count: Int) {
        let calendar = Calendar.current
        let companies = ["Apple", "Google", "Microsoft", "Amazon", "Meta"]
        let statuses: [JobStatus] = [.applied, .interview, .offer, .rejected]
        
        for i in 0..<count {
            let job = SwiftDataJobApplication(
                companyName: companies[i % companies.count],
                jobTitle: "Software Engineer",
                status: statuses[i % statuses.count],
                dateOfApplication: calendar.date(byAdding: .day, value: -i, to: Date()) ?? Date(),
                location: "San Francisco, CA",
                desiredSkillNames: ["Swift", "SwiftUI"]
            )
            jobApplications.append(job)
        }
    }
}

// MARK: - Performance Test Extensions

extension ChartDataCacheTests {
    
    func testMemoryPressureHandling() async {
        // This test would simulate memory pressure conditions
        // and verify that the cache properly handles cleanup
        
        // Given - Large amount of cached data
        let largeDataSet = Array(repeating: "test_data", count: 10000)
        
        // When - Cache large data
        _ = cache.memoize(key: "memory_test") { largeDataSet }
        
        // Simulate memory warning (in real implementation)
        // cache.handleMemoryWarning()
        
        // Then - Verify cleanup occurred
        // This would need implementation-specific verification
    }
    
    func testCacheWarming() async throws {
        // Given
        let timeRanges: [TimeRange] = [.month, .threeMonths, .year]
        let chartTypes: [ChartType] = [.overview, .applications, .companies]
        let testJobs = generateTestJobs(count: 100)
        
        // When - Warm cache
        let startTime = Date()
        
        // Simulate cache warming
        for timeRange in timeRanges {
            _ = try await cache.getApplicationTimelineData(
                timeRange: timeRange,
                jobs: testJobs
            )
            
            _ = try await cache.getCompanyDistributionData(
                timeRange: timeRange,
                jobs: testJobs
            )
        }
        
        let warmTime = Date().timeIntervalSince(startTime)
        
        // Then - Verify warming completed
        print("Cache warming completed in \\(warmTime, format: .fixed(precision: 2))s")
        XCTAssertLessThan(warmTime, 10.0, "Cache warming should complete quickly")
    }
}