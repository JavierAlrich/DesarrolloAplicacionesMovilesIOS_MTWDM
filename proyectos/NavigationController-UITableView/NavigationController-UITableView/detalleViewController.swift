//
//  detalleViewController.swift
//  NavigationController-UITableView
//
//  Created by Javier Omedes on 06/05/2021.
//

import UIKit

class detalleViewController: UIViewController {

    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var edadEmpleado: UILabel!
    @IBOutlet weak var fotoEmpleado: UIImageView!
    
    var nombreRecibido:String?
    var edadRecibida:Int?
    var fotoRecibida = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titulo.text = nombreRecibido!
        edadEmpleado.text = String(edadRecibida!) + " años"
        fotoEmpleado.image = fotoRecibida   
    }
}
