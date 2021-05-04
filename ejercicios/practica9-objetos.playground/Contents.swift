import UIKit

var variableGlobal:Int =  50

func evaluar() {
    var variableLocal:String
    variableLocal = "Este es un ejemplo"
    print("Global: \(variableGlobal), Local:\(variableLocal)")
}
  
print(variableGlobal)

class Heroe {
    var nombre:String = ""
    var edad:Int = 19
    var tipo = superPoder()
    
    func saludo() -> String {
        return "Mi nombre es \(nombre)"
    }
    
    func muestraPoder() -> String {
        return "Soy \(nombre) y yo puedo \(tipo.accion)"
    }
}


class superPoder {
    var accion:String = ""
}

var objetoHeroe:Heroe = Heroe()
objetoHeroe.nombre = "Spiderman"

print(objetoHeroe.nombre)
print(objetoHeroe.saludo())

objetoHeroe.tipo.accion = "Usar telaraña"
print(objetoHeroe.muestraPoder())

let esMujer = false

func revisaGenero() {
    guard esMujer else {
        print("Género: Hombre")
        return
    }
}

revisaGenero()

class Persona {
    var nombre:String = ""
    var apellido:String = ""
    var curp:String = ""
    
    func muestraCurp() ->String {
        return "Curp: \(curp)"
    }
}

var objetoPersona:Persona = Persona()

objetoPersona.nombre = "Menganito"
objetoPersona.apellido = "de Sultanito"
objetoPersona.curp = "menganosul827443"

print(objetoPersona.muestraCurp())

class Empleado:Persona {
    
    var numeroEmpleado:Int = 0
    var puesto:String = ""
    
    var numeroEmpleado:Int
    var puesto:String
    
    init(numeroEmpleado:Int, puesto:String) {
        self.numeroEmpleado = numeroEmpleado
        self.puesto = puesto
    }
    
    func datosEmpleado() -> String {
        var datos:String

        datos = "Número de empleado: " + String(numeroEmpleado) + "\n"
        datos += "Puesto: " + puesto
        return datos
    }
}

var objetoEmpleado:Empleado = Empleado(numeroEmpleado:1, puesto: "Director General")

//objetoEmpleado.numeroEmpleado = 2
//objetoEmpleado.puesto = "Director creativo"

//objetoEmpleado.nombre = "Peter"
//objetoEmpleado.apellido = "Parker"
//objetoEmpleado.curp = "petpar348965"

print(objetoEmpleado.datosEmpleado())