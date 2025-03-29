#import <Foundation/Foundation.h>

// Función para realizar la operación aritmética
double realizarOperacion(double numero1, double numero2, NSString *operacion) {
    if ([operacion isEqualToString:@"+"]) {
        return numero1 + numero2;
    } else if ([operacion isEqualToString:@"-"]) {
        return numero1 - numero2;
    } else if ([operacion isEqualToString:@"*"]) {
        return numero1 * numero2;
    } else if ([operacion isEqualToString:@"/"]) {
        if (numero2 == 0) {
            NSLog(@"Error: División por cero.");
            return NAN; // Devuelve No es un Número (NaN) para indicar un error
        }
        return numero1 / numero2;
    } else {
        NSLog(@"Operación no válida: %@", operacion);
        return NAN; // Devuelve NaN para indicar un error
    }
}

// Función principal de la calculadora
void calculadoraBasica() {
    NSLog(@"Calculadora");
    NSLog(@"-----------------------------");

    // Solicitar el primer número
    NSLog(@"Ingresa el primer número: ");
    char numero1Chars[256];
    scanf("%s", numero1Chars);
    NSString *numero1Str = [NSString stringWithUTF8String:numero1Chars];
    double numero1 = [numero1Str doubleValue];

    // Solicitar la operación
    NSLog(@"Ingresa la operación (+, -, *, /): ");
    char operacionChars[256];
    scanf("%s", operacionChars);
    NSString *operacion = [NSString stringWithUTF8String:operacionChars];

    // Solicitar el segundo número
    NSLog(@"Ingresa el segundo número: ");
    char numero2Chars[256];
    scanf("%s", numero2Chars);
    NSString *numero2Str = [NSString stringWithUTF8String:numero2Chars];
    double numero2 = [numero2Str doubleValue];

    // Realizar la operación
    double resultado = realizarOperacion(numero1, numero2, operacion);
    if (isnan(resultado)) { // Comprobar si el resultado es NaN
        NSLog(@"No se pudo realizar la operación.");
    } else {
        NSLog(@"El resultado es: %f", resultado);
    }
}

// Llamar a la función de la calculadora
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        calculadoraBasica();
    }
    return 0;
}
