//
//  UbicacionesViewModel.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/30/23.
//

import Foundation
class UbicacionesViewModel: ObservableObject{
    @Published var ubicacionOficial : [Ubicacion] = []
    init(){
        CargarUbicaciones()
    }
    func CargarUbicaciones(){
        var ubicacionesTemp: [Result2] = []
     
        UbicacionesService.shared.Cargar(url: "https://rickandmortyapi.com/api/location") {
            response in
         
            print(response.results[0].id)
            var ubicaciones: [Ubicacion] = []
            ubicacionesTemp = response.results
            for ubicacion in ubicacionesTemp{
                if ubicacion.id != 0{
                    ubicaciones.append(Ubicacion(id: ubicacion.id, name: ubicacion.name, type: ubicacion.type, dimension: ubicacion.dimension, residents: ubicacion.residents, url: ubicacion.url, created: ubicacion.created))
                }
            }
            print(ubicaciones[0])
            self.ubicacionOficial = ubicaciones
            
                }
          
         
        }
    }
    
    
    
