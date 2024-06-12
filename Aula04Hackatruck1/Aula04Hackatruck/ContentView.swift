//
//  ContentView.swift
//  Aula04Hackatruck
//
//  Created by Turma02-1 on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            TabView{
                RosaView()
                    .tabItem{
                        Label("Rosa", systemImage: "paintbrush.fill")
                    }
                AzulView()
                    .tabItem{
                        Label("Azul", systemImage: "paintbrush.pointed.fill")
                    }
                CinzaView()
                    .tabItem{
                        Label("Cinza", systemImage: "paintpalette.fill")
                    }
                ListView()
                    .tabItem{
                        Label("Lista", systemImage: "list.bullet")
                    }
            }
    }
}

#Preview {
    ContentView()
}
