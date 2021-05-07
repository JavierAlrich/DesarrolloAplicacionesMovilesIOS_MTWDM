//
//  Fotografia.swift
//  galeriaJsonCollectionView
//
//  Created by Javier Omedes on 06/05/21.
//

import Foundation

struct Fotografia:Decodable {
    var id:String
    var urls: [String:String]
}
