//
//  ViewController.swift
//  TextAutoresize
//
//  Created by Javier Omedes on 08/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreEmpleado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nombreEmpleado.text = "Peter Parker"
    }
}

