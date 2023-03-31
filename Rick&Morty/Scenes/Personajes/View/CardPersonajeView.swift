//
//  CardPersonajeView.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/27/23.
//

import SwiftUI

struct CardPersonajeView: View {
    @StateObject var viewModel = RickAndMortyPersonajesViewModel()
    var bounds = UIScreen.main.bounds
    var nombre: String
    var urlImagen: String
    var estado: String
    var persona: Personaje
    var body: some View {
     //   NavigationLink(value: persona){
            HStack{
                ZStack(alignment: .trailing){
                    Color.gray
                    HStack{
                        AsyncImage(
                            url: URL(string: urlImagen),
                            content: { image in
                                
                                image.resizable()
                                    .cornerRadius(120)
                                //  .aspectRatio(contentMode: .fit)
                                    .frame(maxWidth: 100, maxHeight: 100)
                                //.overlay(RoundedRectangle(cornerRadius: 15))
                            },
                            placeholder: {
                                ProgressView()
                            }
                        ).padding()
                        VStack{
                            Text(nombre).bold().foregroundColor(.white)
                            Text("Estado: \(estado)").font(.caption)
                        }
                        .padding()
                        Spacer()
                    }
                }.padding([.horizontal,.top])
                    .frame(height: bounds.height * 0.15)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius: 5)
                
                Spacer()
//                    .navigationDestination(for: Personaje.self) { persona in PersonajeViewDetail(nombre: persona.name, urlImagen: persona.url, estado: persona.status, location: persona.location, gender: persona.gender, type: persona.type)
                    }
            }
        }
    
    
    struct CardPersonajeView_Previews: PreviewProvider {
        static var previews: some View {
            CardPersonajeView(nombre: "Pedrito", urlImagen: "https://rickandmortyapi.com/api/character/avatar/15.jpeg", estado: "Vivo", persona: Personaje(id: 0, name: "Andrea", status: "vivo", species: "humano", type: "haa", gender: "s", location: "s", image: "s", episode: ["hola","ss"], url: "", created: ""))
        }
    }

