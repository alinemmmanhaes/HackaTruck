//
//  ContentView.swift
//  Aula08Hackatruck
//
//  Created by Turma02-1 on 19/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
                List(vm.quitandas, id: \.self){ q in
                    NavigationLink(destination: quitandaView(q: q)){
                        HStack{
                            Text(q.nomeQuitanda!)
                            Spacer()
                            Text("🍎")
                        }
                    }
                }.navigationTitle("Quitandas:")
                    .scrollContentBackground(.hidden)
                    .background(.amarelo)
                    .background(Image(.f))
                
            }.onAppear(){
                vm.fetchQuitanda()
            }
        }
    }
}

#Preview {
    ContentView()
}
