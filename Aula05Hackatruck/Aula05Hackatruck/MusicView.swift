//
//  MusicView.swift
//  Aula05Hackatruck
//
//  Created by Turma02-1 on 12/06/24.
//

import SwiftUI

struct MusicView: View {
    var musica: Song
    var body: some View {
        ZStack{
            LinearGradient(colors: [.black, .azul], startPoint: .center, endPoint: .top)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                
                HStack{
                    Spacer()
                    AsyncImage(url: URL(string: musica.capa)) { image in
                        image.resizable()
                            .resizable()
                            .frame(width: 200, height: 200)
                    }placeholder: {
                        ProgressView().progressViewStyle(.circular)
                            .frame(width:50, height: 50)
                    }
                    Spacer()
                }
                
                HStack{
                    Spacer()
                    Text("\(musica.name)")
                        .font(.headline)
                        .bold()
                        .foregroundColor(.white)
                    Spacer()
                }
                
                HStack{
                    Spacer()
                    Text("\(musica.artist)")
                        .font(.caption)
                        .foregroundColor(.white)
                    Spacer()
                }
                
                Spacer()
                
                HStack{
                    Image(systemName: "shuffle")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .padding()
                        
                    
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 35, height: 35)
                        .padding()
                    
                    Image(systemName: "play.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 45, height: 45)
                        .padding()
                    
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 35, height: 35)
                        .padding()
                    
                    Image(systemName: "repeat")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .padding()
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    MusicView(musica: Song(id: 1, name: "Teste", artist: "teste", capa: ""))
}
