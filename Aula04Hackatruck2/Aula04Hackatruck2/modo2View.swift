//
//  modo2View.swift
//  Aula04Hackatruck2
//
//  Created by Turma02-1 on 11/06/24.
//

import SwiftUI

struct modo2View: View {
    @State var nome: String = ""
    
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .edgesIgnoringSafeArea(.all)
                    .foregroundColor(.fundo)
                
                VStack{
                    Text("Modo 2")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    VStack{
                        Spacer()
                        
                        TextField("Digite seu nome", text: $nome)
                            .multilineTextAlignment(.center)
                        
                        Text("Bem vindo, \(nome)")
                            .font(.title)
                            .bold()
                        
                        Spacer()
                        
                        NavigationLink(destination: volteView(nome: nome)){
                            Text("Acessar Tela")
                        }
                        .frame(width: 130, height: 45)
                        .background(.blue)
                        .cornerRadius(10)
                        .padding()
                        
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 220)
                    .background(.rosa)
                    .cornerRadius(10)
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    modo2View()
}
