//
//  View.swift
//  Aula07Hackatruck
//
//  Created by Turma02-1 on 17/06/24.
//

import Foundation


struct Gryffindor: Decodable, Identifiable{
    var id: String?
    var name: String?
    var gender: String?
    var house: String?
    var dateOfBirth: String?
    var wizard: Bool?
    var ancestry: String?
    var image: String?
}
