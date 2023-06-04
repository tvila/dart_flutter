void main() {
  print('heu');
  String nombre = 'pepe';
  String mensaje = 'qué pa tio';
  
  print(greetPerson(name: nombre, message: mensaje));
  print(greetPersonTwo(name: 'Pepe', message: 'Hi')); // Hace overwrite de el mensaje predefinido
  // Control + espacio pafa qeu muestre los parametros  
 
}

// Si los argumentos estan entre {} son opcionaless
// Como son opcionales hay que poner ? porque al ser opcionales pueden ser nulos

String greetPerson({String? name, String? message}) {
  return '$name $message';
  
}


// Ejemplo con argumento requerido
String greetPersonTwo({required String name, String message = 'Hola,'}) {
  return '$message Fernando';
  
}
