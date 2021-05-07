//
//  Medicamento.swift
//  jsonFarmacia
//
//  Created by Javier Omedes on 06/05/21.
//

import Foundation

struct Medicamento:Decodable {
    var nombre: String
    var foto: String
    var dosis: String
    var sustancia: String
}
