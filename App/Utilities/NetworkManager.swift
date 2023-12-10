//
//  NetworkManager.swift
//  App
//
//

import Foundation

class NetworkManager: ObservableObject {
    
    // MARK: - Properties
    
    static let shared = NetworkManager()
    
    // MARK: - Methods
    
    func fetchMovies(success: @escaping ([Movie]) -> Void,
                     failureHandler failure: @escaping (_ errorMessage: String?) -> Void) {
        let baseUrl = "https://trackerteer.com/exam/exam.php"
        if let url = URL(string: baseUrl) {

            let session = URLSession.shared

            session.dataTask(with: url) { data, response, error in
                
                if let error = error {
                    failure("Error: \(error)")
                    return
                }

                guard let data = data else {
                    failure("No data received")
                    return
                }

                do {
                    let decoder = JSONDecoder()
                    let decodedMovieData = try decoder.decode(MovieResponse.self, from: data)
                    DispatchQueue.main.async {
                        var movies = [Movie]()
                        for (index, movie) in decodedMovieData.data.enumerated() {
                            
                            var movieDescription: String
                            
                            if index % 2 == 0 {
                                movieDescription = movie.description ?? ""
                            } else {
                                movieDescription = ""
                            }
                            
                            movies.append(
                                Movie(
                                    id: UUID(),
                                    title: movie.title,
                                    description: movieDescription,
                                    image: movie.image
                                    
                                )
                            )
                        }
                        success(movies)
                    }
                    
                } catch {
                    failure("Error decoding JSON: \(error)")
                }
            }.resume()

        } else {
            failure("Url is invalid")
        }
    }
    
}
