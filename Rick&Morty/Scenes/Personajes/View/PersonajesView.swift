//
//  PersonajesView.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/27/23.
//

import SwiftUI

struct PersonajesView: View {
    @StateObject var viewModel = RickAndMortyPersonajesViewModel()
    let listaPersonajes = RickAndMortyPersonajesViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                
                ForEach(listaPersonajes.personajesOficial){
                    persona in
                    NavigationLink(destination: PersonajeViewDetail(nombre: persona.name, urlImagen: persona.image, estado: persona.status, location: persona.location, gender: persona.gender, type: persona.type)){
                        CardPersonajeView(nombre: persona.name, urlImagen: persona.image, estado: persona.status, persona: persona)
                        
                    }
                    
                }
                
            }
            
            
        }.navigationTitle("Personajes")
        
    }
}

    
    struct PersonajesView_Previews: PreviewProvider {
        static var previews: some View {
            PersonajesView()
        }
    }
    

