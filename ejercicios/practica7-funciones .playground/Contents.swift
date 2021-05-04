import UIKit

func miFuncion(nombre:String) -> String {
    return "Todos saludan a " + nombre
}

miFuncion(nombre: "Magneto")
print(miFuncion(nombre: "Charls Xavier"))


func saludo(nombre:String) {
    print("Hola " + nombre)
}

saludo(nombre: "Jean Grey")

func otroSaludo(nombre: String, enElPoder:Bool) -> String {
    if enElPoder {
        return "Si"
    }
    else {
        return "No"
    }
}

print(otroSaludo(nombre: "Trudeau", enElPoder: true))

func cuenta(apellido:String) -> Int {
    print(apellido)
    return apellido.count
}

print(cuenta(apellido: "Omedes"))


func compara(arreglo:[Int]) -> (menor: Int, mayor:Int) {
    if arreglo[0] > arreglo[1]{
        return (arreglo[1], arreglo[0])
    }
    else {
        return (arreglo[0], arreglo[1])
    }
}
print(compara(arreglo: [15,8]))

var mivariable = compara(arreglo: [15,8])

print(mivariable.menor)
print(mivariable.mayor)

var serie = (temporada: 1, nombre: "Stranger things" )
print(serie.nombre + ", Temporada \(serie.temporada)")

func otroSaludoMas(nombre:String, de ciudad:String) -> String{
    return "Hola \(nombre) gracias por visitarnos de la ciudad de \(ciudad)"
}
print(otroSaludoMas(nombre: "Javier", de: "México"))

func otroSaludoMasV2(_ nombre:String, de ciudad:String) -> String{
    return "Hola \(nombre) gracias por visitarnos de la ciudad de \(ciudad)"
}
print(otroSaludoMasV2("Danya", de: "León"))
