//
//  ViewController.swift
//  visorPDF
//
//  Created by Javier Omedes on 08/05/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var listaTitulos = ["Clean code", "Javascript Definitive Guide", "Matering regular expressions", "Título 4","Título 5","Título 6","Título 7","Título 8","Título 9","Título 10"]
    var listaArchivos  = ["pdf1", "pdf2", "pdf3","pdf1","pdf2","pdf3","pdf1","pdf2","pdf3","pdf1"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaArchivos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let celda = UITableViewCell()
        
        celda.textLabel?.text = listaTitulos[indexPath.row]
        celda.imageView!.image = UIImage(named:"iconopdf")
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
        
            let refreshAlert = UIAlertController(title: "¿Estás seguro?", message: "Se eliminará" + listaTitulos[indexPath.row], preferredStyle: .alert)
            
            refreshAlert.addAction(UIAlertAction(title: "Sí - Borrar definitivamente", style: .default, handler: { (action: UIAlertAction!) in  
                print(indexPath.row)
                self.listaArchivos.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .middle)
            }))
            
            refreshAlert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: { (action: UIAlertAction!)  in
                print("No se eliminó")    
            }))
            present(refreshAlert, animated: true, completion: nil)  
        }
    }
    
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "Eliminar"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "mostrarPDFsegue", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostrarPDFsegue" {
        
            let idPDF = sender as! Int
            let mostrarPDFVC:mostrarPDFViewController = segue.destination as! mostrarPDFViewController
            
            mostrarPDFVC.tituloPDF = listaTitulos[idPDF]
            mostrarPDFVC.nombrePDF = listaArchivos[idPDF]
        }
    }
}

