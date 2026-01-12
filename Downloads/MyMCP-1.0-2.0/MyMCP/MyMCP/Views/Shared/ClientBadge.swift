import SwiftUI

struct ClientBadge: View {
    let clientType: MCPClientType
    var size: CGFloat = 24
    var showBorder: Bool = true

    var body: some View {
        Image(systemName: clientType.systemIconFallback)
            .font(.system(size: size * 0.5))
            .foregroundStyle(.white)
            .frame(width: size, height: size)
            .background(clientType.accentColor)
            .clipShape(Circle())
            .overlay {
                if showBorder {
                    Circle()
                        .stroke(Color(nsColor: .windowBackgroundColor), lineWidth: 2)
                }
            }
            .help(clientType.displayName)
    }
}

struct ClientBadgeStack: View {
    let clientTypes: [MCPClientType]
    var size: CGFloat = 20
    var overlap: CGFloat = -6

    var body: some View {
        HStack(spacing: overlap) {
            ForEach(clientTypes, id: \.self) { clientType in
                ClientBadge(clientType: clientType, size: size)
            }
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        HStack(spacing: 12) {
            ForEach(MCPClientType.allCases) { client in
                ClientBadge(clientType: client, size: 32)
            }
        }

        ClientBadgeStack(clientTypes: [.claudeDesktop, .cursor, .vscode], size: 24)
    }
    .padding()
}
