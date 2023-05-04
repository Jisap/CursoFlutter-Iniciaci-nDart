void main() {
  final Hero wolverine = Hero('Logan', 'Regeneración'); // Instancia de la clase Hero
  print(wolverine.name);
  print(wolverine.power);
}

class Hero{
  
  String name;
  String power;
  
//   Hero( String pName, String pPower ) //Contructor que inicializa la clase
//     : name = pName,
//       power = pPower;
  
  Hero( this.name, this.power); // Segunda manera de inicializar las clases
}