//
//  ViewController.swift
//  Navigation-Controller-2
//
//  Created by Javier Omedes on 06/05/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let boton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        boton.setTitle("Ir al segundo View Controller", for: .normal)
        boton.backgroundColor = .white
        boton.setTitleColor(.blue, for: .normal)
        boton.frame = CGRect(x:50, y:50, width: 300, height: 60)
        boton.addTarget(self, action: #selector(tapSegundoVC), for:  .touchUpInside)
        view.addSubview(boton)
    }
    
    @objc private func tapSegundoVC() {    
        let segundoVC = SegundoViewController()    
        let navVC = UINavigationController(rootViewController: segundoVC)    
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)  
    }
}

class SegundoViewController : UIViewController {
    
    let boton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        self.title = "Segundo View Controller"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "< Regresar", style: .plain, target: self, action: #selector(regresarPrimerVC))  
    }
    
    @objc private func regresarPrimerVC() {
        dismiss(animated: true, completion: nil)   
    }
}

