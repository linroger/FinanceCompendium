//
//  LocationViews.swift
//  CareerKit
//
//  Location-related views for job applications
//

import SwiftUI
import CoreLocation
import MapKit

// MARK: - New Location Window View
struct NewLocationWindowView: View {
    @Binding var locations: [String]
    @Binding var selectedLocation: String
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        AdvancedNewLocationView(
            locations: $locations,
            selectedLocation: $selectedLocation,
            dismiss: dismiss
        )
        .frame(width: 500, height: 600)
        .background(Color(NSColor.controlBackgroundColor))
    }
}

// MARK: - Location Preview Pin
struct LocationPreviewPin: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct ResolvedLocation: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

// MARK: - Location Search Result
struct LocationSearchResult: Identifiable {
    let id = UUID()
    let mapItem: MKMapItem
    
    var displayName: String {
        mapItem.name ?? "Unknown Location"
    }
    
    var address: String {
        if mapItem.placemark.location != nil {
            return formatAddress(from: mapItem.placemark)
        }
        return ""
    }
    
    var coordinates: CLLocationCoordinate2D {
        mapItem.placemark.coordinate
    }
    
    private func formatAddress(from placemark: MKPlacemark) -> String {
        var components: [String] = []
        
        if let locality = placemark.locality {
            components.append(locality)
        }
        if let administrativeArea = placemark.administrativeArea {
            components.append(administrativeArea)
        }
        if let country = placemark.country {
            components.append(country)
        }
        
        return components.joined(separator: ", ")
    }
}

// MARK: - Advanced New Location View
struct AdvancedNewLocationView: View {
    @Binding var locations: [String]
    @Binding var selectedLocation: String
    let dismiss: DismissAction
    
