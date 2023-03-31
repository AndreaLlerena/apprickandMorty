//
//  EstructurasEpisodios.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/30/23.
//

import Foundation
import Foundation

// MARK: - Welcome3
struct Welcome3: Codable{
    let info: Info3
    let results: [Result3]
}

// MARK: - Info
struct Info3:Codable {
    let count, pages: Int
    let next: String
    let prev: String?
}

// MARK: - Result
struct Result3:Codable {
    let id: Int
    let airDate: String?
    let name, episode: String
    let characters: [String]
    let url: String
    let created: String
}
