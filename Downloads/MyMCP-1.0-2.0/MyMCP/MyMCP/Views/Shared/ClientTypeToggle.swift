import SwiftUI

/// Toggle checkbox for selecting a client type
struct ClientTypeToggle: View {
    let clientType: MCPClientType
    @Binding var isSelected: Bool

    var body: some View {
        Toggle(isOn: $isSelected) {
            HStack {
                Image(systemName: clientType.systemIconFallback)
                    .foregroundStyle(clientType.accentColor)
                    .frame(width: 24)
                Text(clientType.displayName)
            }
        }
        .toggleStyle(.checkbox)
    }
}

#Preview {
    VStack(alignment: .leading) {
        ClientTypeToggle(clientType: .claudeDesktop, isSelected: .constant(true))
        ClientTypeToggle(clientType: .cursor, isSelected: .constant(false))
        ClientTypeToggle(clientType: .vscode, isSelected: .constant(true))
    }
    .padding()
}
