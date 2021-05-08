//
//  ViewController.swift
//  vistaWeb-1
//
//  Created by Javier Omedes on 08/05/21.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate  {

    var vistaWeb:WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let liga = URL(string: "https://www.linkedin.com/in/javieralrich/")!
    
        vistaWeb.load(URLRequest(url: liga))
        vistaWeb.allowsBackForwardNavigationGestures = true
    }
    
    override func loadView() {
        vistaWeb = WKWebView()
        vistaWeb.navigationDelegate = self
        view = vistaWeb  
    }
}

