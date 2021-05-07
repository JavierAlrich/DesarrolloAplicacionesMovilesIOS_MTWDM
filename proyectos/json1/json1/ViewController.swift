//
//  ViewController.swift
//  json1
//
//  Created by Javier Omedes on 06/05/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let str = "{\"nombres\": [\"Peter\", \"Bruce\", \"Tony\"]}"
    let nombres:[String] = ["Gwen", "Mary", "Paper"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cargaJSON()
    }
    
    
    func cargaJSON(){  
        let data = Data(str.utf8)
        do {
            if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                let nombres = json["nombres"] as! [String]
                tableView.reloadData()
            }
        } catch let error as NSError {
            print("Failed to load: \(error.localizedDescription)")
        }   
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Celda", for: indexPath)
        celda.textLabel!.text = nombres[indexPath.row]
        return celda
    }
}

