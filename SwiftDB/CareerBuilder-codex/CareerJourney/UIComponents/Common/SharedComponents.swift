//
//  SharedComponents.swift
//  CareerKit
//
//  Shared UI components used across the app
//

import SwiftUI

// MARK: - Flow Layout
struct FlowLayout: Layout {
    var spacing: CGFloat = 8
    
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        let result = layout(proposal: proposal, subviews: subviews)
        return result.size
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        let result = layout(proposal: proposal, subviews: subviews)
        for (view, frame) in zip(subviews, result.frames) {
            view.place(at: CGPoint(x: bounds.minX + frame.origin.x,
                                  y: bounds.minY + frame.origin.y),
                     proposal: ProposedViewSize(frame.size))
        }
    }
    
    private func layout(proposal: ProposedViewSize, subviews: Subviews) -> (size: CGSize, frames: [CGRect]) {
        var frames: [CGRect] = []
        var currentX: CGFloat = 0
        var currentY: CGFloat = 0
        var lineHeight: CGFloat = 0
        var maxWidth: CGFloat = 0
        
        for subview in subviews {
            let viewSize = subview.sizeThatFits(ProposedViewSize(width: proposal.width, height: nil))
            
            if currentX + viewSize.width > proposal.width ?? .infinity, currentX > 0 {
                // Move to next line
                currentY += lineHeight + spacing
                currentX = 0
                lineHeight = 0
            }
            
            frames.append(CGRect(origin: CGPoint(x: currentX, y: currentY), size: viewSize))
            currentX += viewSize.width + spacing
            lineHeight = max(lineHeight, viewSize.height)
            maxWidth = max(maxWidth, currentX - spacing)
        }
        
        let totalHeight = currentY + lineHeight
        return (CGSize(width: maxWidth, height: totalHeight), frames)
    }
}

// MARK: - Skill Chip
struct SkillChip: View {
    let skill: String
    
    var body: some View {
        Text(skill)
            .font(.caption)
            .foregroundColor(.accentColor)
            .padding(.horizontal, 10)
            .padding(.vertical, 4)
            .background(Color.accentColor.opacity(0.15))
            .cornerRadius(Theme.CornerRadius.small)
            .overlay(
                RoundedRectangle(cornerRadius: Theme.CornerRadius.small)
                    .stroke(Color.accentColor.opacity(0.3), lineWidth: 0.5)
            )
    }
}