//
//  ContentView.swift
//  App
//
//

import SwiftUI

struct MovieListView: View {
    
    // MARK: - Properties
    
    @State private var showAlert = false
    @State private var errorMessage = "Error"
    @State private var movies = [Movie]()

    // MARK: - Body
    
    var body: some View {
        NavigationStack {
            if !movies.isEmpty {
                List {
                    ForEach(movies) { movie in
                        NavigationLink(destination: MovieDetailView(movie: movie)) {
                            MovieItemView(movie: movie)
                        }
                    }
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Error"),
                        message: Text(errorMessage),
                        dismissButton: .default(
                            Text("Close"
                                )
                        )
                    )
                }
                .listStyle(.plain)
                .navigationTitle("Movies")
                .navigationBarTitleDisplayMode(.large)
            } else {
                VStack(alignment: .center, spacing: 8) {
                    ProgressView()
                    
                    Text("Fetching movies...")
                        .font(.title)
                    .fontWeight(.bold)
                }
            }
        }
        .onAppear {
            NetworkManager.shared.fetchMovies { movies in
                self.movies = movies
            } failureHandler: { errorMessage in
                self.errorMessage = errorMessage ?? "Error fetching the data from the API."
                self.showAlert.toggle()
            }

        }
    }
}

// MARK: - Previews

#Preview {
    MovieListView()
}
