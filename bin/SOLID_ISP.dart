import 'dart:io';

//Interfance Segregation Principle

//BEFORE
/*
abstract class VehicleInterface {
  void drive();
  void stop();
  void refuel();
  void openDoors();
}
 
class MotorCycle implements VehicleInterface {
  @override
  void drive() {}
 
  @override
  void refuel() {}
 
  @override
  void stop() {}
 
  // Can not be implemented
  @override
  void openDoors() {}
}
*/

//AFTER
abstract class VehicleInterface {
  void drive();
  void stop();
  void refuel();
}
 
abstract class DoorInterface {
  void openDoors();
}

class Motorcycle implements VehicleInterface {
  @override
  void drive() {
    // TODO: implement drive
  }
 
  @override
  void refuel() {
    // TODO: implement refuel
  }
 
  @override
  void stop() {
    // TODO: implement stop
  }
}

class Car implements VehicleInterface, DoorInterface {
  @override
  void drive() {
    // TODO: implement drive
  }
 
  @override
  void refuel() {
    // TODO: implement refuel
  }
 
  @override
  void stop() {
    // TODO: implement stop
  }
 
  @override
  void openDoors() {
    // TODO: implement openDoors
  }
}
