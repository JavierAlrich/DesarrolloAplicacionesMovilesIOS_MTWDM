import UIKit

var listaNumeros:[Int] = [0,1,2,3,4,5]
var listaNombres:[String] = ["Donatello", "Rafael", "Leonardo", "Miguel Ángel"]
print(listaNombres[1])

listaNombres += ["Splinter"]
print(listaNombres)

var totalNombres = listaNombres.count
print(totalNombres)

listaNombres.append("Shredder")
print(listaNombres)


