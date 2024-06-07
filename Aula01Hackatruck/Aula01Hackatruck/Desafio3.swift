//
//  Desafio3.swift
//  Aula01Hackatruck
//
//  Created by Turma02-1 on 06/06/24.
//

import SwiftUI

struct Desafio3: View {
    var body: some View {
        VStack{
            Spacer()
            
            HStack(spacing: 30){
                Circle()//foto de perfil
                    .frame(width: 100)
                    .foregroundColor(.gray)
                    .overlay(alignment: .bottomTrailing){
                        Circle().frame(width: 25).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).overlay{
                            Text("+").foregroundColor(.white)
                        }
                    }
                
                VStack(spacing: 20){
                    HStack(spacing:25){ //estatisticas
                        VStack{
                            Text("8").bold()
                            Text("Posts").font(.subheadline)
                        }
                        VStack{
                            Text("12k").bold()
                            Text("Seguidores").font(.subheadline)
                        }
                        VStack{
                            Text("2k").bold()
                            Text("Seguindo").font(.subheadline)
                        }
                    }
                    
                    VStack{
                        Text("Editar Perfil")
                            .frame(width: 250, height: 30)
                            .background(.gray)
                            .cornerRadius(8)
                    }
                }
            }
            
            VStack{ //nome e bio
                HStack{
                    Text("Nome Sobrenome").bold().font(.headline)
                    Spacer()
                }
                HStack{
                    Text("Lorem ipsum dolor sit amet, consectetuer").font(.caption)
                    Spacer()
                }
            }.padding()
            
            //icons instagram
            Image(.insta).resizable().scaledToFit()
            
            //"fotos"
            HStack{
                Rectangle().frame(width: 125, height: 125).foregroundColor(.gray)
                Rectangle().frame(width: 125, height: 125).foregroundColor(.gray)
                Rectangle().frame(width: 125, height: 125).foregroundColor(.gray)
            }
            
            HStack{
                Rectangle().frame(width: 125, height: 125).foregroundColor(.gray)
                Rectangle().frame(width: 125, height: 125).foregroundColor(.gray)
                Rectangle().frame(width: 125, height: 125).foregroundColor(.gray)
            }
            
            HStack{
                Rectangle().frame(width: 125, height: 125).foregroundColor(.gray)
                Rectangle().frame(width: 125, height: 125).foregroundColor(.gray)
                Rectangle().frame(width: 125, height: 125).foregroundColor(.gray)
            }
            
            Spacer()
        }
    }
}

#Preview {
    Desafio3()
}
