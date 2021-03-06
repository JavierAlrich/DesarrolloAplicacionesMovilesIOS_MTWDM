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
        
        let barcelona = Ciudad(title: "Barcelona", coordinate: CLLocationCoordinate2D(latitude: 41.43107335002477, longitude: 2.1089402780978967), info: "Ciudad de España")
        let cdmx = Ciudad(title: "CDMX", coordinate: CLLocationCoordinate2D(latitude: 19.4978, longitude: -99.1269), info: "Capital de México")
        let leon = Ciudad(title: "León Gto", coordinate: CLLocationCoordinate2D(latitude: 21.116667, longitude: -101.683334), info: "Ciudad de Guanajuato")
        
        mapa.addAnnotations([barcelona, cdmx, leon])
    }
}

