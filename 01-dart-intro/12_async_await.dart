// Future
void main() async {
  
  print('Inicio del programa');
  
  try {
    
    final value = await httpGet('https://genbeta.com');
    print(value);
    
  } catch (err) {
    print('Tenemos un error: $err');
  }
  
  print('Fin del programa');
}

Future <String> httpGet(String url) async { // async simpre retorna un future. 
  
  await Future.delayed(const Duration (seconds: 2)); // Transforma los future en secuenciales
  
  throw 'Error en la petición';
  
  // return 'Valor de la petición';
  
  // await solo se puede usar en funciones asíncronas. 
    
  
}