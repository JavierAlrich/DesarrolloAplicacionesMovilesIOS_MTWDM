//
//  ViewController.swift
//  conexionesApp
//
//  Created by Javier Omedes on 12/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreDepartamento: UILabel!
    
    var objetoEmpleado:Empleado?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nombreDepartamento.text = "Depto de Sistemas"
    }
    
    @IBAction func altaEmpleado(_ sender: UIButton) {
        objetoEmpleado = Empleado()
        objetoEmpleado?.nombre = "Peter"
        objetoEmpleado?.apellido = "Parker"
        objetoEmpleado?.numeroEmpleado = 1
        objetoEmpleado?.numeroIMSS = 123
        print("Entra altaEmpleado")
    }
    
    @IBAction func consultarEmpleado(_ sender: UIButton) {
        print("Entra consultarEmpleado")
        print("\(objetoEmpleado!.nombre)")
        print("\(objetoEmpleado!.mostrarNombreCompleto())")
        print("\(objetoEmpleado!.mostrarNumero())")
    }
    
    @IBAction func verIMSS(_ sender: UIButton) {
        print("Entra verIMSS")
        print("\(objetoEmpleado!.numeroIMSS)")
    }
    
    @IBAction func bajaEmpleado(_ sender: UIButton) {
        print("entra bajaEmpleado")
    } 
}

