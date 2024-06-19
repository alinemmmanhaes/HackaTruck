//
//  ViewModel.swift
//  Aula08Hackatruck
//
//  Created by Turma02-1 on 19/06/24.
//

import Foundation

class ViewModel : ObservableObject{
    
    @Published var quitandas: [quitanda] = []
    
    func fetchQuitanda(){
        guard let url = URL(string: "http://127.0.0.1:1880/buscar") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _ , error in
            
            guard let data = data, error == nil else{ // verifica se entrou a informacao e se nao tem erro
                return
            }
            
            do {
                let jsonDecodificado = try JSONDecoder().decode([quitanda].self, from: data)
                
                DispatchQueue.main.async {
                    self?.quitandas = jsonDecodificado
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
    
    
}
