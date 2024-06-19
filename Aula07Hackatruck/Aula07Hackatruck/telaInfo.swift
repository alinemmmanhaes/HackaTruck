//
//  telaInfo.swift
//  Aula07Hackatruck
//
//  Created by Turma02-1 on 17/06/24.
//

import SwiftUI

struct telaInfo: View {
    var p: Gryffindor
    var body: some View {
        ZStack{
            Rectangle()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .foregroundColor(.vermelho)
            
            VStack{
                AsyncImage(url: URL(string: p.image!)){ image in
                    image.image?.resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 250, height: 250)
                        .cornerRadius(90)
                }.padding(8)
                
                Text("\(p.name!)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                    .foregroundColor(.white)

                VStack{
                    HStack{
                        Text("Gender: \(p.gender!)")
                            .font(.headline)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    HStack{
                        Text("House: \(p.house!)")
                            .font(.headline)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    HStack{
                        Text("Date of birth: \(p.dateOfBirth!)")
                            .font(.headline)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    HStack{
                        if(p.wizard!){
                            Text("Wizard: True")
                                .font(.headline)
                                .foregroundColor(.white)
                        }else{
                            Text("Wizard: False")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        Spacer()
                    }
                    HStack{
                        Text("Ancestry: \(p.ancestry!)")
                            .font(.headline)
                            .foregroundColor(.white)
                        Spacer()
                    }
                }.padding()
                
                Spacer()
                
                Image(.grifinoria)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 80, height: 120)
                
                Spacer()
            }
        }
    }
}

#Preview {
    telaInfo(p: Gryffindor(id: "", name: "teste", gender: "", house: "", dateOfBirth: "", wizard: true, ancestry: "", image: ""))
}
