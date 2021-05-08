//
//  mostrarPDFViewController.swift
//  visorPDF
//
//  Created by Javier Omedes on 08/05/21.
//

import UIKit
import WebKit

class mostrarPDFViewController: UIViewController, WKNavigationDelegate {

    var vistaWeb:WKWebView!
    var tituloPDF:String?
    var nombrePDF:String?
    
    override func loadView(){
        vistaWeb = WKWebView()
        vistaWeb.navigationDelegate = self
        view = vistaWeb
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        vistaWeb.allowsBackForwardNavigationGestures = true
        visualizaPDF()
    }
    
    func visualizaPDF(){
        let direccionPDF = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePDF!, ofType: "pdf", inDirectory: "libros")!)
        let datosPDF = try? Data(contentsOf: direccionPDF)
        vistaWeb.load(datosPDF!, mimeType: "application/pdf",characterEncodingName: "utf-8", baseURL: direccionPDF)
    }
}
