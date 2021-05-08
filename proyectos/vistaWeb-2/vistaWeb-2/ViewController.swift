//
//  ViewController.swift
//  vistaWeb-2
//
//  Created by Javier Omedes on 08/05/21.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate  {

    var vistaWeb:WKWebView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Abrir", style: .plain, target: self, action: #selector(tapAbrir))
        
        let liga = URL(string: "https://www.linkedin.com/in/javieralrich/")!
        
        vistaWeb.load(URLRequest(url: liga))
        vistaWeb.allowsBackForwardNavigationGestures = true
    }
    
    @objc func tapAbrir(){
        
        let alertaC = UIAlertController(title: "Abrir sitio", message: nil, preferredStyle: .actionSheet)
        
        alertaC.addAction(UIAlertAction(title: "apple.com", style: .default, handler: abrirPagina ))
        alertaC.addAction(UIAlertAction(title: "linkedin.com/in/javieralrich", style: .default, handler: abrirPagina ))
        alertaC.addAction(UIAlertAction(title: "Cancelar", style: .cancel ))
        alertaC.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        
        present(alertaC, animated: true)   
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title   
    }
    
    func abrirPagina(action: UIAlertAction){
        let liga = URL(string: "https://" + action.title!)!
        vistaWeb.load(URLRequest(url: liga))   
    }
    
    override func loadView() {
        vistaWeb = WKWebView()
        vistaWeb.navigationDelegate = self
        view = vistaWeb 
    }
}

