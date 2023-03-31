//
//  ContentView.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/21/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = RickAndMortyPersonajesViewModel()
    @StateObject var viewModel2 = UbicacionesViewModel()
    @StateObject var viewModel3 = EpisodioViewModel()
    
    
    var bounds = UIScreen.main.bounds
    var body: some View {
        NavigationStack{
            ZStack{
                Color("grisito")
                VStack {
                    Spacer()
                    HStack{}
                        .frame(height: bounds.height*0.002)
                    HStack{
                        HStack{
                            Image("FOTO2").resizable()
                                .scaledToFit()
                                .frame(width: bounds.width*0.2)
                                .cornerRadius(150)
                            
                            Text("Bienvenido(a)").font(.subheadline)
                        }.padding()
                        HStack{}.frame(width: bounds.width*0.3)
                    }
                    VStack{
                        
                        Button(action: {
                            viewModel.CargarPersonajes()}) {
                                VStack{
                                    Image("FOTO4").resizable()
                                        .scaledToFit()
                                        .frame(width: bounds.width*0.7)
                                        .cornerRadius(15)
                                    
                                    NavigationLink("Personajes", destination: PersonajesView()).font(.subheadline
                                        .bold()).foregroundColor(.black)
                                }
                                
                            }
                        Button(action:{
                            viewModel2.CargarUbicaciones()
                            
                        }){
                            VStack{
                                Image("FOTO3").resizable()
                                    .frame(width: bounds.width*0.7,height: bounds.height*0.2)
                                    .cornerRadius(15)
                                NavigationLink("Ubicaciones", destination: UbicacionesView()).font(.subheadline).foregroundColor(.black).bold()
                                
                                
                            }
                        }
                        Button(action:{
                            viewModel3.CargarEpisodios()
                        }){
                            VStack{
                                Image("FOTO5").resizable()
                                    .frame(width: bounds.width*0.7,height: bounds.height*0.2)
                                    .cornerRadius(15)
                                NavigationLink("Episodios", destination: EpisodiosView()).font(.subheadline).foregroundColor(.black)
                                    .bold()
                                
                                
                            }
                        }
                    }.ignoresSafeArea()
                    
                    
                    Spacer()
                    
                }
               
                 .padding()
            }
            .ignoresSafeArea()
           
        } .navigationTitle("")
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

