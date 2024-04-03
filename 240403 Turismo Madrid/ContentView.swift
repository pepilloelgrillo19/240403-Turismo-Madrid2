//
//  ContentView.swift
//  240403 Turismo Madrid
//
//  Created by Luis on 3/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                NavigationLink(destination: PuntoVisitado(puntoDestino: "Museo del Prado", imagenDestino: "prado_v")){
                    VistaSitio(nombreImagen: "prado", puntoDestino: "Museo del Prado")}
                NavigationLink(destination: PuntoVisitado(puntoDestino: "Museo Reina Sofía", imagenDestino: "sofia_v")){
                    VistaSitio(nombreImagen: "sofia", puntoDestino: "Museo Reina Sofia")}
                NavigationLink(destination: PuntoVisitado(puntoDestino: "Plaza del Sol", imagenDestino: "sol_v")){
                    VistaSitio(nombreImagen: "sol", puntoDestino: "Plaza del Sol")}
                NavigationLink(destination: PuntoVisitado(puntoDestino: "Parque Madrid Rio", imagenDestino: "rio_v")){
                    VistaSitio(nombreImagen: "rio", puntoDestino: "Parque Madrid Rio")}
            }
            .navigationTitle("Disfruta de Madrid")
        }
        
    }
}

struct VistaSitio: View {
    var nombreImagen: String
    var puntoDestino: String
    var body : some View {
        HStack{
            Spacer()
            ZStack{
                Image(nombreImagen)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:300, height: 100)
                    .clipped()
                    .cornerRadius(20.0)
                Text(puntoDestino)
                    .font(.custom("Helvetica-Medium", size:34))
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top,50)
            }
            Spacer()
        }.padding(.top, 5)
            .padding(.bottom,5)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
