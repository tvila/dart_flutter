void main() {

  // Final se asigna a variables que no cambiaran su valor
  final String pokemon = 'Ditto';
  final int hp = 180;
  final bool isAlive = true;
  bool? isAlive2; // informa de que puede ser nulo (?), true y false

  // Métodos para lista de Strings:
  final abilities = ['impostor'];
  final abilities = <String>['impostor'];
  final List<String> abilities = ['impostor']; // Muy común 
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  // Variables dynamic. No hay que abusar
  // dynamic por defecto es nulo, por lo tanto no hace falta ?
  // dynamic puede ser cualquier tipo.
  dynamic errorMessage = 'Hola';
  errorMessage = ture;
  errorMessage = [1, 3, 4];
  errorMessage = {1, 3, 4};
  errorMessage = () => true;
  errorMessage = null;
  
  // Mapas: Key- value pairs. Como diccionario
  // en este caso String en la key y el value es dinámico. 
  // hay que definir el tipo de datos que hay en los "mapas"
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100
  };

  final Map<int, String> ejemplo = {
    1: '1',
    2: '3'
  },

  // para acceder a los mapas
  print('Name': ${pokemon['name']});

  // String multi línea
  // $nombre_var -> Lo que sería en python print(f'{varibale})
  
  print("""
  $pokemon
  $hp
  $isAlive

  """);

  // iterables
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8];

  print('List original $numbers');
  print('Length ${numbers.length}');
  print('Index 0 ${numbers[0]}');
  print('First ${numbers.first}');
  print('Reversed ${numbers.reversed}');



}