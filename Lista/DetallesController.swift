//
//  DetallesController.swift
//  Lista
//
//  Created by Alumno ULSA on 10/05/23.
//

import UIKit

class DetallesController: UIViewController {
    
    //Outlets
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    @IBOutlet weak var lblEdad: UILabel!
    @IBOutlet weak var lblRelacion: UILabel!
    @IBOutlet weak var lblEspecialidad: UILabel!
    @IBOutlet weak var lblEstatura: UILabel!
    
    //LLamar Modelo
    var personaje : Personaje?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Detalles Personajes
        self.title = "Titulo"
        if personaje != nil {
            self.title = personaje?.nombre
            lblNombre.text = personaje?.nombre
            lblGenero.text = personaje?.genero
            lblEdad.text = personaje?.edad
            lblRelacion.text = personaje?.relacion
            lblEspecialidad.text = personaje?.especialidad
            lblEstatura.text = personaje?.estatura
            
            //.layer.cornerRadius = celda.imgImagen.frame.size.width / 2
            //.clipsToBounds = true
            
            //.image = UIImage(named: personajes[indexPath.row].imagen)
        }
    }
}
