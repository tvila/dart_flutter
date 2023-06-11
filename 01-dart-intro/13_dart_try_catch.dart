// Excepciones
void main() async {
   
  print('Inicio del programa');
  
  try {
    
    final value = await httpGet('https://genbeta.com');
    print('Exito: $value');
    
  } on Exception catch(err) { // Permite reaccionar en función de la excepción
    print('Tenemos una excepción: $err');
    
  } catch (err) { 
    print('Warning: $err');
    
  } finally {
    print('Fin del Try / Catch'); // Siempre se ejecuta
 
  }
  
  print('Fin del programa');
}

Future <String> httpGet(String url) async { // async simpre retorna un future. 
  
  await Future.delayed(const Duration (seconds: 2)); // Transforma los future en secuenciales
  
  throw Exception('No hay parámetros en la URL');
  
  // return 'Valor de la petición';
  
  // await solo se puede usar en funciones asíncronas. 
    
  
}