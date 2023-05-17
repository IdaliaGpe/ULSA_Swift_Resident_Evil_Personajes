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
    @IBOutlet weak var imgImagen: UIImageView!
    
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
            
            let url = URL(string: "http://127.0.0.1:8000/storage/fotos/" + personaje!.imagen_2)!
                    var solicitud = URLRequest(url: url)
                    
                    solicitud.httpMethod = "GET"
                    let task = URLSession.shared.dataTask(with: solicitud) {
                        data, response, error in
                        if let data = data {
                            self.imgImagen.image = UIImage(data: data)
                    }
                }
            task.resume()
        }
    }
}