    @State private var searchText: String = ""
    @State private var newLocationName: String = ""
    @State private var latitude: String = ""
    @State private var longitude: String = ""
    @State private var lookupMessage: String?
    @State private var isSearching: Bool = false
    @State private var searchResults: [LocationSearchResult] = []
    @State private var selectedResult: LocationSearchResult?
    @State private var previewCoordinate: CLLocationCoordinate2D?
    private static let defaultRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
    )
    @State private var region = defaultRegion
    @State private var mapCameraPosition: MapCameraPosition = .region(defaultRegion)
    
    @FocusState private var fieldInFocus: Field?
    
    enum Field {
        case search, locationName, latitude, longitude
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.large) {
            headerSection
            searchSection
            manualEntrySection
            mapPreviewSection
            messageSection
            Spacer()
            actionButtonsSection
        }
        .padding()
        .onAppear {
            fieldInFocus = .search
            mapCameraPosition = .region(region)
        }
    }
    
    // MARK: - Section Views
    
    private var headerSection: some View {
        HStack {
            Text("Add New Location")
                .font(.title2)
                .fontWeight(.semibold)
            
            Spacer()
            
            Button(action: { dismiss() }) {
                Image(systemName: "xmark.circle.fill")
                    .foregroundStyle(.secondary)
                    .font(.title2)
            }
            .buttonStyle(.plain)
        }
    }
    
    private var searchSection: some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.small) {
            Text("Search for Location")
                .font(.headline)
            
            searchBar
            searchResultsList
        }
    }
    
    private var searchBar: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(.secondary)
            
            TextField("Search city, address, or place...", text: $searchText)
                .textFieldStyle(.plain)
                .focused($fieldInFocus, equals: .search)
                .onSubmit {
                    searchLocation()
                }
            
            if isSearching {
                ProgressView()
                    .scaleEffect(0.8)
                    .controlSize(.small)
            }
            
            if !searchText.isEmpty {
                Button(action: { 
                    searchText = ""
                    searchResults = []
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundStyle(.secondary)
                }
                .buttonStyle(.plain)
            }
        }
        .padding(8)
        .background(Color(NSColor.textBackgroundColor))
        .cornerRadius(Theme.CornerRadius.small)
    }
    
    @ViewBuilder
    private var searchResultsList: some View {
        if !searchResults.isEmpty {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(searchResults) { result in
                        searchResultRow(result)
                        
                        if result.id != searchResults.last?.id {
                            Divider()
                                .padding(.leading, 12)
                        }
                    }
                }
            }
            .frame(maxHeight: 150)
            .background(Color(NSColor.controlBackgroundColor))
            .cornerRadius(Theme.CornerRadius.small)
            .overlay(
                RoundedRectangle(cornerRadius: Theme.CornerRadius.small)
                    .stroke(Color.secondary.opacity(0.2), lineWidth: 1)
            )
        }
    }
    
    private func searchResultRow(_ result: LocationSearchResult) -> some View {
        Button(action: {
            selectSearchResult(result)
        }) {
            VStack(alignment: .leading, spacing: 4) {
                Text(result.displayName)
                    .font(.body)
                    .foregroundColor(.primary)
                
                Text(result.address)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .buttonStyle(.plain)
        .background(selectedResult?.id == result.id ? Color.accentColor.opacity(0.1) : Color.clear)
    }
    
    private var manualEntrySection: some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.small) {
            Text("Or Enter Manually")
                .font(.headline)
            
            VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
                locationNameField
                coordinatesFields
                previewButton
            }
        }
    }
    
    private var locationNameField: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Location Name")
                .font(.subheadline)
                .foregroundColor(.secondary)
            TextField("e.g., San Francisco, CA", text: $newLocationName)
                .textFieldStyle(.roundedBorder)
                .focused($fieldInFocus, equals: .locationName)
        }
    }
    
    private var coordinatesFields: some View {
        HStack(spacing: Theme.Spacing.medium) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Latitude (optional)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                TextField("e.g., 37.7749", text: $latitude)
                    .textFieldStyle(.roundedBorder)
                    .focused($fieldInFocus, equals: .latitude)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Longitude (optional)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                TextField("e.g., -122.4194", text: $longitude)
                    .textFieldStyle(.roundedBorder)
                    .focused($fieldInFocus, equals: .longitude)
            }
        }
    }
    
    @ViewBuilder
    private var previewButton: some View {
        if !latitude.isEmpty && !longitude.isEmpty {
            Button("Preview on Map") {
                previewCoordinates()
            }
            .buttonStyle(.bordered)
            .controlSize(.small)
        }
    }
    
    @ViewBuilder
    private var mapPreviewSection: some View {
        if previewCoordinate != nil || !searchResults.isEmpty {
            Map(position: $mapCameraPosition, interactionModes: [.all]) {
                ForEach(mapAnnotations) { pin in
                    Marker("", coordinate: pin.coordinate)
                        .tint(.red)
                }
            }
            .frame(height: 200)
            .cornerRadius(Theme.CornerRadius.medium)
            .overlay(
                RoundedRectangle(cornerRadius: Theme.CornerRadius.medium)
                    .stroke(Color.secondary.opacity(0.2), lineWidth: 1)
            )
            .onMapCameraChange { context in
                region = context.region
            }
        }
    }
    
    @ViewBuilder
    private var messageSection: some View {
        if let message = lookupMessage {
            Text(message)
                .font(.caption)
                .foregroundColor(message.contains("Error") ? .red : .green)
                .padding(.horizontal)
        }
    }
    
    private var actionButtonsSection: some View {
        HStack {
            Button("Cancel") {
                dismiss()
            }
            .buttonStyle(.bordered)
            .keyboardShortcut(.escape)
            
            Spacer()
            
            Button("Add Location") {
                addLocation()
            }
            .buttonStyle(.borderedProminent)
            .keyboardShortcut(.return)
            .disabled(newLocationName.isEmpty)
        }
    }
    
    // MARK: - Helper Methods
    
    private var mapAnnotations: [LocationPreviewPin] {
        var pins: [LocationPreviewPin] = []
        
        if let coordinate = previewCoordinate {
            pins.append(LocationPreviewPin(coordinate: coordinate))
        }
        
        if let selected = selectedResult {
            pins.append(LocationPreviewPin(coordinate: selected.coordinates))
        }
        
        return pins
    }

    private func updateMapRegion(_ newRegion: MKCoordinateRegion) {
        region = newRegion
        mapCameraPosition = .region(newRegion)
    }
    
    private func searchLocation() {
        guard !searchText.isEmpty else { return }
        
        isSearching = true
        searchResults = []
        lookupMessage = nil
        
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = searchText
        
        let search = MKLocalSearch(request: request)
        search.start { response, error in
            DispatchQueue.main.async {
                isSearching = false
                
                if let error = error {
                    lookupMessage = "Search error: \(error.localizedDescription)"
                    return
                }
                
                if let response = response {
                    searchResults = response.mapItems.map { LocationSearchResult(mapItem: $0) }
                    
                    if searchResults.isEmpty {
                        lookupMessage = "No results found for '\(searchText)'"
                    } else {
                        // Update region to show search results
                        if let firstResult = searchResults.first {
                            let newRegion = MKCoordinateRegion(
                                center: firstResult.coordinates,
                                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
                            )
                            updateMapRegion(newRegion)
                        }
                    }
                }
            }
        }
    }
    
    private func selectSearchResult(_ result: LocationSearchResult) {
        selectedResult = result
        newLocationName = result.address
        latitude = String(format: "%.4f", result.coordinates.latitude)
        longitude = String(format: "%.4f", result.coordinates.longitude)
        
        // Update map region
        let newRegion = MKCoordinateRegion(
            center: result.coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
        updateMapRegion(newRegion)

        previewCoordinate = result.coordinates
    }
    
    private func previewCoordinates() {
        guard let lat = Double(latitude),
              let lon = Double(longitude) else {
            lookupMessage = "Invalid coordinates"
            return
        }
        
        let coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        previewCoordinate = coordinate
        
        // Update map region
        let newRegion = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
        updateMapRegion(newRegion)
        
        lookupMessage = "Location preview updated"
    }
    
    private func addLocation() {
        guard !newLocationName.isEmpty else { return }
        
        // Add to locations if not already present
        if !locations.contains(newLocationName) {
            locations.append(newLocationName)
            locations.sort()
        }
        
        // Set as selected location
        selectedLocation = newLocationName
        
        dismiss()
    }
}

