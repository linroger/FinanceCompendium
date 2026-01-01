//
//  SkillComponents.swift
//  CareerKit
//
//  Skill-related UI components for job forms
//

import SwiftUI

// MARK: - Skill Combo Box Field
struct SkillComboBoxField: View {
    @Binding var text: String
    @Binding var suggestions: [String]
    var onCommit: () -> Void
    
    @State private var showSuggestions = false
    @FocusState private var isFocused: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            TextField("Type a skill (comma-separated), then press Enter", text: $text)
                .textFieldStyle(.roundedBorder)
                .focused($isFocused)
                .onSubmit {
                    onCommit()
                }
                .onChange(of: text) { _, newValue in
                    showSuggestions = !suggestions.isEmpty && !newValue.isEmpty
                }
                .onChange(of: isFocused) { _, newValue in
                    if !newValue {
                        // Hide suggestions when focus is lost
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            showSuggestions = false
                        }
                    }
                }
            
            if showSuggestions && !suggestions.isEmpty {
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(suggestions.prefix(5), id: \.self) { suggestion in
                        Button(action: {
                            text = suggestion
                            onCommit()
                            suggestions = []
                            showSuggestions = false
                        }) {
                            HStack {
                                Text(suggestion)
                                    .foregroundColor(.primary)
                                Spacer()
                            }
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .contentShape(Rectangle())
                        }
                        .buttonStyle(.plain)
                        .background(Color.accentColor.opacity(0.1))
                        
                        if suggestion != suggestions.prefix(5).last {
                            Divider()
                        }
                    }
                }
                .background(Color(NSColor.controlBackgroundColor))
                .cornerRadius(Theme.CornerRadius.small)
                .overlay(
                    RoundedRectangle(cornerRadius: Theme.CornerRadius.small)
                        .stroke(Color.secondary.opacity(0.2), lineWidth: 1)
                )
                .shadow(color: Color.black.opacity(0.1), radius: 2, x: 0, y: 2)
                .frame(maxHeight: 150)
            }
        }
    }
}

// MARK: - Skill Tag
struct SkillTag: View {
    let skillName: String
    var removeAction: () -> Void
    
    @State private var isHovered = false
    
    var body: some View {
        HStack(spacing: 4) {
            Text(skillName)
                .font(.caption)
                .foregroundColor(.primary)
            
            Button(action: removeAction) {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(isHovered ? .red : .secondary)
                    .imageScale(.small)
            }
            .buttonStyle(.plain)
            .opacity(isHovered ? 1 : 0.7)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background(Color.accentColor.opacity(0.15))
        .cornerRadius(Theme.CornerRadius.small)
        .overlay(
            RoundedRectangle(cornerRadius: Theme.CornerRadius.small)
                .stroke(Color.accentColor.opacity(0.3), lineWidth: 0.5)
        )
        .onHover { hovering in
            withAnimation(.easeInOut(duration: 0.15)) {
                isHovered = hovering
            }
        }
    }
}


