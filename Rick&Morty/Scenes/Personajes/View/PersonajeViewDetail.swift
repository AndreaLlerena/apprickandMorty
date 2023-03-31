//
//  PersonajeViewDetail.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/28/23.
//

import SwiftUI

struct PersonajeViewDetail: View {
    let listaPersonajes = RickAndMortyPersonajesViewModel()
    var bounds = UIScreen.main.bounds
    var nombre: String
    var urlImagen: String
    var estado: String
    var location: String
    var gender: String
    var type: String
    var body: some View {
        VStack{
            AsyncImage(
                url: URL(string: urlImagen),
                content: { image in
                    
                    image.resizable()
                        .cornerRadius(120)
                    //  .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 200, maxHeight: 200)
                    //.overlay(RoundedRectangle(cornerRadius: 15))
                },
                placeholder: {
                    ProgressView()
                }
            ).padding()
            
            Text("**Nombre**: \(nombre)").frame(height: bounds.height*0.03)
            Text("**Estado**: \(estado)").frame(height: bounds.height*0.03)
            Text("**Ubicacion**: \(location)").frame(height: bounds.height*0.03)
            Text("**Género**: \(gender)").frame(height: bounds.height*0.03)
         //   Text("**Tipo**: \(type)").frame(height: bounds.height*0.03)
            
        }
      //  Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PersonajeViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        PersonajeViewDetail(nombre: "Andrea Llerena", urlImagen: "https://rickandmortyapi.com/api/character/avatar/15.jpeg", estado: "Vivo", location: "Andrealandia", gender: "Femenino", type: "Humano")
    }
}
