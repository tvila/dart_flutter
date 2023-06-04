void main() {
  // Clases abstractas "Molde para crear otros moldes"
  // No se puede instanciar
  // final windPlant = energyPlant();
  
  final windPlant = WindPlant(initialEnergy: 29);
  final nuclearPlant = NuclearPlant(energyLeft: 2000);
  
  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
  
}

// Principio de inversión de dependencias

double chargePhone(EnergyPlant plant){
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  
  return plant.energyLeft - 10;
  
}

enum PlantType {nuclear, wind, water} // no acaba con ;

abstract class EnergyPlant {
  
  double energyLeft;
  final PlantType type; // nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft, 
    required this.type
    
  });
  
  // Método
  void consumeEnergy(double amount);
   
}

// extends o implements
// extends hereda de otra clase. En este caso hereda el constructor, etc

class WindPlant extends EnergyPlant {
  
  // super() llama al constructor de la clase padre
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type:PlantType.wind);
  
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
     
  }
}

class NuclearPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  final PlantType type = PlantType.nuclear;
  
  @override
  NuclearPlant({required this.energyLeft});
  
  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
    
  }
} 
 