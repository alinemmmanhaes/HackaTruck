//
//  ContentView.swift
//  Aula02Hackatruck
//
//  Created by Turma02-1 on 07/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var nome: String = ""
    @State var showingAlert = false
    
    var body: some View {
        ZStack {
            Image(.fundo).resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .scaledToFill()
                //.frame(width: 700)
                .opacity(0.15)
            
            VStack(){//text
                VStack(spacing: 30){
                    Text("Bem vindo, \(nome)").font(.largeTitle)
                    TextField("Digite seu nome", text: $nome).multilineTextAlignment(.center)
                }
                
                Spacer()
                
                VStack{//images
                    Image(.logo).resizable()
                        .frame(width: 240, height: 120)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    Image(.truck).resizable()
                        .frame(width: 200, height: 90)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                
                Spacer()
                
                //button
                Button("Entrar"){
                    showingAlert = true
                }
                .alert(isPresented: $showingAlert){
                    Alert(title: Text("ALERTA!"), message: Text("Você irá iniciar o desafio da aula agora"), dismissButton: .default(Text("Vamos lá!")))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
