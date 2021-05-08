//
//  ViewController.swift
//  mapa
//
//  Created by Javier Omedes on 08/05/21.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapa: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let londres = Ciudad(titulo: "Barcelona", coordinate: CLLocationCoordinate2D(latitude: 41.43107335002477, longitude: 2.1089402780978967), info: "Ciudad de España")
        let cdmx = Ciudad(titulo: "CDMX", coordinate: CLLocationCoordinate2D(latitude: 19.4978, longitude: -99.1269), info: "Capital de México")
        let leon = Ciudad(titulo: "León Gto", coordinate: CLLocationCoordinate2D(latitude: 21.116667, longitude: -101.683334), info: "Ciudad de Guanajuato")
        
        mapa.addAnnotations([londres, cdmx, leon])  
    }
}

