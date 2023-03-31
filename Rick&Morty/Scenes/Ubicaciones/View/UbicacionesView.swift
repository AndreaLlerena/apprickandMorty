//
//  UbicacionesView.swift
//  Rick&Morty
//
//  Created by Andrea Llerena on 3/30/23.
//

import SwiftUI

struct UbicacionesView: View {
    @StateObject var viewModel = UbicacionesViewModel()
    let listaUbicaciones = UbicacionesViewModel()
    
    var body: some View {
        VStack{
            Text("Ubicaciones").padding([.horizontal,.top])
                .bold()
            
            ScrollView{
                
                ForEach(listaUbicaciones.ubicacionOficial){
                    ubicacion in
                    UbicacionesCardView(nombre: ubicacion.name, type: ubicacion.type, dimension: ubicacion.dimension)
                    
                }
                
            }
            
            
        }
    }
}

struct UbicacionesView_Previews: PreviewProvider {
    static var previews: some View {
        UbicacionesView()
    }
}
