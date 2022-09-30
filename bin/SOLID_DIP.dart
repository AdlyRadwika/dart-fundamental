import 'dart:io';

//Dependency Inversion Principle

//BEFORE
/*
class Car {
  final Engine _engine;
  Car(this._engine);
 
  void start() {
    _engine.start();
  }
}
 
class Engine {
  void start() {
 
  }
}
*/

//AFTER
class DieselEngine {
  void start() {
 
  }
}

abstract class EngineInterface {
  void start();
}

class Car {
  final EngineInterface _engine;
 
  Car(this._engine);
 
  void start() {
    _engine.start();
  }
}

class PetrolEngine implements EngineInterface {
  @override
  void start() {
    // TODO: implement start
  }
}
 
class HybridEngine implements EngineInterface {
  @override
  void start() {
    // TODO: implement start
  }
}
 
class DieselEngine implements EngineInterface {
  @override
  void start() {
    // TODO: implement start
  }
}

void main() {
  final petrolEngine = PetrolEngine();
  final petrolCar = Car(petrolEngine);
 
  final dieselEngine = DieselEngine();
  final dieselCar = Car(dieselEngine);
 
  final hybridEngine = HybridEngine();
  final hybridCar = Car(hybridEngine);
 
  petrolCar.start();
  dieselCar.start();
  hybridCar.start();
}
