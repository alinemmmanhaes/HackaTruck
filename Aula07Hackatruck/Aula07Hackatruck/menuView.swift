//
//  menuView.swift
//  Aula07Hackatruck
//
//  Created by Turma02-1 on 17/06/24.
//

import SwiftUI

struct menuView: View {
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Rectangle()
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.vermelho)
                    Rectangle()
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.verde)
                }
                HStack{
                    Rectangle()
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.azul)
                    Rectangle()
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.amarelo)
                }
            }
        }
    }
}

#Preview {
    menuView()
}
