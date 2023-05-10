//
//  ViewController.swift
//  Lista
//
//  Created by Alumno ULSA on 24/04/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Cantidad de subtitulos
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Define altura
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    var personajes : [Personaje] = []
    
    //Cantidad de personajes
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personajes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPersonaje") as! CeldaPersonajesController
        celda.lblNombre.text = personajes[indexPath.row].nombre
        celda.lblGenero.text = personajes[indexPath.row].genero
        celda.lblEdad.text = personajes[indexPath.row].edad
        
        return celda
    }
    
    @IBOutlet weak var tvPersonaje: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let destino = segue.destination as! DetallesController
            destino.personaje = personajes[tvPersonaje.indexPathForSelectedRow!.row]
            
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string:
                        "http://localhost:8000/api/personaje")!
        
        var solicitud = URLRequest(url:url)
        
        solicitud.setValue("application/json", forHTTPHeaderField: "Content-Type")
        solicitud.setValue("application/json", forHTTPHeaderField: "Accept")
        solicitud.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: solicitud){
            data, response, error in
            if let data = data {
                if let personaje = try? JSONDecoder().decode([Personaje].self, from: data) {
                    self.personajes = personaje
                    DispatchQueue.global(qos: .background).async {
                        DispatchQueue.main.async {
                            self.tvPersonaje.reloadData()
                        }
                    }
                    
                    self.tvPersonaje.reloadData()
                }
            }
        }
        task.resume()
    }
}
