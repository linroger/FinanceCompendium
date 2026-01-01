//
//  EnhancedMapClusteringView.swift
//  CareerKit v2.0
//
//  Enhanced MapKit visualization with intelligent job location clustering
//  Replaces hardcoded coordinates with dynamic geocoding and proximity-based clustering
//

import SwiftUI
import MapKit
import CoreLocation
import Combine
import OSLog

/// Enhanced map view with intelligent job location clustering
struct EnhancedMapClusteringView: View {
    let timeRange: EnhancedStatsView.TimeRange
    @EnvironmentObject var jobStore: JobStore
    
    // Map state using new MapKit APIs
    @State private var mapCameraPosition: MapCameraPosition = .region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 39.8283, longitude: -98.5795), // Center of USA
            span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 50)
        )
    )
    @State private var mapSelection: JobCluster?
    @State private var clusters: [JobCluster] = []
    @State private var isLoading = false
    @State private var geocodingProgress: Double = 0
    @State private var showingClusterDetail = false
    @State private var geocodingError: Error?
    @State private var visibleRegion: MKCoordinateRegion?
    @State private var lastProcessedRegion: MKCoordinateRegion?
    
    // Clustering parameters
    private let minZoomForClustering: Double = 0.5 // Minimum zoom level to show clusters
    private let logger = Logger(subsystem: "com.careerkit.stats", category: "MapClustering")
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            headerView
            
            mainMapView
            
            // Cluster summary and legend
            ClusterSummaryView(clusters: clusters)
        }
        .padding()
        .background(Color.secondary.opacity(0.05))
        .cornerRadius(Theme.CornerRadius.large)
        .onAppear {
            // Only refresh if we don't have clusters yet
            if clusters.isEmpty {
                Task {
                    await refreshClusters()
                }
            }
        }
        .sheet(isPresented: $showingClusterDetail) {
            if let cluster = mapSelection {
                ClusterDetailSheet(cluster: cluster)
                    .environmentObject(jobStore)
            }
        }
        .alert("Geocoding Error", isPresented: .constant(geocodingError != nil), presenting: geocodingError) { _ in
            Button("OK") {
                geocodingError = nil
            }
        } message: { error in
            Text(error.localizedDescription)
        }
    }
    
    private var headerView: some View {
        HStack {
            Text("Job Location Clusters")
                .font(.title3)
                .fontWeight(.semibold)
            Spacer()
            if isLoading {
                HStack(spacing: 8) {
                    ProgressView(value: geocodingProgress, total: 1.0)
                        .frame(width: 100)
                    Text("\(Int(geocodingProgress * 100))%")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            Button("Refresh Locations") {
                Task { await refreshClusters() }
            }
            .buttonStyle(.bordered)
            .controlSize(.small)
            .disabled(isLoading)
        }
    }
    
    private var mainMapView: some View {
        Map(position: $mapCameraPosition, selection: $mapSelection) {
            ForEach(clusters) { cluster in
                Annotation(cluster.title, coordinate: cluster.coordinate) {
                    ClusterAnnotationView(
                        cluster: cluster,
                        isSelected: mapSelection?.id == cluster.id
                    ) {
                        mapSelection = cluster
                    }
                }
                .annotationTitles(.hidden)
            }
        }
        .mapStyle(.standard(elevation: .realistic))
        .mapControls {
            MapCompass()
            MapScaleView()
            MapUserLocationButton()
            MapPitchToggle()
        }
        .frame(height: 450)
        .clipShape(RoundedRectangle(cornerRadius: Theme.CornerRadius.large))
        .overlay(alignment: .topTrailing) {
            if let selectedCluster = mapSelection {
                ClusterDetailCard(cluster: selectedCluster) {
                    showingClusterDetail = true
                } onClose: {
                    mapSelection = nil
                }
                .padding()
                .transition(.asymmetric(
                    insertion: .scale.combined(with: .opacity),
                    removal: .opacity
                ))
            }
        }
        .onMapCameraChange { context in
            let newRegion = context.region
            visibleRegion = newRegion
            
            // Check if region changed significantly
            if shouldUpdateClusters(newRegion: newRegion, lastRegion: lastProcessedRegion) {
                lastProcessedRegion = newRegion
                if newRegion.span.latitudeDelta < minZoomForClustering {
                    Task {
                        await updateClustersForZoom()
                    }
                }
            }
        }
    }
    
    // MARK: - Clustering Logic
    
    @MainActor
    private func refreshClusters() async {
        isLoading = true
        geocodingProgress = 0
        
        // Get filtered jobs
        let filteredJobs = getFilteredJobs()
        
        // Step 1: Geocode missing coordinates
        let geocodedJobs = await geocodeJobsWithProgress(filteredJobs)
        
        // Step 2: Perform distance-based clustering
        let jobClusters = await performDistanceBasedClustering(geocodedJobs)
        
        withAnimation(.easeInOut(duration: 0.5)) {
            clusters = jobClusters
            isLoading = false
            
            // Auto-adjust map region to show all clusters
            if !clusters.isEmpty {
                adjustMapRegionToFitClusters()
            }
        }
    }
    
    private func getFilteredJobs() -> [SwiftDataJobApplication] {
        return jobStore.jobApplications.filter { job in
            guard let days = timeRange.days else { return true }
            let cutoffDate = Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
            return job.dateOfApplication >= cutoffDate
        }
    }
    
    // Geocoding populates stored coordinates + normalized city names so clusters align across the app.
    private func geocodeJobsWithProgress(_ jobs: [SwiftDataJobApplication]) async -> [GeocodedJob] {
        var geocodedJobs: [GeocodedJob] = []
        let totalJobs = jobs.count

        // Process jobs in smaller batches to avoid rate limiting
        let batchSize = 10
        var currentBatch = 0
        
        for jobBatch in jobs.chunked(into: batchSize) {
            // Process each batch with delays
            for (batchIndex, job) in jobBatch.enumerated() {
                if let resolved = await getResolvedLocationForJob(job) {
                    geocodedJobs.append(GeocodedJob(job: job, coordinate: resolved.coordinate, normalizedLocation: resolved.name))
                }
                
                // Update progress
                let totalProcessed = currentBatch * batchSize + batchIndex + 1
                await MainActor.run {
                    geocodingProgress = Double(totalProcessed) / Double(totalJobs)
                }
                
                // Small delay between requests to avoid throttling
                if batchIndex < jobBatch.count - 1 {
                    try? await Task.sleep(nanoseconds: 200_000_000) // 0.2 second delay
                }
            }
            
            currentBatch += 1
            
            // Longer delay between batches
            if currentBatch * batchSize < totalJobs {
                try? await Task.sleep(nanoseconds: 1_000_000_000) // 1 second delay between batches
            }
        }
        
        return geocodedJobs
    }
    
    private func getResolvedLocationForJob(_ job: SwiftDataJobApplication) async -> ResolvedLocation? {
        // First, check if we already have coordinates stored
        if let lat = job.latitude, let lon = job.longitude,
           lat != 0 && lon != 0 {
            let name = job.normalizedLocation ?? job.location
            return ResolvedLocation(name: name, coordinate: CLLocationCoordinate2D(latitude: lat, longitude: lon))
        }
        
        // If no stored coordinates, geocode the location
        guard !job.location.isEmpty else { return nil }

        do {
            // Longer delay between geocoding requests to avoid rate limiting
            try await Task.sleep(nanoseconds: 350_000_000) // 0.35 second delay
        } catch { }

        if let resolved = await LocationGeocoder.shared.resolveLocation(for: job.location) {
            Task { @MainActor in
                if job.latitude == nil || job.latitude == 0 {
                    job.latitude = resolved.coordinate.latitude
                    job.longitude = resolved.coordinate.longitude
                    job.normalizedLocation = resolved.name
                    try? job.modelContext?.save()
                }
            }

            logger.info("Geocoded '\(job.location)' to \(resolved.coordinate.latitude), \(resolved.coordinate.longitude)")
            return resolved
        }

        logger.warning("No results for geocoding '\(job.location)'")
        return nil
    }

    private func performDistanceBasedClustering(_ geocodedJobs: [GeocodedJob]) async -> [JobCluster] {
        guard !geocodedJobs.isEmpty else { return [] }

        var clusters: [JobCluster] = []
        let grouped = Dictionary(grouping: geocodedJobs) { job in
            let normalized = job.normalizedLocation.trimmingCharacters(in: .whitespacesAndNewlines)
            return normalized.isEmpty ? "Unknown Location" : normalized
        }

        for (locationName, clusterJobs) in grouped {
            let centroid = calculateCentroid(for: clusterJobs.map { $0.coordinate })
            let cluster = JobCluster(
                coordinate: centroid,
                jobs: clusterJobs.map { $0.job },
                title: locationName,
                subtitle: "\(clusterJobs.count) application\(clusterJobs.count == 1 ? "" : "s")"
            )
            clusters.append(cluster)
        }

        return clusters
    }
    
    @MainActor
    private func updateClustersForZoom() async {
        // Re-cluster based on zoom level
        // Future enhancement: Could adjust clustering distance based on zoom level for better UX
        await refreshClusters()
    }
    
    private func calculateCentroid(for coordinates: [CLLocationCoordinate2D]) -> CLLocationCoordinate2D {
        guard !coordinates.isEmpty else {
            return CLLocationCoordinate2D(latitude: 0, longitude: 0)
        }
        
        let totalLat = coordinates.reduce(0) { $0 + $1.latitude }
        let totalLon = coordinates.reduce(0) { $0 + $1.longitude }
        
        return CLLocationCoordinate2D(
            latitude: totalLat / Double(coordinates.count),
            longitude: totalLon / Double(coordinates.count)
        )
    }
    
    private func adjustMapRegionToFitClusters() {
        guard !clusters.isEmpty else { return }
        
        let coordinates = clusters.map { $0.coordinate }
        let latitudes = coordinates.map { $0.latitude }
        let longitudes = coordinates.map { $0.longitude }
        
        let minLat = latitudes.min() ?? 0
        let maxLat = latitudes.max() ?? 0
        let minLon = longitudes.min() ?? 0
        let maxLon = longitudes.max() ?? 0
        
        let center = CLLocationCoordinate2D(
            latitude: (minLat + maxLat) / 2,
            longitude: (minLon + maxLon) / 2
        )
        
        let span = MKCoordinateSpan(
            latitudeDelta: (maxLat - minLat) * 1.2, // Add 20% padding
            longitudeDelta: (maxLon - minLon) * 1.2
        )
        
        withAnimation(.easeInOut(duration: 1.0)) {
            mapCameraPosition = .region(MKCoordinateRegion(center: center, span: span))
        }
    }
}

// MARK: - Data Models

/// Represents a job with its geocoded coordinate
struct GeocodedJob {
    let job: SwiftDataJobApplication
    let coordinate: CLLocationCoordinate2D
    let normalizedLocation: String
}

/// Represents a cluster of jobs in a geographic area
struct JobCluster: Identifiable, Equatable, Hashable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
    let jobs: [SwiftDataJobApplication]
    let title: String
    let subtitle: String
    
    var count: Int { jobs.count }
    var primaryColor: Color {
        // Color intensity based on job count
        switch count {
        case 1...2: return .blue
        case 3...5: return .green
        case 6...10: return .orange
        default: return .red
        }
    }
    
    static func == (lhs: JobCluster, rhs: JobCluster) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

// MARK: - Supporting Views

/// Custom annotation view for job clusters
struct ClusterAnnotationView: View {
    let cluster: JobCluster
    let isSelected: Bool
    let onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            ZStack {
                // Outer ring for selection
                Circle()
                    .stroke(cluster.primaryColor, lineWidth: isSelected ? 4 : 2)
                    .frame(width: annotationSize + 8, height: annotationSize + 8)
                    .opacity(isSelected ? 1.0 : 0.7)
                    .scaleEffect(isSelected ? 1.1 : 1.0)
                
                // Background circle
                Circle()
                    .fill(cluster.primaryColor.opacity(0.2))
                    .frame(width: annotationSize, height: annotationSize)
                
                // Center circle
                Circle()
                    .fill(cluster.primaryColor)
                    .frame(width: 20, height: 20)
                
                // Count text
                Text("\(cluster.count)")
                    .font(.caption.bold())
                    .foregroundColor(.white)
            }
        }
        .buttonStyle(.plain)
        .animation(.spring(response: 0.3, dampingFraction: 0.7), value: isSelected)
    }
    
    private var annotationSize: CGFloat {
        // Size based on job count
        switch cluster.count {
        case 1...2: return 30
        case 3...5: return 40
        case 6...10: return 50
        default: return 60
        }
    }
}