// MARK: - Shared Location Utilities

struct LocationMarker: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D

    static func == (lhs: LocationMarker, rhs: LocationMarker) -> Bool {
        lhs.id == rhs.id
    }
}

enum LocationParser {
    static func parseLocations(from rawValue: String) -> [String] {
        let normalized = rawValue
            .replacingOccurrences(of: "\r", with: "\n")
            .replacingOccurrences(of: "/", with: ";")
            .replacingOccurrences(of: " | ", with: ";")
            .replacingOccurrences(of: " & ", with: ";")
            .replacingOccurrences(of: " and ", with: ";")

        let components = normalized
            .components(separatedBy: CharacterSet(charactersIn: "\n;"))
            .flatMap { entry -> [String] in
                let trimmed = entry.trimmingCharacters(in: .whitespacesAndNewlines)
                guard !trimmed.isEmpty else { return [] }
                return [trimmed]
            }

        if components.isEmpty, !rawValue.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            return [rawValue.trimmingCharacters(in: .whitespacesAndNewlines)]
        }

        return components
    }
}

actor LocationGeocoder {
    static let shared = LocationGeocoder()
    private var cache: [String: ResolvedLocation] = [:]

    // MapKit-backed geocoding shared by job forms, job detail previews, and stats map clustering.
    func resolveCoordinate(for location: String) async -> CLLocationCoordinate2D? {
        await resolveLocation(for: location)?.coordinate
    }

    func resolveLocation(for location: String) async -> ResolvedLocation? {
        let key = location.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        guard !key.isEmpty else { return nil }

        if let cached = cache[key] { return cached }
        if key.contains("remote") { return nil }

        if let searchResult = await searchWithMapKit(location) {
            cache[key] = searchResult
            cache[searchResult.name.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()] = searchResult
            return searchResult
        }

        if let geocoded = await searchWithGeocoder(location) {
            cache[key] = geocoded
            cache[geocoded.name.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()] = geocoded
            return geocoded
        }

        if let fallback = KnownLocationLookup.coordinate(for: location) {
            let resolved = ResolvedLocation(name: location, coordinate: fallback)
            cache[key] = resolved
            cache[resolved.name.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()] = resolved
            return resolved
        }

        return nil
    }

    private func searchWithMapKit(_ location: String) async -> ResolvedLocation? {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = location
        request.resultTypes = .address

        do {
            let response = try await MKLocalSearch(request: request).start()
            if let item = response.mapItems.first {
                let placemark = item.placemark
                let name = normalizedName(from: placemark, fallback: location)
                return ResolvedLocation(name: name, coordinate: placemark.coordinate)
            }
        } catch { }

        return nil
    }

    private func searchWithGeocoder(_ location: String) async -> ResolvedLocation? {
        do {
            let geocoder = CLGeocoder()
            let placemarks = try await geocoder.geocodeAddressString(location)
            if let placemark = placemarks.first,
               let coordinate = placemark.location?.coordinate {
                let name = normalizedName(from: placemark, fallback: location)
                return ResolvedLocation(name: name, coordinate: coordinate)
            }
        } catch { }
        return nil
    }

    private func normalizedName(from placemark: CLPlacemark, fallback: String) -> String {
        var components: [String] = []

        if let locality = placemark.locality {
            components.append(locality)
        }
        if let administrativeArea = placemark.administrativeArea {
            components.append(administrativeArea)
        }

        if components.isEmpty, let country = placemark.country {
            components.append(country)
        }

        if components.isEmpty {
            return fallback
        }

        return components.joined(separator: ", ")
    }
}

