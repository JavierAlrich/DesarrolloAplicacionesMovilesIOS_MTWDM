//
//  ViewController.swift
//  CiclodeVidaViewController
//
//  Created by Javier Omedes on 29/03/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Entra a viewDidLoad")
    }

    
    override func loadView() {
        super.loadView()
        print("Entra a loadView")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Entra a viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("Entra a viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("Entra a viewWillDisappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Entra a didReceiveMemoryWarning")
    }

}

