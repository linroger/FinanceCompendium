//
//  MarkdownView.swift
//  CareerKit
//
//  A SwiftUI view for rendering markdown-formatted text
//

import SwiftUI

struct MarkdownView: View {
    let markdown: String
    @State private var attributedString: AttributedString = AttributedString()
    
    var body: some View {
        Text(attributedString)
            .textSelection(.enabled)
            .onAppear {
                parseMarkdown()
            }
            .onChange(of: markdown) { oldValue, newValue in
                parseMarkdown()
            }
    }
    
    private func parseMarkdown() {
        do {
            var attributed = try AttributedString(
                markdown: markdown,
                options: AttributedString.MarkdownParsingOptions(
                    interpretedSyntax: .inlineOnlyPreservingWhitespace
                )
            )
            
            // Apply custom styling
            attributed.foregroundColor = .primary
            
            // Style based on attributes
            for run in attributed.runs {
                // Check for inlinePresentation attribute for bold/italic
                if let inlinePresentation = run.inlinePresentationIntent {
                    if inlinePresentation.contains(.stronglyEmphasized) {
                        attributed[run.range].font = .body.bold()
                    }
                    
                    if inlinePresentation.contains(.emphasized) {
                        attributed[run.range].font = .body.italic()
                    }
                    
                    if inlinePresentation.contains(.code) {
                        attributed[run.range].font = .system(.body, design: .monospaced)
                        attributed[run.range].backgroundColor = Color.secondary.opacity(0.1)
                    }
                }
            }
            
            attributedString = attributed
        } catch {
            // Fallback to plain text if markdown parsing fails
            attributedString = AttributedString(markdown)
        }
    }
}

// Enhanced markdown view with better styling and layout
struct EnhancedMarkdownView: View {
    let markdown: String
    let font: Font
    
    init(markdown: String, font: Font = .body) {
        self.markdown = markdown
        self.font = font
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
                ForEach(parseIntoSections(markdown), id: \.self) { section in
                    renderSection(section)
                }
            }
        }
    }
    
    private func parseIntoSections(_ text: String) -> [String] {
        // Split by double newlines to create paragraphs/sections
        let sections = text.components(separatedBy: "\n\n")
        return sections.filter { !$0.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty }
    }
    
    private func renderSection(_ section: String) -> some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.small) {
            if section.hasPrefix("###") {
                // H3 Header
                Text(section.dropFirst(3).trimmingCharacters(in: .whitespaces))
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
            } else if section.hasPrefix("##") {
                // H2 Header
                Text(section.dropFirst(2).trimmingCharacters(in: .whitespaces))
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
            } else if section.hasPrefix("#") {
                // H1 Header
                Text(section.dropFirst(1).trimmingCharacters(in: .whitespaces))
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
            } else if section.hasPrefix("-") || section.hasPrefix("•") || section.hasPrefix("*") {
                // Bullet list
                VStack(alignment: .leading, spacing: 4) {
                    ForEach(section.components(separatedBy: "\n"), id: \.self) { item in
                        if !item.trimmingCharacters(in: .whitespaces).isEmpty {
                            HStack(alignment: .top, spacing: 8) {
                                Text("•")
                                    .font(font)
                                    .foregroundColor(.secondary)
                                
                                Text(item.dropFirst(1).trimmingCharacters(in: .whitespaces))
                                    .font(font)
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                        }
                    }
                }
            } else if section.hasPrefix(">") {
                // Blockquote
                HStack(spacing: 8) {
                    Rectangle()
                        .fill(Color.accentColor.opacity(0.3))
                        .frame(width: 3)
                    
                    Text(section.dropFirst(1).trimmingCharacters(in: .whitespaces))
                        .font(font.italic())
                        .foregroundColor(.secondary)
                }
                .padding(.vertical, 4)
            } else {
                // Regular paragraph
                MarkdownView(markdown: section)
                    .font(font)
            }
        }
    }
}

// Preview
#Preview {
    VStack(spacing: 20) {
        GroupBox("Basic Markdown") {
            MarkdownView(markdown: """
                # Header 1
                ## Header 2
                
                This is **bold** and this is *italic*.
                
                - Item 1
                - Item 2
                - Item 3
                """)
        }
        
        GroupBox("Enhanced Markdown") {
            EnhancedMarkdownView(markdown: """
                ## Job Description
                
                We are looking for a **talented engineer** to join our team.
                
                ### Requirements:
                - 5+ years of experience
                - Strong problem-solving skills
                - Experience with Swift and SwiftUI
                
                ### Benefits:
                - Competitive salary
                - Health insurance
                - Remote work options
                
                > "Join us in building the future of technology"
                """)
        }
    }
    .padding()
    .frame(width: 600)
}