//
//  EpisodioCardView.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/31/23.
//

import SwiftUI

struct EpisodioCardView: View {
    @StateObject var viewModel = EpisodioViewModel()
    var bounds = UIScreen.main.bounds
    var nombre: String
        var episode: String
    var body: some View {
        ZStack{
            Color("grisito")
            HStack{
                Text(episode).bold()
                HStack{}.frame(width: bounds.width*0.2)
                Text(nombre).font(.subheadline).frame(width: bounds.width*0.4)
               
                    
            }
            
        }.clipShape(RoundedRectangle(cornerRadius: 100))
        .padding([.horizontal,.top])
        .frame(height: bounds.height * 0.1)
        .shadow(radius: 5)
    }
}

struct EpisodioCardView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodioCardView(nombre: "Hola",
                         
                episode: "S1E3")
    }
}
