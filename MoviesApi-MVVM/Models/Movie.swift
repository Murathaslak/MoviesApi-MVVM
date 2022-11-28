//
//  Movie.swift
//  MoviesApi-MVVM
//
//  Created by Osman Murat Haslak on 25.11.2022.
//

import Foundation
import UIKit

// Gelen datayı struct'a çevirmek istiyorsan -> Decodable
// Struct'ı dataya çevirmek istiyorsam -> Encodable
// Codable yazarsak ikisinin birleşiminin oluşturduğu bir type alias


struct Movie: Decodable{
    let results: [MovieResult]?
    
}

struct MovieResult: Decodable {
    let id: Int?
    let posterPath: String?
    let overview: String?
    let releaseData, title: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case posterPath = "poster_path"
        case overview
        case releaseData = "release_date"
        case title
    }
    
    var _id: Int {
        id ?? Int.min
    }
    
    var _posterPath: String {
        posterPath ?? ""
    }
    
    var _title: String {
        title ?? "N/A"
    }
    
    var _releaseDate: String {
        releaseData ?? "N/A"
    }
    
    var _overview: String {
        overview ?? "There is no overview "
    }
    
}


