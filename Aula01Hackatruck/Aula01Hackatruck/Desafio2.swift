//
//  Desafio2.swift
//  Aula01Hackatruck
//
//  Created by Turma02-1 on 06/06/24.
//

import SwiftUI

struct Desafio2: View {
    var body: some View {
        HStack{
            Image(.hackatruck)
                .resizable()
                .frame(width: 120, height: 120)
                .cornerRadius(100)
                .padding()
            Spacer()
            VStack{
                Text("HackaTruck")
                    .foregroundColor(.red)
                Text("77 Universidades")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("5 regiões do Brasil")
                    .foregroundColor(.yellow)
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    Desafio2()
}
