//
//  modo1View.swift
//  Aula04Hackatruck2
//
//  Created by Turma02-1 on 11/06/24.
//

import SwiftUI

struct modo1View: View {
    var body: some View {
        ZStack{
            Rectangle()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .foregroundColor(.fundo)
            
            VStack{
                Text("Modo 1")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundColor(.white)
                
                Spacer()
                
                VStack{
                    Text("Nome: Aline")
                    Text("Sobrenome: Manhães")
                }
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 250, height: 120)
                .background(.rosa)
                .cornerRadius(10)
                
                Spacer()
            }
        }
    }
}

#Preview {
    modo1View()
}