/// Detail card shown when a cluster is selected
struct ClusterDetailCard: View {
    let cluster: JobCluster
    let onExpand: () -> Void
    let onClose: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(cluster.title)
                        .font(.headline)
                        .lineLimit(1)
                    
                    Text(cluster.subtitle)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                Button(action: onClose) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.secondary)
                }
                .buttonStyle(.plain)
            }
            
            // Top companies in cluster
            if cluster.jobs.count > 1 {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Companies:")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    let topCompanies = Dictionary(grouping: cluster.jobs) { $0.companyName }
                        .map { (company: $0.key, count: $0.value.count) }
                        .sorted { $0.count > $1.count }
                        .prefix(3)
                    
                    ForEach(Array(topCompanies), id: \.company) { company, count in
                        HStack {
                            Text(company)
                                .font(.caption2)
                                .lineLimit(1)
                            Spacer()
                            Text("\(count)")
                                .font(.caption2)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            
            Button("View Details") {
                onExpand()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
        }
        .padding(12)
        .background(Material.thick)
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.1), radius: 8, x: 0, y: 4)
        .frame(maxWidth: 250)
    }
}

/// Summary view showing cluster statistics
struct ClusterSummaryView: View {
    let clusters: [JobCluster]
    
    private var topClusters: [JobCluster] {
        clusters.sorted { $0.count > $1.count }.prefix(5).map { $0 }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Cluster Summary")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                Text("\(clusters.count) cluster\(clusters.count == 1 ? "" : "s")")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            if !clusters.isEmpty {
                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ], spacing: 8) {
                    ForEach(topClusters) { cluster in
                        HStack(spacing: 6) {
                            Circle()
                                .fill(cluster.primaryColor)
                                .frame(width: 8, height: 8)
                            
                            Text(cluster.title)
                                .font(.caption2)
                                .lineLimit(1)
                            
                            Spacer()
                            
                            Text("\(cluster.count)")
                                .font(.caption2.monospacedDigit())
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
        }
        .padding(.top, 8)
    }
}

