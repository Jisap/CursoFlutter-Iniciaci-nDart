void main(){
  
  final windPlant = WindPlant( initialEnergy: 100 );
  final nuclearPlant = NuclearPlant( energyLeft: 1000);
  
  print('wind: ${ chargePhone( windPlant )}'); // Función que recibe una clase abstracta
  print('nuclear: ${ chargePhone( nuclearPlant)}');
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant { // Molde ppal
  
  double energyLeft;                          // Variables
  final PlantType type; //nuclear, wind, water

  EnergyPlant({                               // Constructor
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy( double amount);         // Método sin implementar
}

// extends
class WindPlant extends EnergyPlant { // Hereda todo de la clase abstracta
  
  WindPlant({ required double initialEnergy }) //Constructor de esta clase
    : super(                                   //Constructor del padre  
        energyLeft: initialEnergy,
        type: PlantType.wind
    );
  
  @override
  void consumeEnergy(double amount){          // Implementación del método
    energyLeft -= amount;
  }
}

// implements
class NuclearPlant implements EnergyPlant{    // Es como una copia de la clase abstracta
  
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear; // Se inicializa aquí no en el constructor
  
  NuclearPlant({                            // Constructor
    required this.energyLeft,
   
  });
  
  @override
  void consumeEnergy( double amount ){      // Implementación del método
    energyLeft -= (amount * 0.5);
  }
  
  
}

double chargePhone( EnergyPlant plant ){      // Función que recibe una clase abstracta
  if( plant.energyLeft < 10 ){
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}