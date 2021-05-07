//
//  ContentView.swift
//  Imagenes2
//
//  Created by Javier Omedes on 06/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("¡Hola!").font(.title).padding()
            Image("logo").resizable().scaledToFill().scaledToFit()
            Spacer()
            Image("foto").resizable().padding(30).scaledToFill().scaledToFit().background(Color.gray).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(Color.blue)).shadow(color: Color.gray, radius: 5)
            Spacer()
            Image(systemName: "moon.circle.fill").resizable().padding(20).scaledToFit().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text("Texto de seguridad de datos, o lo que se necesite").font(.caption).padding()            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
