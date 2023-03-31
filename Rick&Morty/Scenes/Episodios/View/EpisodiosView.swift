//
//  EpisodiosView.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/30/23.
//

import SwiftUI

struct EpisodiosView: View {
    @StateObject var viewModel = EpisodioViewModel()
    let listaEpisodios = EpisodioViewModel()
    var body: some View {
        VStack{
            Text("Episodios").padding([.horizontal,.top])
                .bold()
            
            ScrollView{
                
                ForEach(listaEpisodios.episodioOficial){
                    episodio in
                    EpisodioCardView(nombre: episodio.name,  episode: episodio.episode)
                    
                }
                
            }
            
            
        }
    }
}

struct EpisodiosView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodiosView()
    }
}
