//
//  HeroeViewController.swift
//  jsonVideoJuego
//
//  Created by Javier Omedes on 06/05/21.
//

import UIKit

class HeroeViewController: UIViewController {

    @IBOutlet weak var imagen: UIImageView!
    
    @IBOutlet weak var nombre: UILabel!
    
    var tituloDetalle:String?
    var fotoDetalle = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nombre.text = tituloDetalle 
        imagen.image = fotoDetalle
    }
}
