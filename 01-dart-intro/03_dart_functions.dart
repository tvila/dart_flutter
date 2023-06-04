void main() {
  // Void quiere decir que no espera ningún valor de retorno
  print(greetEveryone2());
  
  print('Suma ${addTwoNumbers(10, 30)}');
  print('Suma lamda ${addTwoLambda(2, 4)}');
  print('Suma default ${addTwoNumbersDefault(2)}'); // el param b por defecto 0
  
 
}

String greetEveryone() {
  // Es una buena práctica especificar el tipo de dato al principio-
  return "Hello!";
     
}

// Es una lambda? Retorna directamente un valor
String greetEveryone2() => 'Hello everyone';


// Función con argumentos
int addTwoNumbers(int a, int b) {
  return a + b;
}

// Misma función pero lambda
int addTwoLambda(int a, int b) => a + b;

// Función con parámetros opcionales
// los parámetros opcionales van entre [? variable] 

/* Esta opción no es posible porque int? no se puede asignar
int addTwoNumbersOptionalONE(int a, [int? b]) {
  return a + b;

}

*/

int addTwoNumbersOptional(int a, [int? b]) {
  // b = b ?? 0; // b tienen un valor, si no 0 Ver condicionales null
  b ??= 0; // Forma corta de lo anterior
  // b = b + 1;
  // b++; // incrementar 1. Como python a += 4 
    
  return a + b;
}
  
 
int addTwoNumbersDefault(int a, [int b = 0]) {
  return a + b;

}



