//
//  MovieDetailView.swift
//  App
//
//

import SwiftUI

struct MovieDetailView: View {
    
    // MARK: - Properties
    
    let movie: Movie
    
    // MARK: - Body
    
    var body: some View {
        
        GeometryReader { geometry in
            
            
            VStack {
                Spacer()
                
                Image("movie_image")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(width: geometry.size.width)
                
                Spacer()
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            
        }
        
    }
    
}

// MARK: - Previews

#Preview {
    MovieDetailView(movie: Movie(title: "Title", description: "Description", image: "https://images.pexels.com/photos/33129/popcorn-movie-party-entertainment.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"))
}
