//
//  ContentView.swift
//  Aula03HackaTruck
//
//  Created by Turma02-1 on 10/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var peso: String = ""
    @State var altura: String = ""
    @State var texto: String = "Bem vindo"
    @State var imc: Float = 0
    @State var cor: Color = .d
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(cor)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                VStack(spacing: 35){
                    Text("Calculadora de IMC")
                        .font(.largeTitle)
                    
                    TextField("Digite seu peso em kg", text: $peso)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 350, height: 35)
                        .background(.white)
                        .cornerRadius(4.0)
                    
                    TextField("Digite sua altura em metros", text: $altura)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 350, height: 35)
                        .background(.white)
                        .cornerRadius(4.0)
                    
                    Button("Calcular"){
                        if let weight = Float(peso), let height = Float(altura){
                            imc = weight/(height*height)
                            if(imc < 18.5){
                                cor = .baixo
                                texto = "Baixo peso"
                            }
                            else if(imc <= 24.99){
                                cor = .normal
                                texto = "Normal"
                            }
                            else if(imc <= 29.99){
                                cor = .sobre
                                texto = "Sobrepeso"
                            }
                            else{
                                cor = .obes
                                texto = "Obesidade"
                            }
                        }
                        else{
                            cor = .erro
                            texto = "Erro"
                        }
                    }
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    
                }
                
                Button("Resetar"){
                    cor = .d
                    texto = "Bem vindo"
                }
                
                Spacer()
                
                Text("\(texto)")
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
                
                Image(.tabelaIMC)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .shadow(radius: 10)
                
            }
        }
    }
}

#Preview {
    ContentView()
}
