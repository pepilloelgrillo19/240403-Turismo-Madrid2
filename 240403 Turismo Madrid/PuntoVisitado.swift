//
//  PuntoVisitado.swift
//  240403 Turismo Madrid
//
//  Created by Luis on 3/4/24.
//

import SwiftUI

struct PuntoVisitado: View {
    var puntoDestino: String
    var imagenDestino: String
    
    var body: some View {
        VStack{
            
            Image(imagenDestino)
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 650)
                .clipShape(Capsule())
                .overlay(Text(puntoDestino)
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .bold()
                    .padding(.top, 400.0)
                    )
        }
    }
}

struct PuntoVisitado_Previews: PreviewProvider {
    static var previews: some View {
        PuntoVisitado(puntoDestino : "", imagenDestino: "")
    }
}
