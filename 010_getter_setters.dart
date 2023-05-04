void main(){
  
  final mySquare = Square( side: 10 );          // Instancia de la clase
  
  print ( 'area: ${mySquare.calculateArea()}'); // Usamos la instancia usando el método calculatedArea

  mySquare.side = 5;                            // Usamos el setter
  
  print ( 'getarea: ${mySquare.area}');         // Usamos el getter
}

class Square{
  
  double _side;                                 // Variables (privada) de la clase
  
  Square({ required double side })              // Constructor
    :assert( side >= 0, 'side must be >= 0'), 
      _side = side;
  
  double get area {                             // Método getter
    return _side * _side;
  }
  
  set side( double value ) {                    // Método setter
    print('setting new value $value');
    if(value < 0 ) throw 'Value must be >0';
    
    _side = value;
  }
    
  double calculateArea() {                      // Método
    return _side * _side;
  }
}