/// Detailed sheet view for cluster exploration
struct ClusterDetailSheet: View {
    let cluster: JobCluster
    @EnvironmentObject var jobStore: JobStore
    @Environment(\.dismiss) var dismiss
    @State private var selectedJobID: UUID?
    
    var body: some View {
        NavigationSplitView {
            List(selection: $selectedJobID) {
                Section {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(cluster.title)
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text("\(cluster.count) application\(cluster.count == 1 ? "" : "s") in this area")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding(.vertical, 4)
                }
                
                Section("Applications") {
                    ForEach(cluster.jobs, id: \.id) { job in
                        VStack(alignment: .leading, spacing: 4) {
                            HStack {
                                Text(job.companyName)
                                    .font(.headline)
                                
                                Spacer()
                                
                                StatusBadge(status: job.status, isSelected: false)
                            }
                            
                            Text(job.jobTitle)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            
                            Text(job.dateOfApplication.formatted(date: .abbreviated, time: .omitted))
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        .padding(.vertical, 2)
                        .tag(job.id)
                    }
                }
            }
            .navigationTitle("Cluster Details")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Done") {
                        dismiss()
                    }
                }
            }
        } detail: {
            if let selectedJob = cluster.jobs.first(where: { $0.id == selectedJobID }) {
                ConsolidatedJobDetailView(job: selectedJob)
            } else {
                ContentUnavailableView(
                    "Select an application",
                    systemImage: "briefcase",
                    description: Text("Choose a job from the list to see details.")
                )
            }
        }
        .onAppear {
            if selectedJobID == nil {
                selectedJobID = cluster.jobs.first?.id
            }
        }
    }
}