struct LocationMarkersMap: View {
    let markers: [LocationMarker]
    var interactionModes: MapInteractionModes = []
    var showsMapControls: Bool = false
    @State private var cameraPosition: MapCameraPosition = .automatic

    var body: some View {
        Group {
            if markers.isEmpty {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.secondary.opacity(0.08))
                    .overlay(
                        VStack(spacing: 6) {
                            Image(systemName: "map")
                                .foregroundStyle(.secondary)
                            Text("No map preview")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    )
            } else {
                Map(position: $cameraPosition, interactionModes: interactionModes) {
                    ForEach(markers) { marker in
                        Marker(marker.name, coordinate: marker.coordinate)
                    }
                }
                .mapStyle(.standard(elevation: .automatic))
                .mapControls {
                    if showsMapControls {
                        MapCompass()
                        MapScaleView()
                        MapPitchToggle()
                    }
                }
                .allowsHitTesting(!interactionModes.isEmpty)
                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                .onAppear(perform: updateCamera)
                .onChange(of: markers) { _, _ in updateCamera() }
            }
        }
    }

    private func updateCamera() {
        guard !markers.isEmpty else { return }
        if markers.count == 1 {
            cameraPosition = .region(
                MKCoordinateRegion(
                    center: markers[0].coordinate,
                    span: MKCoordinateSpan(latitudeDelta: 0.6, longitudeDelta: 0.6)
                )
            )
            return
        }

        let latitudes = markers.map { $0.coordinate.latitude }
        let longitudes = markers.map { $0.coordinate.longitude }
        let minLat = latitudes.min() ?? 0
        let maxLat = latitudes.max() ?? 0
        let minLon = longitudes.min() ?? 0
        let maxLon = longitudes.max() ?? 0
        let span = MKCoordinateSpan(
            latitudeDelta: max(0.2, (maxLat - minLat) * 1.4),
            longitudeDelta: max(0.2, (maxLon - minLon) * 1.4)
        )
        let center = CLLocationCoordinate2D(
            latitude: (minLat + maxLat) / 2,
            longitude: (minLon + maxLon) / 2
        )
        cameraPosition = .region(MKCoordinateRegion(center: center, span: span))
    }
}

