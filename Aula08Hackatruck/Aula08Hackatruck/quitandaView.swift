//
//  quitandaView.swift
//  Aula08Hackatruck
//
//  Created by Turma02-1 on 19/06/24.
//

import SwiftUI

struct quitandaView: View {
    var q: quitanda
    
    var body: some View {
        ZStack{
            VStack{
                Rectangle()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.amarelo)
            }
            VStack{
                Text("\(q.nomeQuitanda!)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                Text("\(q.enderecoQuitanda!)")
                    .font(.title3)
                HStack{
                    Text("Itens à venda:").font(.headline).bold()
                    Spacer()
                }.padding()
                ForEach(q.frutasDisponiveis, id: \.self){ f in
                    HStack{
                        Text("  - \(f.nome!)   ").font(.headline)
                        AsyncImage(url: URL(string: f.foto!)){ image in
                            image.image?.resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 80, height: 80)
                        }
                        Spacer()
                    }
                }
                Spacer()
            }
            Spacer()
            VStack{
                Spacer()
                Image(.f)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 280)
                    .opacity(0.7)
            }
        }
    }
}

#Preview {
    quitandaView(q: quitanda(nomeQuitanda: "Quitanda Teste", enderecoQuitanda: "Rua de teste", frutasDisponiveis: [frutas(nome:"", foto:"")]))
}
