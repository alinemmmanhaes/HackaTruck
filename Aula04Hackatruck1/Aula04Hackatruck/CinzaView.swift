//
//  CinzaView.swift
//  Aula04Hackatruck
//
//  Created by Turma02-1 on 11/06/24.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .edgesIgnoringSafeArea(.top)
                .foregroundColor(.cinza)
            
            Circle()
                .frame(width: 300)
            
            Image(systemName: "paintpalette")
                .resizable()
                .foregroundColor(.cinza)
                .aspectRatio(contentMode: .fit)
                .frame(width: 210)
        }
    }
}

#Preview {
    CinzaView()
}
