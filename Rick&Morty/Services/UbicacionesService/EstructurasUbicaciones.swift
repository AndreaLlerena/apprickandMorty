//
//  EstructurasUbicaciones.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/30/23.
//

import Foundation

import Foundation

// MARK: - Welcome8
struct Welcome8: Codable{
    let info: Info2
    let results: [Result2]
}

// MARK: - Info
struct Info2:Codable{
    let count, pages: Int
    let next: String
    let prev: String?
}

// MARK: - Result
struct Result2:Codable {
    let id: Int
    let name, type, dimension: String
    let residents: [String]
    let url: String
    let created: String
}

