//
//  ContentView.swift
//  Aula06Hackatruck
//
//  Created by Turma02-1 on 13/06/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9353), 
            span: MKCoordinateSpan(latitudeDelta: 45, longitudeDelta: 45))
    )
    @State private var country = Location(name: "Brasil", coordinate: CLLocationCoordinate2D(latitude: -14.4095261, longitude: -51.3166), flag: "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/2-bandeira-do-brasil.jpg", description: "O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba.")
    
    @State private var showView: Bool = false
    
    var body: some View {
        NavigationStack{
            ZStack{
               
//               Map()
//                    .mapStyle(.imagery(elevation: .realistic))
                Map(position: $position){
                    ForEach(ArrayPaises){ p in
                        Annotation("\(p.name)", coordinate: p.coordinate){
                            Button(action: {
                                country = p
                                showView.toggle()
                            }, label: {
                                Image(systemName: "star.fill")
                            })
                        }
                    }
                }
                    .ignoresSafeArea()
                    .sheet(isPresented: $showView){
                        CountryView(pais: country)
                    }
                    .mapStyle(.hybrid(elevation: .realistic))
                
                VStack{
                    VStack{
                        Text("World Map")
                            .font(.title)
                            .bold()
                        Text("\(country.name)")
                    }
                    .frame(width: 400, height: 100)
                        .background(.white)
                        .opacity(0.7)
                    
                    Spacer()
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(ArrayPaises){ p in
                                
                                AsyncImage(url: URL(string: p.flag)){ image in
                                    image.image?
                                        .resizable()
                                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                        .frame(height: 90, alignment: .center)
                                        .onTapGesture {
                                            country = p
                                            position = MapCameraPosition.region(
                                                MKCoordinateRegion(
                                                    center:p.coordinate,
                                                    span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)))
                                        }
                                }
                                .padding(.leading)
                                .padding(.bottom, 4)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
