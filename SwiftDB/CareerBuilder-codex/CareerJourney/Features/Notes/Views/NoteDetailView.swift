//
//  NoteDetailView.swift
//  CareerJourney
//
//  Detail view for individual notes
//

import SwiftUI
import SwiftData

/// Detail view for displaying and editing a note
struct NoteDetailView: View {
    let note: SwiftDataNote
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var noteStore: NoteStore

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Header
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(note.title)
                            .font(.title)
                            .fontWeight(.bold)

                        Text("Created: \(note.createdDate.formatted(date: .abbreviated, time: .shortened))")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                    Spacer()
                    if note.isPinned {
                        Image(systemName: "pin.fill")
                            .foregroundStyle(.orange)
                    }
                }
                .padding(.bottom, 8)

                Divider()

                // Content
                Text(note.content)
                    .font(.body)
                    .textSelection(.enabled)

                // Tags
                if !note.tags.isEmpty {
                    HStack {
                        ForEach(note.tags, id: \.self) { tag in
                            Text(tag)
                                .font(.caption)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(Color.accentColor.opacity(0.1))
                                .cornerRadius(4)
                        }
                    }
                }

                Spacer()
            }
            .padding()
        }
        .navigationTitle(note.title)
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button {
                    noteStore.togglePin(for: note.id)
                } label: {
                    Image(systemName: note.isPinned ? "pin.slash" : "pin")
                }
                .help(note.isPinned ? "Unpin Note" : "Pin Note")
            }
        }
    }
}

#Preview {
    NoteDetailView(note: SwiftDataNote(
        title: "Sample Note",
        content: "This is a sample note for preview purposes.",
        tags: ["sample", "preview"]
    ))
    .environmentObject(previewNoteStore)
}