enum KnownLocationLookup {
    private static let baseCoordinates: [(String, CLLocationCoordinate2D)] = [
        ("New York", CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)),
        ("New York City", CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)),
        ("NYC", CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)),
        ("Los Angeles", CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437)),
        ("San Francisco", CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)),
        ("Chicago", CLLocationCoordinate2D(latitude: 41.8781, longitude: -87.6298)),
        ("Seattle", CLLocationCoordinate2D(latitude: 47.6062, longitude: -122.3321)),
        ("Boston", CLLocationCoordinate2D(latitude: 42.3601, longitude: -71.0589)),
        ("Austin", CLLocationCoordinate2D(latitude: 30.2672, longitude: -97.7431)),
        ("Miami", CLLocationCoordinate2D(latitude: 25.7617, longitude: -80.1918)),
        ("Dallas", CLLocationCoordinate2D(latitude: 32.7767, longitude: -96.7970)),
        ("Denver", CLLocationCoordinate2D(latitude: 39.7392, longitude: -104.9903)),
        ("Washington DC", CLLocationCoordinate2D(latitude: 38.9072, longitude: -77.0369)),
        ("Philadelphia", CLLocationCoordinate2D(latitude: 39.9526, longitude: -75.1652)),
        ("Atlanta", CLLocationCoordinate2D(latitude: 33.7490, longitude: -84.3880)),
        ("Phoenix", CLLocationCoordinate2D(latitude: 33.4484, longitude: -112.0740)),
        ("Las Vegas", CLLocationCoordinate2D(latitude: 36.1699, longitude: -115.1398)),
        ("Detroit", CLLocationCoordinate2D(latitude: 42.3314, longitude: -83.0458)),
        ("Minneapolis", CLLocationCoordinate2D(latitude: 44.9778, longitude: -93.2650)),
        ("San Diego", CLLocationCoordinate2D(latitude: 32.7157, longitude: -117.1611)),
        ("Portland", CLLocationCoordinate2D(latitude: 45.5152, longitude: -122.6784)),
        ("Nashville", CLLocationCoordinate2D(latitude: 36.1627, longitude: -86.7816)),
        ("Charlotte", CLLocationCoordinate2D(latitude: 35.2271, longitude: -80.8431)),
        ("Indianapolis", CLLocationCoordinate2D(latitude: 39.7684, longitude: -86.1581)),
        ("Columbus", CLLocationCoordinate2D(latitude: 39.9612, longitude: -82.9988)),
        ("San Antonio", CLLocationCoordinate2D(latitude: 29.4241, longitude: -98.4936)),
        ("Fort Worth", CLLocationCoordinate2D(latitude: 32.7555, longitude: -97.3308)),
        ("Jacksonville", CLLocationCoordinate2D(latitude: 30.3322, longitude: -81.6557)),
        ("San Jose", CLLocationCoordinate2D(latitude: 37.3382, longitude: -121.8863)),
        ("Memphis", CLLocationCoordinate2D(latitude: 35.1495, longitude: -90.0490)),
        ("Baltimore", CLLocationCoordinate2D(latitude: 39.2904, longitude: -76.6122)),
        ("Milwaukee", CLLocationCoordinate2D(latitude: 43.0389, longitude: -87.9065)),
        ("Albuquerque", CLLocationCoordinate2D(latitude: 35.0844, longitude: -106.6504)),
        ("Tucson", CLLocationCoordinate2D(latitude: 32.2540, longitude: -110.9742)),
        ("Fresno", CLLocationCoordinate2D(latitude: 36.7378, longitude: -119.7871)),
        ("Sacramento", CLLocationCoordinate2D(latitude: 38.5816, longitude: -121.4944)),
        ("Kansas City", CLLocationCoordinate2D(latitude: 39.0997, longitude: -94.5786)),
        ("Mesa", CLLocationCoordinate2D(latitude: 33.4152, longitude: -111.8315)),
        ("Virginia Beach", CLLocationCoordinate2D(latitude: 36.8529, longitude: -75.9780)),
        ("Colorado Springs", CLLocationCoordinate2D(latitude: 38.8339, longitude: -104.8214)),
        ("Omaha", CLLocationCoordinate2D(latitude: 41.2565, longitude: -95.9345)),
        ("Raleigh", CLLocationCoordinate2D(latitude: 35.7796, longitude: -78.6382)),
        ("Long Beach", CLLocationCoordinate2D(latitude: 33.7701, longitude: -118.1937)),
        ("Oakland", CLLocationCoordinate2D(latitude: 37.8044, longitude: -122.2712)),
        ("Tulsa", CLLocationCoordinate2D(latitude: 36.1540, longitude: -95.9928)),
        ("Honolulu", CLLocationCoordinate2D(latitude: 21.3099, longitude: -157.8581)),
        ("Newport Beach", CLLocationCoordinate2D(latitude: 33.6189, longitude: -117.9289)),
        ("Century City", CLLocationCoordinate2D(latitude: 34.0578, longitude: -118.4133)),
        ("Westport", CLLocationCoordinate2D(latitude: 41.1415, longitude: -73.3579)),
        ("Menlo Park", CLLocationCoordinate2D(latitude: 37.4419, longitude: -122.1430)),
        ("London", CLLocationCoordinate2D(latitude: 51.5074, longitude: -0.1278)),
        ("London, UK", CLLocationCoordinate2D(latitude: 51.5074, longitude: -0.1278)),
        ("Singapore", CLLocationCoordinate2D(latitude: 1.3521, longitude: 103.8198)),
        ("Hong Kong", CLLocationCoordinate2D(latitude: 22.3193, longitude: 114.1694)),
        ("Hong Kong SAR", CLLocationCoordinate2D(latitude: 22.3193, longitude: 114.1694)),
        ("Shanghai", CLLocationCoordinate2D(latitude: 31.2304, longitude: 121.4737)),
        ("Shanghai, CN", CLLocationCoordinate2D(latitude: 31.2304, longitude: 121.4737)),
        ("Beijing", CLLocationCoordinate2D(latitude: 39.9042, longitude: 116.4074)),
        ("Beijing, CN", CLLocationCoordinate2D(latitude: 39.9042, longitude: 116.4074)),
        ("Shenzhen", CLLocationCoordinate2D(latitude: 22.5431, longitude: 114.0579)),
        ("Shenzhen, CN", CLLocationCoordinate2D(latitude: 22.5431, longitude: 114.0579)),
        ("Manila", CLLocationCoordinate2D(latitude: 14.5995, longitude: 120.9842)),
        ("Manila, PH", CLLocationCoordinate2D(latitude: 14.5995, longitude: 120.9842)),
        ("Tokyo", CLLocationCoordinate2D(latitude: 35.6762, longitude: 139.6503)),
        ("Tokyo, JP", CLLocationCoordinate2D(latitude: 35.6762, longitude: 139.6503)),
        ("Toronto", CLLocationCoordinate2D(latitude: 43.6532, longitude: -79.3832)),
        ("Vancouver", CLLocationCoordinate2D(latitude: 49.2827, longitude: -123.1207)),
        ("Montreal", CLLocationCoordinate2D(latitude: 45.5017, longitude: -73.5673)),
        ("Sydney", CLLocationCoordinate2D(latitude: -33.8688, longitude: 151.2093)),
        ("Melbourne", CLLocationCoordinate2D(latitude: -37.8136, longitude: 144.9631)),
        ("Dublin", CLLocationCoordinate2D(latitude: 53.3498, longitude: -6.2603)),
        ("Amsterdam", CLLocationCoordinate2D(latitude: 52.3676, longitude: 4.9041)),
        ("Zurich", CLLocationCoordinate2D(latitude: 47.3769, longitude: 8.5417)),
        ("Frankfurt", CLLocationCoordinate2D(latitude: 50.1109, longitude: 8.6821)),
        ("Paris", CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522)),
        ("Madrid", CLLocationCoordinate2D(latitude: 40.4168, longitude: -3.7038)),
        ("Barcelona", CLLocationCoordinate2D(latitude: 41.3851, longitude: 2.1734)),
        ("Milan", CLLocationCoordinate2D(latitude: 45.4642, longitude: 9.1900)),
        ("Rome", CLLocationCoordinate2D(latitude: 41.9028, longitude: 12.4964)),
        ("Stockholm", CLLocationCoordinate2D(latitude: 59.3293, longitude: 18.0686)),
        ("Copenhagen", CLLocationCoordinate2D(latitude: 55.6761, longitude: 12.5683)),
        ("Oslo", CLLocationCoordinate2D(latitude: 59.9139, longitude: 10.7522)),
        ("Helsinki", CLLocationCoordinate2D(latitude: 60.1695, longitude: 24.9354)),
        ("Warsaw", CLLocationCoordinate2D(latitude: 52.2297, longitude: 21.0122)),
        ("Prague", CLLocationCoordinate2D(latitude: 50.0755, longitude: 14.4378)),
        ("Vienna", CLLocationCoordinate2D(latitude: 48.2082, longitude: 16.3738)),
        ("Budapest", CLLocationCoordinate2D(latitude: 47.4979, longitude: 19.0402)),
        ("Brussels", CLLocationCoordinate2D(latitude: 50.8503, longitude: 4.3517)),
        ("Geneva", CLLocationCoordinate2D(latitude: 46.2044, longitude: 6.1432)),
        ("Luxembourg", CLLocationCoordinate2D(latitude: 49.6116, longitude: 6.1319)),
        ("Monaco", CLLocationCoordinate2D(latitude: 43.7384, longitude: 7.4246)),
        ("São Paulo", CLLocationCoordinate2D(latitude: -23.5558, longitude: -46.6396)),
        ("Rio de Janeiro", CLLocationCoordinate2D(latitude: -22.9068, longitude: -43.1729)),
        ("Buenos Aires", CLLocationCoordinate2D(latitude: -34.6118, longitude: -58.3960)),
        ("Mexico City", CLLocationCoordinate2D(latitude: 19.4326, longitude: -99.1332)),
        ("Monterrey", CLLocationCoordinate2D(latitude: 25.6866, longitude: -100.3161)),
        ("Guadalajara", CLLocationCoordinate2D(latitude: 20.6597, longitude: -103.3496)),
        ("Bogotá", CLLocationCoordinate2D(latitude: 4.7110, longitude: -74.0721)),
        ("Lima", CLLocationCoordinate2D(latitude: -12.0464, longitude: -77.0428)),
        ("Santiago", CLLocationCoordinate2D(latitude: -33.4489, longitude: -70.6693)),
        ("Mumbai", CLLocationCoordinate2D(latitude: 19.0760, longitude: 72.8777)),
        ("Delhi", CLLocationCoordinate2D(latitude: 28.7041, longitude: 77.1025)),
        ("Bangalore", CLLocationCoordinate2D(latitude: 12.9716, longitude: 77.5946)),
        ("Hyderabad", CLLocationCoordinate2D(latitude: 17.3850, longitude: 78.4867)),
        ("Chennai", CLLocationCoordinate2D(latitude: 13.0827, longitude: 80.2707)),
        ("Pune", CLLocationCoordinate2D(latitude: 18.5204, longitude: 73.8567)),
        ("Kolkata", CLLocationCoordinate2D(latitude: 22.5726, longitude: 88.3639)),
        ("Ahmedabad", CLLocationCoordinate2D(latitude: 23.0225, longitude: 72.5714)),
        ("Seoul", CLLocationCoordinate2D(latitude: 37.5665, longitude: 126.9780)),
        ("Busan", CLLocationCoordinate2D(latitude: 35.1796, longitude: 129.0756)),
        ("Bangkok", CLLocationCoordinate2D(latitude: 13.7563, longitude: 100.5018)),
        ("Jakarta", CLLocationCoordinate2D(latitude: -6.2088, longitude: 106.8456)),
        ("Kuala Lumpur", CLLocationCoordinate2D(latitude: 3.1390, longitude: 101.6869)),
        ("Ho Chi Minh City", CLLocationCoordinate2D(latitude: 10.8231, longitude: 106.6297)),
        ("Hanoi", CLLocationCoordinate2D(latitude: 21.0285, longitude: 105.8542)),
        ("Taipei", CLLocationCoordinate2D(latitude: 25.0330, longitude: 121.5654)),
        ("Remote", CLLocationCoordinate2D(latitude: 39.8283, longitude: -98.5795)),
        ("United States, Remote", CLLocationCoordinate2D(latitude: 39.8283, longitude: -98.5795)),
        ("US Remote", CLLocationCoordinate2D(latitude: 39.8283, longitude: -98.5795)),
        ("Work from Home", CLLocationCoordinate2D(latitude: 39.8283, longitude: -98.5795)),
        ("WFH", CLLocationCoordinate2D(latitude: 39.8283, longitude: -98.5795))
    ]

    static func coordinate(for location: String) -> CLLocationCoordinate2D? {
        let trimmed = location.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        guard !trimmed.isEmpty else { return nil }
        let dictionary = Dictionary(uniqueKeysWithValues: baseCoordinates.map { ($0.0.lowercased(), $0.1) })
        if let exact = dictionary[trimmed] { return exact }
        if let match = dictionary.first(where: { trimmed.contains($0.key) || $0.key.contains(trimmed) }) {
            return match.value
        }
        return nil
    }
}
