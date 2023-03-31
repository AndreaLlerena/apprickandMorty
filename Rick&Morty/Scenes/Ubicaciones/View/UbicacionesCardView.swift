//
//  UbicacionesCardView.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/31/23.
//

import SwiftUI

struct UbicacionesCardView: View {
    @StateObject var viewModel = UbicacionesViewModel()
    var bounds = UIScreen.main.bounds
    var nombre: String
    var type: String
    var dimension: String
    var body: some View {
        ZStack{
            Color("grisito")
            HStack{
                Text(nombre).bold()
                HStack{}.frame(width: bounds.width*0.2)
                VStack{
                    Text(type)
                    Text(dimension)
                }.frame(width: bounds.width*0.2)
            }
        }.clipShape(RoundedRectangle(cornerRadius: 100))
            .padding([.horizontal,.top])
            .frame(height: bounds.height * 0.1)
            .shadow(radius: 5)
    }
}

struct UbicacionesCardView_Previews: PreviewProvider {
    static var previews: some View {
        UbicacionesCardView(nombre: "Tierra afnf", type: "Terrestre", dimension: "Quinta dimension")
    }
}
