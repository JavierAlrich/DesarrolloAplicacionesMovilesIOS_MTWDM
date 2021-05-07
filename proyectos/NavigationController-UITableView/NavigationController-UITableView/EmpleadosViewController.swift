//
//  EmpleadosViewController.swift
//  NavigationController-UITableView
//
//  Created by Javier Omedes on 06/05/2021.
//

import UIKit

class EmpleadosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var nombresEmpleados = ["Javier", "Danya", "Daniel"]
    var edadesEmpleados = [32,29,99]
    
    var fotosEmpleados:[UIImage] = [
        UIImage(named: "foto1.jpg")!,
        UIImage(named: "foto2.jpg")!,
        UIImage(named: "foto3.jpg")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombresEmpleados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell()
        celda.textLabel?.text = nombresEmpleados[indexPath.row]
        return celda 
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "detalleEmpleadoSegue", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalleEmpleadoSegue" {
            let idSeleccionado = sender as! Int
            let detalleEmpleadoVC:detalleViewController = segue.destination as! detalleViewController
            detalleEmpleadoVC.nombreRecibido = nombresEmpleados[idSeleccionado]
            detalleEmpleadoVC.edadRecibida = edadesEmpleados[idSeleccionado]
            detalleEmpleadoVC.fotoRecibida = fotosEmpleados[idSeleccionado]
        }  
    }
}
