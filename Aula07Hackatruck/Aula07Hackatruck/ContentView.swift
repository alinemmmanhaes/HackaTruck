//
//  ContentView.swift
//  Aula07Hackatruck
//
//  Created by Turma02-1 on 17/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.vermelho)
                VStack {
                    ZStack{
                        Image(.salao)
                            .resizable()
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .opacity(0.5)
                            .frame(width:400, height: 180)
                        HStack{
                            Text("Gryffindor Members:  ").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().foregroundColor(.white)
                            //Spacer()
                            Image(.grifinoria)
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 80, height: 110)
                        }.padding(4)
                    }
                    
                    ScrollView{
                        ForEach(vm.personagens){p in
                            NavigationLink(destination: telaInfo(p: p)){
                                HStack{
                                    AsyncImage(url: URL(string: p.image!)){ image in
                                        image.image?.resizable()
                                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                            .frame(width: 100, height: 100)
                                            .cornerRadius(100)
                                    }.padding(8)
                                    
                                    Text("\(p.name!)")
                                        .font(.title3)
                                        .bold()
                                        .foregroundColor(.white)
                                    
                                    Spacer()
                                }
                            }
                        }
                    }
                }
                .onAppear(){
                    vm.fetchPersonagem()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
