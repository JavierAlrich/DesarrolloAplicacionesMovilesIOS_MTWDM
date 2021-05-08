//
//  ViewController.swift
//  acelerometro
//
//  Created by Javier Omedes on 08/05/21.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var ejex: NSLayoutConstraint!
    @IBOutlet weak var ejey: UILabel!
    @IBOutlet weak var ejex2: UILabel!
    @IBOutlet weak var ejez: UILabel!
    
    var motion = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        if motion.isDeviceMotionAvailable{
            print("Esta disponible")
            obtieneAcelerometro()
        }
        else{
            print("No esta disponible")
        }
        
    }
    
    func obtieneAcelerometro(){
        
        motion.accelerometerUpdateInterval = 0.5
        motion.startAccelerometerUpdates(to: OperationQueue.current!){
            (data, error) in
            
            if let datos = data {
                let x = datos.acceleration.x
                let y = datos.acceleration.y
                let z = datos.acceleration.z
                
                self.ejex2.text = "x: \(Double(x))"
                self.ejey.text = "x: \(Double(y))"
                self.ejez.text = "x: \(Double(z))"
                
            }
        }
    }
}

