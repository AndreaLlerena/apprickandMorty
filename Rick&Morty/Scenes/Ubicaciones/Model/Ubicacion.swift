//
//  Ubicacion.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/30/23.
//

import Foundation
struct Ubicacion: Identifiable,Hashable{
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
