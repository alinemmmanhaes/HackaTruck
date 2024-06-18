//
//  ViewModel.swift
//  Aula07Hackatruck
//
//  Created by Turma02-1 on 17/06/24.
//

import Foundation

class ViewModel : ObservableObject{
    
    @Published var  personagens  : [Gryffindor] = []
    
    func fetchPersonagem(){
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters/house/gryffindor") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _ , error in
            
            guard let data = data, error == nil else{ // verifica se entrou a informacao e se nao tem erro
                return
            }
            
            do {
                let jsonDecodificado = try JSONDecoder().decode([Gryffindor].self, from: data)
                
                DispatchQueue.main.async {
                    self?.personagens = jsonDecodificado
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
    
    
}
