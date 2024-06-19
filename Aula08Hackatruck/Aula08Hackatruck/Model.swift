//
//  Model.swift
//  Aula08Hackatruck
//
//  Created by Turma02-1 on 19/06/24.
//

import Foundation

struct frutas: Decodable, Hashable{
    var nome: String?
    var foto: String?
}

struct quitanda: Decodable, Hashable{
    var nomeQuitanda: String?
    var enderecoQuitanda: String?
    var frutasDisponiveis: [frutas]
}

struct Lojas: Decodable, Hashable{
    var quitandas: [quitanda]
}
