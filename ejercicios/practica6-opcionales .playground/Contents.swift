import UIKit

var cadena:String = "May the force be with you"
var otraCadena:String = ""
var nombre:String
print(cadena)
print(otraCadena)

var nombreOpcional:String?
nombreOpcional = "Puedo estar o no"
print("\(nombreOpcional!)") //unwrap

var miEntero:Int?
miEntero = 50
print(miEntero!)

let diametro:Optional<Int> = 4
print(diametro!)

var regalosNavidad:Int?
regalosNavidad = 5

if regalosNavidad != nil {
    var cantidadRegalos = regalosNavidad!
    print("Llegaron \(cantidadRegalos) regalos de Navidad")
}
else {
     print("No llegó ningún regalo de navidad")
}

var otrosRegalosNavidad:Int?
otrosRegalosNavidad = 5

if let cantidadRegalos = otrosRegalosNavidad {
     print("Llegaron \(cantidadRegalos) regalos de Navidad")
}
else {
     print("No llegó ningún regalo de navidad")
}

var signoExclamacion:Character = "G"
signoExclamacion = "¡"
print(signoExclamacion)

let grupos:[Character] = ["H","O","L","A","!"]
let gruposCadena = String(grupos)
print(gruposCadena)
print(grupos[0])


