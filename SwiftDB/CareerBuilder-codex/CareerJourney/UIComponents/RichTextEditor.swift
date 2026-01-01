//
//  RichTextEditor.swift
//  CareerKit
//
//  Plain text editor with Markdown-friendly styling for Add/Edit job flows.
//

import SwiftUI

struct RichTextEditor: View {
    @Binding var text: String
    let placeholder: String
    let minHeight: CGFloat
    @FocusState private var isFocused: Bool
    @State private var isHovering = false

    init(text: Binding<String>, placeholder: String = "", minHeight: CGFloat = 120) {
        self._text = text
        self.placeholder = placeholder
        self.minHeight = minHeight
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack(alignment: .topLeading) {
                textEditorSurface

                if text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                    Text(placeholder)
                        .font(.body)
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 18)
                        .padding(.vertical, 14)
                        .allowsHitTesting(false)
                }
            }
            .onHover { isHovering = $0 }

            Text("Markdown renders after saving. Keep typing plain text here.")
                .font(.caption2)
                .foregroundStyle(.secondary)
        }
    }

    private var textEditorSurface: some View {
        TextEditor(text: $text)
            .font(.system(.body))
            .foregroundColor(.primary)
            .multilineTextAlignment(.leading)
            .textSelection(.enabled)
            .focused($isFocused)
            .padding(.top, 6)
            .padding(.horizontal, 12)
            .padding(.bottom, 10)
            .frame(minHeight: minHeight, alignment: .topLeading)
            .background(
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .fill(Color(nsColor: .textBackgroundColor))
            )
            .overlay(
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .stroke(borderColor, lineWidth: 1)
            )
            .shadow(color: Color.black.opacity(isFocused ? 0.08 : 0.03), radius: isFocused ? 8 : 4, y: 2)
            .scrollContentBackground(.hidden)
            .animation(.easeInOut(duration: 0.15), value: isFocused)
            .animation(.easeInOut(duration: 0.2), value: isHovering)
    }

    private var borderColor: Color {
        if isFocused {
            return Color.accentColor.opacity(0.8)
        }
        if isHovering {
            return Color.accentColor.opacity(0.35)
        }
        return Color(nsColor: .separatorColor).opacity(0.6)
    }
}

#Preview {
    RichTextEditorPreview()
}

private struct RichTextEditorPreview: View {
    @State private var sample = ""

    var body: some View {
        RichTextEditor(text: $sample, placeholder: "Paste the job description…", minHeight: 200)
            .padding()
            .frame(width: 500)
    }
}
