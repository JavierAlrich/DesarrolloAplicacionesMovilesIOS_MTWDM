//
//  ViewController.swift
//  tabBar
//
//  Created by Javier Omedes on 06/05/21.
//

import UIKit

class ViewController: UITableViewController, UITextFieldDelegate {
    
    var petitions = [Petition]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://reqres.in/api/users?page=1"

        if let url = URL(string: urlString) {
            print(url)
            if let data = try? Data(contentsOf: url) {
                print("Antes parse")
                print(data)
                parse(json: data)
            }
        } 
    }
    
    func parse(json: Data){
        
        print("Entro parse")
        print(json)
        
        let decoder = JSONDecoder()
        
        if let jsonPetitions = try? decoder.decode(Petitions.self, from: json) {
            
            petitions = jsonPetitions.results
            tableView.reloadData()
            
        }   
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return petitions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "Celda", for: indexPath)
        
        celda.textLabel?.text = "Título"
        celda.detailTextLabel?.text = "Subtítulo"
        
        return celda   
    }
}

