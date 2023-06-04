// Future
void main (){
  print('Inicio del programa');
  
  httpGet('https://genbeta.com')
    .then(
      (value) {
        print(value);
      })
    .catchError((err) {
      print('Error: $err');
     
  });
  
  print('Fin del programa');
}

Future <String> httpGet(String url) {
  
  return Future.delayed(const Duration (seconds: 2), () {
    throw 'Error de la petición http';
    
    // return 'Respuesta de la petición http.';
  
  });
 
}