//
//  Personaje.swift
//  Lista
//
//  Created by Alumno ULSA on 08/05/23.
//

import Foundation

class Personaje : Decodable {
    var nombre : String
    var genero : String
    var imagen : String
    var edad : String
    
    init(nombre: String, genero: String, imagen: String, edad: String) {
        self.nombre = nombre
        self.genero = genero
        self.imagen = imagen
        self.edad = edad
    }
}
