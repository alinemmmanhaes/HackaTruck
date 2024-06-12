//
//  ContentView.swift
//  Aula04Hackatruck2
//
//  Created by Turma02-1 on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        NavigationStack{
            ZStack {
                Rectangle()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.fundo)
                
                VStack{
                    Image("logo")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(.white)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 270)
                        .rotationEffect(.degrees(4.5))
                        //.position(x: 190, y: 55)
                    
                    Spacer()
                    
                    NavigationLink(destination: modo1View()){
                        Text("Modo 1")
                    }
                        .frame(width: 220, height: 70)
                        .background(.rosa)
                        .font(.headline)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                    
                    NavigationLink(destination: modo2View()){
                        Text("Modo 2")
                    }
                        .frame(width: 220, height: 70)
                        .background(.rosa)
                        .font(.headline)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                    
                    Button("Modo 3"){
                        showingSheet.toggle()
                    }
                        .frame(width: 220, height: 70)
                        .background(.rosa)
                        .font(.headline)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                        .sheet(isPresented: $showingSheet){
                            modo3View()
                        }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
