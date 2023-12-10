//
//  Movie.swift
//  App
//
//

import Foundation

struct MovieResponse: Codable {
    
    let data: [Movie]
    
}

struct Movie: Codable, Identifiable {
    
    var id: UUID? = UUID()
    let title: String?
    let description: String?
//    let shouldShowDescription: Bool?
    let image: String?
    
}
