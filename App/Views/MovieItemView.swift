//
//  MovieItemView.swift
//  App
//
//

import SwiftUI

struct MovieItemView: View {
    
    // MARK: - Properties
    
    let movie: Movie
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                
                Text(movie.title ?? "Title")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                
                if (movie.description ?? "").isEmpty {
                    EmptyView()
                } else {
                    Text(movie.description ?? "Description")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.leading)
                }
                
            }
            
            Spacer()
        }//: VSTACK
        .padding()
    }
}

// MARK: - Previews

#Preview {
    MovieItemView(movie: Movie(title: "Title", description: "Description", image: "photo"))
}
