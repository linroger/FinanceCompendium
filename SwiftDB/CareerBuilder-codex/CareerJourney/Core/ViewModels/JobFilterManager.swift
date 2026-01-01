//
//  JobFilterManager.swift
//  CareerKit v2.0
//
//  High-performance job filtering with caching and optimization
//  Eliminates performance bottlenecks from in-memory filtering
//

import SwiftUI
import Combine
import OSLog

/// High-performance job filtering manager with intelligent caching
@MainActor
final class JobFilterManager: ObservableObject {
    private let logger = Logger(subsystem: "com.careerkit.jobstore", category: "JobFilterManager")
    
    // MARK: - Cache Management
    
    private var lastFilterHash: Int = 0
    private var lastJobsCount: Int = 0
    private var lastJobsSignature: Int = 0
    private var cachedResult: [SwiftDataJobApplication] = []
#if DEBUG
    private(set) var rebuildCount: Int = 0
#endif
    
    // MARK: - Performance Optimized Filtering
    
    func filteredJobs(
        from jobs: [SwiftDataJobApplication],
        searchText: String,
        selectedStatus: JobStatus?,
        showFavoriteOnly: Bool,
        sortOption: JobSortOption
    ) -> [SwiftDataJobApplication] {
        
        // Early return for empty dataset
        guard !jobs.isEmpty else {
            return []
        }
        
        // Calculate change hash for efficient cache invalidation
        let datasetSignature = calculateDatasetSignature(for: jobs)
        let currentHash = calculateFilterHash(
            datasetSignature: datasetSignature,
            searchText: searchText,
            selectedStatus: selectedStatus,
            showFavoriteOnly: showFavoriteOnly,
            sortOption: sortOption
        )

        let shouldRecalculate = lastFilterHash != currentHash ||
                               lastJobsCount != jobs.count ||
                               lastJobsSignature != datasetSignature

        guard shouldRecalculate else {
            return cachedResult
        }

        let filtered = performOptimizedFiltering(
            jobs: jobs,
            searchText: searchText,
            selectedStatus: selectedStatus,
            showFavoriteOnly: showFavoriteOnly,
            sortOption: sortOption
        )

        lastFilterHash = currentHash
        lastJobsCount = jobs.count
        lastJobsSignature = datasetSignature
        cachedResult = filtered
#if DEBUG
        rebuildCount += 1
#endif

        logger.debug("Rebuilt job filters for \(jobs.count, privacy: .public) items (hash: \(currentHash, privacy: .public))")

        return filtered
    }
    
    // MARK: - Optimized Filtering Implementation
    
    private func performOptimizedFiltering(
        jobs: [SwiftDataJobApplication],
        searchText: String,
        selectedStatus: JobStatus?,
        showFavoriteOnly: Bool,
        sortOption: JobSortOption
    ) -> [SwiftDataJobApplication] {
        
        // Pre-process search text for better performance
        let lowercaseSearchText = searchText.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        let hasSearchFilter = !lowercaseSearchText.isEmpty
        
        // Apply filters with short-circuit evaluation for performance
        let filtered = jobs.filter { job in
            // Early exit optimizations
            if showFavoriteOnly && !job.isFavorite { return false }
            if let status = selectedStatus, job.status != status { return false }
            
            // Search filter with optimized string matching
            if hasSearchFilter {
                let companyMatch = job.companyName.lowercased().contains(lowercaseSearchText)
                let titleMatch = job.jobTitle.lowercased().contains(lowercaseSearchText)
                let locationMatch = job.location.lowercased().contains(lowercaseSearchText)
                
                return companyMatch || titleMatch || locationMatch
            }
            
            return true
        }
        
        // Optimized sorting with stable sort
        return sortJobs(filtered, by: sortOption)
    }
    
    // MARK: - Optimized Sorting
    
    private func sortJobs(_ jobs: [SwiftDataJobApplication], by sortOption: JobSortOption) -> [SwiftDataJobApplication] {
        switch sortOption {
        case .dateApplied:
            return jobs.sorted { $0.dateOfApplication > $1.dateOfApplication }
            
        case .company:
            return jobs.sorted {
                let comparison = $0.companyName.localizedCompare($1.companyName)
                return comparison == .orderedAscending
            }
            
        case .jobTitle:
            return jobs.sorted {
                let comparison = $0.jobTitle.localizedCompare($1.jobTitle)
                return comparison == .orderedAscending
            }
            
        case .status:
            return jobs.sorted {
                if $0.status == $1.status {
                    return $0.dateOfApplication > $1.dateOfApplication
                }
                return $0.status.sortOrder < $1.status.sortOrder
            }
            
        case .location:
            return jobs.sorted {
                let comparison = $0.location.localizedCompare($1.location)
                if comparison == .orderedSame {
                    return $0.dateOfApplication > $1.dateOfApplication
                }
                return comparison == .orderedAscending
            }
            
        case .salary:
            return jobs.sorted {
                let leftSalary = $0.salaryMax ?? $0.salaryMin ?? 0
                let rightSalary = $1.salaryMax ?? $1.salaryMin ?? 0
                if leftSalary == rightSalary {
                    return $0.dateOfApplication > $1.dateOfApplication
                }
                return leftSalary > rightSalary
            }
            
        case .favorite:
            return jobs.sorted {
                if $0.isFavorite == $1.isFavorite {
                    return $0.dateOfApplication > $1.dateOfApplication
                }
                return $0.isFavorite && !$1.isFavorite
            }
        }
    }
    
    // MARK: - Hash Calculation
    
    private func calculateFilterHash(
        datasetSignature: Int,
        searchText: String,
        selectedStatus: JobStatus?,
        showFavoriteOnly: Bool,
        sortOption: JobSortOption
    ) -> Int {
        var hasher = Hasher()
        hasher.combine(datasetSignature)
        hasher.combine(searchText.lowercased())
        hasher.combine(selectedStatus?.rawValue ?? "")
        hasher.combine(showFavoriteOnly)
        hasher.combine(sortOption.rawValue)
        return hasher.finalize()
    }

    private func calculateDatasetSignature(for jobs: [SwiftDataJobApplication]) -> Int {
        var hasher = Hasher()
        hasher.combine(jobs.count)

        for job in jobs {
            hasher.combine(job.id)
            hasher.combine(job.companyName)
            hasher.combine(job.jobTitle)
            hasher.combine(job.location)
            hasher.combine(job.status.rawValue)
            hasher.combine(job.isFavorite)
            hasher.combine(job.dateOfApplication.timeIntervalSinceReferenceDate)
            hasher.combine(job.desiredSkillNames.count)
            hasher.combine(job.notes)
        }

        return hasher.finalize()
    }
    
    // MARK: - Cache Management
    
    func invalidateCache() {
        lastFilterHash = 0
        lastJobsCount = 0
        lastJobsSignature = 0
        cachedResult = []
#if DEBUG
        rebuildCount = 0
#endif
    }
}

// MARK: - JobStatus Sort Order Extension

extension JobStatus {
    var sortOrder: Int {
        switch self {
        case .applied: return 0
        case .screening: return 1
        case .interview: return 2
        case .offer: return 3
        case .accepted: return 4
        case .rejected: return 5
        case .withdrawn: return 6
        }
    }
}
