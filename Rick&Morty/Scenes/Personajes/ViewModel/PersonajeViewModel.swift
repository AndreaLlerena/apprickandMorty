//
//  ViewModel.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/21/23.
//

import Foundation
class RickAndMortyPersonajesViewModel: ObservableObject{
    @Published var personajesOficial : [Personaje] = []
    init(){
        CargarPersonajes()
    }
    func CargarPersonajes(){
        var personajesTemp: [Result] = []
     
        PersonajeService.shared.Cargar(url: "https://rickandmortyapi.com/api/character") {
            response in
         
            print(response.results[0].id)
            var personajes: [Personaje] = []
            personajesTemp = response.results
            for personaje in personajesTemp{
                if personaje.id != 0{
                    personajes.append(Personaje(id: personaje.id, name: personaje.name, status: personaje.status.rawValue, species: personaje.species.rawValue, type: personaje.type, gender: personaje.gender.rawValue, location: personaje.location.name, image: personaje.image, episode: personaje.episode, url: personaje.url, created: personaje.created))
                }
            }
            print(personajes[0])
            self.personajesOficial = personajes
            
                }
          
         
        }
    }
    
    
    