// MARK: - Array Extension for Chunking

extension Array {
    /// Split array into chunks of specified size
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}

// MARK: - Coordinate Extensions

extension CLLocationCoordinate2D {
    /// Calculate distance between two coordinates
    func distance(to other: CLLocationCoordinate2D) -> CLLocationDistance {
        let location1 = CLLocation(latitude: self.latitude, longitude: self.longitude)
        let location2 = CLLocation(latitude: other.latitude, longitude: other.longitude)
        return location1.distance(from: location2)
    }
}

// MARK: - Region Comparison Helper

private extension EnhancedMapClusteringView {
    /// Check if the region changed significantly enough to warrant updating clusters
    func shouldUpdateClusters(newRegion: MKCoordinateRegion, lastRegion: MKCoordinateRegion?) -> Bool {
        guard let lastRegion = lastRegion else { return true }
        
        let centerLatDiff = abs(newRegion.center.latitude - lastRegion.center.latitude)
        let centerLonDiff = abs(newRegion.center.longitude - lastRegion.center.longitude)
        let spanLatDiff = abs(newRegion.span.latitudeDelta - lastRegion.span.latitudeDelta)
        let spanLonDiff = abs(newRegion.span.longitudeDelta - lastRegion.span.longitudeDelta)
        
        // Update if center moved more than 10% of the span or zoom changed by more than 20%
        let centerThreshold = min(lastRegion.span.latitudeDelta * 0.1, lastRegion.span.longitudeDelta * 0.1)
        let spanThreshold = min(lastRegion.span.latitudeDelta * 0.2, lastRegion.span.longitudeDelta * 0.2)
        
        return centerLatDiff > centerThreshold ||
               centerLonDiff > centerThreshold ||
               spanLatDiff > spanThreshold ||
               spanLonDiff > spanThreshold
    }
}

#Preview {
    EnhancedMapClusteringView(timeRange: .allTime)
        .environmentObject(JobStore())
}
