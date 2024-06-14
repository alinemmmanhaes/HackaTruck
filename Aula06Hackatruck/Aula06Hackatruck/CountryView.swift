//
//  CountryView.swift
//  Aula06Hackatruck
//
//  Created by Turma02-1 on 13/06/24.
//

import SwiftUI
import MapKit

struct CountryView: View {
    var pais: Location
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .ignoresSafeArea(.all)
            
            VStack{
                Text("\(pais.name)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundColor(.black)
                    .padding()
                
                AsyncImage(url: URL(string: pais.flag)){ image in
                    image.image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350)
                }
                
                Text("\(pais.description)")
                    .padding()
                
                Spacer()
            }
        }
    }
}

#Preview {
    CountryView(pais: Location(name: "Teste", coordinate: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9353), flag: "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/2-bandeira-do-brasil.jpg", description: "País mais lindo do mundo e teste teste teste teste teste teste"))
}
