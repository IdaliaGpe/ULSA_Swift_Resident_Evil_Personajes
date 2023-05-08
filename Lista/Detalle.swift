//
//  Detalle.swift
//  Lista
//
//  Created by Alumno ULSA on 08/05/23.
//

import Foundation

class Detalle : Decodable{
    
    var nombre : String
    var genero : String
    var edad : String
    var relacion : String
    var especialidad : String
    
    init(nombre: String, genero: String, edad: String, relacion: String, especialidad: String) {
        self.nombre = nombre
        self.genero = genero
        self.edad = edad
        self.relacion = relacion
        self.especialidad = especialidad
    }
}
