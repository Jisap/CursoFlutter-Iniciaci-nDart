void main() {
  
  final Map<String, dynamic> rawJson = { // Variable obtenida desde una petición http
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };
  
//   final ironman = Hero(                  // Damos valor a la clase para imprimirla según 1er constructor
//     isAlive: false,
//     power: 'Money',
//     name: 'Tony Stark'
//   );  
  
  final ironman = Hero.fromJson( rawJson);  // Damos valor a la clase desde 2º constructor
  

  print ( ironman );
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
  Hero({                                      //Constructor 1º
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson( Map<String, dynamic> json )  // Constructor 2º 
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No alive found';
  
  
  
  @override
  String toString(){
    return '$name, $power, isAlive: ${ isAlive ? 'Yes' : 'No'}';
  }
}