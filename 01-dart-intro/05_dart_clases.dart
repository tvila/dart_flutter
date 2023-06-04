void main() {
  // Clase: el 95% de Flutter con clases
  final wolverine = new Hero('Logan', 'Regeneración'); // Inicializando la clase. New es opcional-> new Hero()
  print(wolverine);  
  print(wolverine.name);
  print(wolverine.power);
}


class Hero {
  //String? opcional; // Propiedad opcional
  String name;
  String power;
  
  Hero(this.name, this.power);
  
  // Métodos - Dentro de las clases
  // Ïnicializar las clase. 
  
  
  /* Alternativament en algunos momento la clase se inicia así. 
  Hero(String pName, String pPower) 
       : name = pName,
         power = pPower;
         
    // this.name = pName; poner la palabra reservada this es opcional
    // this.power = pPower;
   
    name = pName;
    power = pPower;
 
  }
  */
  
  
}
void main() {
  // Clase: el 95% de Flutter con clases
  final wolverine = new Hero(name:'Logan', power:'Regeneración'); // Inicializando la clase. New es opcional-> new Hero()
  print(wolverine);  
  print(wolverine.name);
  print(wolverine.power);
  print('Color ${wolverine.color}');
}




class Hero {
  //String? opcional; // Propiedad opcional
  String name;
  String power;
  String color;
  
  Hero({
    required this.name, 
    required this.power,
    this.color = 'blue'
  
  });
  
  @override // hay que indicar cuando se sobreescribe. No obligatorio pero requerido
  String toString() {
    return '$name - $power';
    
  }
 
  
}
