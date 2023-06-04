void main() {
  // Getters y setters
  final mySquare = Square(side: 10);
  
  mySquare.side = -5;
  print('Area: ${mySquare.area}');
  
}

class Square {
  double _side; // _ indica que es una propiedad privada. Solo es visible en esta clase
  
  // Constructor
  Square({required double side})
    : _side = side;
  
  // getter
  double get area {
    return _side * _side;
    
  }
  
  set side(double value){
    print('setting new value $value');
    if (value < 0) throw 'Value must be >=0';
    
    _side = value;
    
  }
  
  double calculatedArea() {
    return _side * _side;
    
  }
  
  
}

/* Continuación códido con aserciones. 

void main() {
  // Aserciones -> assert
  
  final mySquare = Square(side: -10);
  
  //mySquare.side = -5;
  print('Area: ${mySquare.area}');
  
}


class Square {
  double _side; // _ indica que es una propiedad privada. Solo es visible en esta clase
  
  // Constructor
  Square({required double side}) // Primero aseciones y luego asignaciones
    : assert(side >= 0, 'Side must be >= 0'), // Segundo argumento posicional para poner mensaje de error
    _side = side;
  
  // getter
  double get area {
    return _side * _side;
    
  }
  
  set side(double value){
    print('setting new value $value');
    if (value < 0) throw 'Value must be >=0';
    
    _side = value;
    
  }
  
  double calculatedArea() {
    return _side * _side;
    
  }
  
  
}
*/