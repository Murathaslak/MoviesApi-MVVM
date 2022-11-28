//
//  APIURLs.swift
//  MoviesApi-MVVM
//
//  Created by Osman Murat Haslak on 25.11.2022.
//

import Foundation


// enumların içine sadece case koyarız fakat static kullanarak her şeyi kullanabiliriz
// () kullanmamak için enum yazıyoruz
enum APIURLs {
    static func movies(page: Int) -> String {
        "https://api.themoviedb.org/3/movie/popular?api_key=81b544c0d7529ac33caa0d82833f19de&language=en-US&page=\(page)"
    }
    
    static func imageURL(posterPath: String) -> String {
        "https://image.tmdb.org/t/p/w500\(posterPath)"
    }
    
    static func detail(id:Int) -> String {
        "https://api.themoviedb.org/3/movie/\(id)?api_key=81b544c0d7529ac33caa0d82833f19de&language=en-US"
    }
}
