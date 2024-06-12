//
//  volteView.swift
//  Aula04Hackatruck2
//
//  Created by Turma02-1 on 11/06/24.
//

import SwiftUI

struct volteView: View {
    var nome: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .foregroundColor(.fundo)
            
            VStack{
                Text("Modo 2")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundColor(.white)
                
                Spacer()
                
                VStack{
                    Text("Volte, \(nome)!!")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                }
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 160, height: 80)
                .background(.rosa)
                .cornerRadius(10)
                
                Spacer()
            }
        }
    }
}

#Preview {
    volteView(nome: "Tiago")
}
