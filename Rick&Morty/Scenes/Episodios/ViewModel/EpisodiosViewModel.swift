//
//  EpisodiosViewModel.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/30/23.
//

import Foundation
class EpisodioViewModel: ObservableObject{
    @Published var episodioOficial : [Episodio] = []
    init(){
        CargarEpisodios()
    }
    func CargarEpisodios(){
        var episodiosTemp: [Result3] = []
     
        EpisodiosService.shared.Cargar(url: "https://rickandmortyapi.com/api/episode") {
            response in
         
            print(response.results[0].id)
            var episodios: [Episodio] = []
            episodiosTemp = response.results
            for episdio in episodiosTemp{
                if episdio.id != 0{
                    episodios.append(Episodio(id: episdio.id, name: episdio.name, airDate: episdio.airDate ?? "", episode: episdio.episode, characters: episdio.characters, url: episdio.url, created: episdio.created))
                }
            }
            print(episodios[0])
            self.episodioOficial = episodios
            
                }
          
         
        }
    }
