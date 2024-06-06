//
//  ContentView.swift
//  Aula01Hackatruck
//
//  Created by Turma02-1 on 06/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.red)
                Spacer()
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
            }
            Spacer()
            HStack{
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.green)
                Spacer()
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
