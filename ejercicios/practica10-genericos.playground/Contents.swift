import UIKit

var texto:String = "Jelou guorld!"

func suma(a: Int, b: Int) -> Int {
    return a + b
}

let resultado = suma(a: 44, b: 55)
print(resultado)

func suma2(a: Double, b: Double) -> Double {
    return a + b
}

let resultado2 = suma2(a: 44.5, b: 55.4)
print(resultado2)

func sumaGenerica<T: Numeric> (a: T, b: T) -> T {
    return a + b
}

print(sumaGenerica(a: 42, b: 99))
print(sumaGenerica(a: 42.5, b: 99.3))
print(sumaGenerica(a: Double.pi, b: Double.pi))

let arregloNombres = ["Peter Parker","Bruce Banner","Tony Stark"]

for(index, nombre) in arregloNombres.enumerated() {
    print("\(index): \(nombre)")
}

func obtienePosicion <T:Equatable>(abuscar: T, nombres: [T] ) -> Int? {
    for(index, nombre) in nombres.enumerated() {
        if nombre == abuscar {
            return index
        }
    }
    return nil
}

let encontrado = obtienePosicion(abuscar: "Peter Parker", nombres: arregloNombres)

if encontrado != nil {
    print("Se encontró en la posición:")
    print(encontrado!)
}
else{
    print("No se encontró")
}

struct Point {
    let x:Int, y:Int
}

let p = Point(x:44, y:55)
print(p)

extension Point {
    var descripcion: String {
        return "\(x), \(y)"
    }
}

var nueva = p.descripcion
print(nueva)

class Perro {
    var raza: String = ""
    func haceRuido(){
        print("Guuau!")
    }
}

class Cachorro: Perro {
    override func haceRuido() {
        print("Guuuuauuuuuu!!!")
    }
}

let mascota:Cachorro = Cachorro()
mascota.raza = "Spitz Japonés"

mascota.haceRuido()

class Paciente {
    var nombre: String
    var padecimiento: String
    
    init(nombre:String,padecimiento:String) {
        self.nombre = nombre
        self.padecimiento = padecimiento
    }
    
}

let objetoPaciente = Paciente(nombre: "Menganito", padecimiento: "Pancreatitis")
print(objetoPaciente.nombre)

class EnfermoGrave: Paciente  {
    var nivelDolor : Int
    
    init(nombre:String, padecimiento:String, nivelDolor: Int){
        self.nivelDolor = nivelDolor
        super.init(nombre: nombre, padecimiento: padecimiento)
    }
}

let objetoEnfermo:EnfermoGrave = EnfermoGrave(nombre: "Sultanito", padecimiento: "Gastroenteritis", nivelDolor: 3)

print("\(objetoEnfermo.nombre) \(objetoEnfermo.nivelDolor)")

struct Cantante {
    var nombre = "James Hetfield"
}

var objetoCantante:Cantante = Cantante()
print(objetoCantante.nombre)

var objetoCantante2 = objetoCantante
print(objetoCantante2.nombre)

objetoCantante2.nombre = "José Andrea"
print(objetoCantante.nombre)