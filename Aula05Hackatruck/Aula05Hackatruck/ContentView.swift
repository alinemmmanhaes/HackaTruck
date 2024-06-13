//
//  ContentView.swift
//  Aula05Hackatruck
//
//  Created by Turma02-1 on 12/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.black, .azul], startPoint: .center, endPoint: .top)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView{
                    VStack(){
                        Image(.caminhao)
                            .resizable()
                            .frame(width:200, height: 200)
                        
                        HStack{
                            Text("aline's playlist")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                            Spacer()
                        }
                        
                        HStack{
                            Image(.caminhao)
                                .resizable()
                                .frame(width:25, height: 25)
                            
                            Text("Aline Manhães")
                                .font(.caption)
                                .bold()
                                .foregroundColor(.white)
                            Spacer()
                        }.padding()
                        
                        Spacer()
                        
                        ForEach(ArrayMusics){ m in
                            NavigationLink(destination: MusicView(musica: m)){
                                HStack{
                                    AsyncImage(url: URL(string: m.capa)) { image in
                                        image.resizable()
                                            .resizable()
                                            .frame(width:50, height: 50)
                                    }placeholder: {
                                        ProgressView().progressViewStyle(.circular)
                                            .frame(width:50, height: 50)
                                    }.padding(.leading)
                                
                                    VStack{
                                        Text("\(m.name)")
                                            .font(.caption)
                                            .bold()
                                            .foregroundColor(.white)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                        
                                        Text("\(m.artist)")
                                            .font(.caption2)
                                            .foregroundColor(.white)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                    
                                    Spacer()
                                    
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.white)
                                        .padding()
                                    
    //                                Text("...")
    //                                    .font(.caption)
    //                                    .bold()
    //                                    .foregroundColor(.white)
                                }
                            }
                        }
                        
                        Text("\n\n\n")
                        
                        HStack{
                            Text("Sugeridos")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                            
                            Spacer()
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(ArrayMusics){ m in
                                    NavigationLink(destination: MusicView(musica: m)){
                                        VStack{
                                            AsyncImage(url: URL(string: m.capa)) { image in
                                                image.resizable()
                                                    .resizable()
                                                    .frame(width:150, height: 150)
                                            }placeholder: {
                                                ProgressView().progressViewStyle(.circular)
                                                    .frame(width:150, height: 150)
                                            }
                                            .padding(.leading)
                                        
                                            VStack{
                                                Text("\(m.name)")
                                                    .font(.caption)
                                                    .bold()
                                                    .foregroundColor(.white)
                                                    .frame(maxWidth: .infinity, alignment: .leading)
                                                
                                                Text("\(m.artist)")
                                                    .font(.caption2)
                                                    .foregroundColor(.white)
                                                    .frame(maxWidth: .infinity, alignment: .leading)
                                            }.padding(.leading)
                                        }
                                    }
                                }
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
