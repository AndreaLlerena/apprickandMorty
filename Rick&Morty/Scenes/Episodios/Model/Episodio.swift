//
//  Episodio.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/30/23.
//

import Foundation

import Foundation
struct Episodio: Identifiable,Hashable{
    let id: Int
    let name: String
    let airDate: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
