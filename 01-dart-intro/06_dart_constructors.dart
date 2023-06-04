void main() {
  
  // Objeto map (equivalente a diccionario en python). Hay que definir cómo se compone
  final Map<String, dynamic> rawJson = {
    'name' : 'Spiderman',
    'power': 'telaraña',
    'isAlive': false
  };
  
  final ironman = Hero.fromJson(rawJson);
  print(ironman);
  
  /*
  final ironman = Hero(
    isAlive: rawJson['isAlive'] ?? false, // evaluamos si es nulo ??
    power: 'money',
    name : 'Tony Stark'
    
  );
 
  print(ironman);
  print(ironman.isAlive);
  print(ironman.power);
  print(ironman.name);
  
  */
  
}

class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  // Constructor
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'not found',
      isAlive = json['isAlive'] ?? 'not found';
 
  
  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'YES!': 'Nope'}'; // Prueba lógica
  }
}