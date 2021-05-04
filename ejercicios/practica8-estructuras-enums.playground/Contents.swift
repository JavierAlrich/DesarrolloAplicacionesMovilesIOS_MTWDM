import UIKit

let cadenaComillas = "He said, \"Hi there!\" as he passed by."
let cadenaSalto = "Roses are red.\nViolets are blue."

func saluda(_ name: String) {
    print("Hola " + name)
}
saluda("Ronaldinho")

var titulosStarWars = [String]()
titulosStarWars.append("La venganza de los sith")

titulosStarWars.insert("La amenaza fantasma", at: 1)
print(titulosStarWars)
titulosStarWars += ["3", "4", "5"]
print(titulosStarWars)
titulosStarWars.remove(at: 4)
print(titulosStarWars)
titulosStarWars.removeFirst()
print(titulosStarWars)
titulosStarWars.removeLast()
print(titulosStarWars)

titulosStarWars.removeAll()
print("Arreglo: \(titulosStarWars)")

struct Canciones {
    let titulo: String
    let artista: String
    let duracion: Int

    var duracionMinutos: String {
        let minutos = duracion / 60
        let segundos = duracion % 60
        return "\(minutos)m \(segundos)s"
    }
}

let cancion = Canciones(titulo: "One", artista: "Metallica", duracion: 420)

print(cancion.titulo)
print(cancion.artista)
print(cancion.duracion)

enum desayuno {
    case cereal
    case chilaquiles
    case tacosCanasta

    func postre(_ decision: Bool) -> String {
        if(decision)
        {
            return "Si"
        }
        else
        {
            return "No"
        }     
    }
}

enum desayuno {
    case cereal, chilaquiles, tacosCanasta
}

desayuno.cereal = "con leche"

let eleccion = desayuno.cereal
print(eleccion)
print(eleccion.postre(true))
