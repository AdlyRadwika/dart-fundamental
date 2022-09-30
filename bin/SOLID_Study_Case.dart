import 'dart:io';

//BEFORE
/*
abstract class Vehicle<T> {
  void accelerate();
  void brake();
  void refill(T source);
}
 
class Car<T> implements Vehicle<T> {
  EngineInterface? engine;
  StorageInterface<T> storage;
 
  Car({
    required this.engine,
    required this.storage,
  });
 
  @override
  void accelerate() {
    engine?.move();
  }
 
  @override
  void brake() {
  }
 
  @override
  void refill(T source) {
    storage.fill(source);
  }
}
*/

//AFTER
abstract class EngineInterface {
  void move();
}
 
abstract class StorageInterface<T> {
  void fill(T source);
  T getSource();
}

class PetrolEngine implements EngineInterface {
  OilPipe oilPipe;
  Piston piston;
 
  PetrolEngine({
    required this.oilPipe,
    required this.piston,
  });
 
  @override
  void move() {
    final oil = oilPipe.suckOil();
    final energy = oil.burn();
    energy.push(piston);
  }
}
 
class Piston {
  void move() {}
}
 
class OilPipe {
  Oil suckOil() {
    return Oil();
  }
}
 
class Oil {
  Energy burn() {
    // Do some combustion process here
    return Energy();
  }
}
 
class Energy {
  void push(Piston piston) {
    piston.move();
  }
}
 
class Tank implements StorageInterface<Oil> {
  late Oil _oil;
 
  @override
  void fill(Oil source) {
    _oil = source;
  }
 
  @override
  Oil getSource() {
    return _oil;
  }
}

// Petrol Car
final tank = Tank();
final oilPipe = OilPipe(); 
final piston = Piston();
final petrolEngine = PetrolEngine(oilPipe: oilPipe, piston: piston);
final petrolCar = Car<Oil>(engine: petrolEngine, storage: tank);
final oil = Oil();
petrolCar.refill(oil);
petrolCar.accelerate();
petrolCar.brake();

class ElectricEngine implements EngineInterface {
  SpeedController _speedController;
 
  ElectricEngine(this._speedController);
 
  @override
  void move() {
    _speedController.control();
  }
}
 
class SpeedController {
  BatteryManagementSystem bms;
  ElectricMotor motor;
 
  SpeedController({
    required this.bms,
    required this.motor,
  });
 
  void control() {
    final battery = bms.getBattery();
    motor.rotate(battery);
  }
}
 
class BatteryManagementSystem {
  Battery getBattery() {
    return Battery(Electrons());
  }
}
 
class ElectricMotor {
  void rotate(Battery battery) {
    // Rotate the rotor using electric power from battery
  }
}
 
class Electrons {}
 
class Battery implements StorageInterface<Electrons> {
  Electrons _electrons;
 
  Battery(this._electrons);
 
  @override
  void fill(Electrons source) {
    _electrons = source;
  }
 
  @override
  Electrons getSource() {
    return _electrons;
  }
}

// Electric Car
final electrons = Electrons();
final battery = Battery(electrons);
final speedController = SpeedController(bms: BatteryManagementSystem(), motor: ElectricMotor());
final electricEngine = ElectricEngine(speedController);
final electricCar = Car<Electrons>(engine: electricEngine, storage: battery);
electricCar.refill(electrons);
electricCar.accelerate();
electricCar.brake();

