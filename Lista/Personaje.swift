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
    var edad : String
    var imagen : String
    var relacion : String
    var especialidad : String
    var estatura : String
    
    init(nombre: String, genero: String, edad: String, imagen : String, relacion: String, especialidad: String, estatura : String) {
        self.nombre = nombre
        self.genero = genero
        self.edad = edad
        self.imagen = imagen
        self.relacion = relacion
        self.especialidad = especialidad
        self.estatura = estatura
    }
}
