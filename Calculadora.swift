import Foundation

// Función para realizar la operación aritmética
func realizarOperacion(numero1: Double, numero2: Double, operacion: String) -> Double? {
    switch operacion {
    case "+":
        return numero1 + numero2
    case "-":
        return numero1 - numero2
    case "*":
        return numero1 * numero2
    case "/":
        if numero2 == 0 {
            return nil // Manejo de división por cero
        }
        return numero1 / numero2
    default:
        return nil // Operación no válida
    }
}

// Función principal de la calculadora
func calculadoraBasica() {
    print("Calculadora Básica")
    print("-----------------------------")

    // Solicitar el primer número
    print("Ingresa el primer número: ", terminator: "")
    guard let numero1Str = readLine(), let numero1 = Double(numero1Str) else {
        print("Entrada no válida para el primer número.")
        return
    }

    // Solicitar la operación
    print("Ingresa la operación (+, -, *, /): ", terminator: "")
    guard let operacion = readLine() else {
        print("Entrada no válida para la operación.")
        return
    }

    // Solicitar el segundo número
    print("Ingresa el segundo número: ", terminator: "")
    guard let numero2Str = readLine(), let numero2 = Double(numero2Str) else {
        print("Entrada no válida para el segundo número.")
        return
    }

    // Realizar la operación
    if let resultado = realizarOperacion(numero1: numero1, numero2: numero2, operacion: operacion) {
        print("El resultado es: \(resultado)")
    } else {
        print("Operación no válida o división por cero.")
    }
}

// Llamar a la función de la calculadora
calculadoraBasica()