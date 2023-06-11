// Streams 

void main() {
 
  emitNumbers().listen((value){           // Hay que utilizar .listen() para que "escuche" los streams
    print('Stream values: $value');
    
  });
 
  
}

// Implementación de Dart por defecto
Stream<int> emitNumbers() {
  
  return Stream.periodic(const Duration(seconds: 1), (value){
    // print('desde periodic $value');
    return value;
  }).take(5); // limitar las emisiones
  
}