//
//  DetallesController.swift
//  Lista
//
//  Created by Alumno ULSA on 10/05/23.
//

import UIKit

class DetallesController: UIViewController {
    
    var detalles : Detalle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Detalles Instrumentos
        self.title = "Titulo"
        if detalles != nil {
            self.title = detalles?.nombre
            //lblTipo.text = instrumentos?.tipo
            //lblDificultad.text = instrumentos?.dificultad
        }
    }
}
