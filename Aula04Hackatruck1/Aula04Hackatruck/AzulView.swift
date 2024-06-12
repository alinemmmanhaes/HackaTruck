//
//  AzulView.swift
//  Aula04Hackatruck
//
//  Created by Turma02-1 on 11/06/24.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .edgesIgnoringSafeArea(.top)
                .foregroundColor(.azul)
            
            Circle()
                .frame(width: 300)
            
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .foregroundColor(.azul)
                .aspectRatio(contentMode: .fit)
                .frame(width: 210)
        }
    }
}

#Preview {
    AzulView()
}
