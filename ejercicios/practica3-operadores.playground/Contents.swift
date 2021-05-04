import UIKit

let tres = 3
let menostres = -tres
print(menostres)

1 == 2
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

let nombre = "Bruce Wayne"

if nombre == "Bruce Wayne" {
    print("Hola Batman")
}
else
{
    print("Eliminar al impostor")
}

var edad = 32
var resultado = edad >= 18 ? "Adulto" : "Menor de edad"
print(resultado)

var rangoNumeros = 1...10
print(rangoNumeros)


let calificacion = 7

switch calificacion {
case 8...10:
    print("Alta")
case 6...7:
    print("Media")
default:
    print("Mala")
}



