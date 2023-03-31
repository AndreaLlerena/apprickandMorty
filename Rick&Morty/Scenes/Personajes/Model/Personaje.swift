//
//  Model.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/23/23.
//

import Foundation
struct Personaje: Identifiable,Hashable{
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let location: String
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
