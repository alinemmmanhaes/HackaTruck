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
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .foregroundColor(.black)
            VStack{
                HStack{
                    Rectangle()
                        .edgesIgnoringSafeArea(.all)
                        .foregroundColor(.vermelho)
                    Rectangle()
                        .edgesIgnoringSafeArea(.all)
                        .foregroundColor(.verde)
                }
                HStack{
                    Rectangle()
                        .edgesIgnoringSafeArea(.all)
                        .foregroundColor(.azul)
                    Rectangle()
                        .edgesIgnoringSafeArea(.all)
                        .foregroundColor(.amarelo)
                }
            }
            VStack{
                Spacer()
                HStack{
                    Image(.grifinoria)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 150)
                        .padding(40)
                    Spacer()
                    Image(.sonserina)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 150)
                        .padding(40)
                }
                Spacer()
                HStack{
                    Image(.corvinal)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 150)
                        .padding(40)
                    Spacer()
                    Image(.lufalufa)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 150)
                        .padding(40)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    menuView()
}
