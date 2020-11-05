//
//  Pokemon.swift
//  ComunicacionControladores
//
//  Created by KMMX on 04/11/20.
//

import Foundation

struct Pokemon {
    let nombre: String!
    let imagen: String!
    
    init(nombre: String, image: String) {
        self.nombre = nombre
        self.imagen = image
    }
}
