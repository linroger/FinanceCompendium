import SwiftUI

struct ServerIconView: View {
    let url: URL?
    let size: CGFloat

    @State private var image: NSImage?
    @State private var isLoading = false

    var body: some View {
        Group {
            if let image = image {
                Image(nsImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else if isLoading {
                ProgressView()
                    .controlSize(.small)
            } else {
                Image(systemName: "server.rack")
                    .font(.system(size: size * 0.5))
                    .foregroundStyle(.secondary)
            }
        }
        .frame(width: size, height: size)
        .background(Color(nsColor: .controlBackgroundColor))
        .cornerRadius(size * 0.2)
        .task(id: url) {
            await loadImage()
        }
    }

    private func loadImage() async {
        guard let url = url else { return }

        isLoading = true
        defer { isLoading = false }

        do {
            image = try await ImageCacheService.shared.loadImage(from: url)
        } catch {
            // Use fallback icon
        }
    }
}

#Preview {
    HStack {
        ServerIconView(url: nil, size: 32)
        ServerIconView(url: nil, size: 48)
        ServerIconView(url: nil, size: 64)
    }
    .padding()
}
