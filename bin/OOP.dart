import 'dart:io';
import 'OOP_People.dart';
import 'OOP_Child.dart';
import 'OOP_Extensions.dart';

void main(){
  //there are two different ways to create an object of a class
  Animal('Oyen', 1, 1.5); //directly
  var dicodingCat = Animal('Oyen', 1, 1.5); //var nameOfObject = NameOfClass(property1, property2);
  //to call a property from another library (encapsulation demo)
  var budi = People('Budi', 18, 45.3);

  ///To use each functions, uncomment if needed and vice-versa

  // budi.sleep(); //a method from the property
  // print('Hello, my name is ${budi.name}. I\'m ${budi.age}. My weight is arround ${budi.weight} kg.');

  // dicodingCat.poop();
  // dicodingCat.eat();
  // dicodingCat.sleep();
  // print('The age is ${dicodingCat.age}');
  // //to set the value with a constructor
  // dicodingCat.age = 3;
  // print('The age is updated with constructor to ${dicodingCat.age}');
  // //With named Constructor
  // dicodingCat = Animal.Age(4);
  // print('The age is updated with named constructor to ${dicodingCat.age}');

  // //The writing format 1
  // Animal('', 3, 3.4) //to demonstrate a cascade notation
  //   ?..age //if null (not necessary)
  //   ..name = 'Tono'
  //   ..eat()
  //   ..sleep(); // semicolon at the end of the last cascade notion
  // //The writing format 2
  // var dogo = (Animal('',10,3.2)
  //     ..name = 'jenny');
  // print('Hello, this is a cascade notation with result: ${dogo.name}');

  //Inheritance demo
  // var udin = Child('Udin', 15, 54.2, 'SMA'); //inheritance demo
  // print('Hello, this is a child-class called ${udin.name}. He is ${udin.age}. His weight is ${udin.weight}. His education is ${udin.education}');
  // udin.toSchool();

  //abstraction demo
  // testAbstract('a'); //abstract can't be instantiated
  // var birdy = Bird('', 3, 4.5, '') //this is how abstract can be used
  //     ..name = 'birdy'
  //     ..featherColor = 'Red'
  //     ..fly();
  // print('Hello this is abstract with interface and the result is ${birdy.name}. It age is ${birdy.age}. It weight is ${birdy.weight}. It feather color is ${birdy.featherColor}');

  // print('Hello, this is enums and the result is : ${Rainbow.values}'); //enums demo
  // print('Hello this is ${Rainbow.blue}');
  // print('Hello this is the name of the value which is ${Rainbow.blue.name}');
  // print('Hello this is the index of orange: ${Rainbow.orange.index}');
  // var weatherForecast = Weather.cloudy;
  // switch(weatherForecast) {
  //   case Weather.sunny:
  //     print("Today's weather forecast is sunny");
  //     break;
  //   case Weather.cloudy:
  //     print("Today's weather forecast is cloudy");
  //     break;
  //   case Weather.rain:
  //     print("Today's weather forecast is rain");
  //     break;
  //   case Weather.storm:
  //     print("Today's weather forecast is storm");
  //     break;
  // }
  // print(Weather.rain.rainAmount); //with constructor
  // print(Weather.storm); //includes toString behaviour/method

  // var donald = Duck(); //mixin demo
  // stdout.write('This is Donald from a single mixin, and it is saying: '); donald.swim();
  // var arielNoah = Musician();
  // //since this is multiple, it would be stacking and the result will be Singing
  // stdout.write('This is Noah from multiple mixin, and he is currently: '); arielNoah.perform();

  // //polymorphism demo
  // Honda honda=Honda();
  // Tesla tesla=Tesla();
  // honda.power(); //still uses on petrol
  // tesla.power();//changed into electricity

  // var unsortedNumbers = [2, 5, 3, 1, 4]; //extensions demo
  // print('Hello this is extension method and this the before result: $unsortedNumbers'); //extension methods
  // var sortedNumbers = unsortedNumbers.sortAsc();
  // print('Hello this is extension method and this the after result: $sortedNumbers');
}

class Animal {
  String name = '';
  int age = 0;
  double weight = 0;

  String get getName => name;
  set setName(String value) => name = value;

  int get getAge => age;
  set setAge(int value) => age = value;

  double get getWeight => weight;
  set setWeight(double value) => weight = value;

  //A constructor
  Animal(this.name, this.age, this.weight);

  //Named Constructor
  Animal.Name(this.name);
  Animal.Age(this.age);
  Animal.Weight(this.weight);
  Animal.all(this.name, this.age, this.weight);

  void eat() {
    print('$name is eating.');
    weight = weight + 0.2;
  }

  void sleep() {
    print('$name is sleeping.');
  }

  void poop() {
    print('$name is pooping.');
    weight = weight - 0.1;
  }
}

//this is basically Abstraction
abstract class testAbstract{
  String name = '';

  testAbstract(this.name);
}
//this is the interface to use abstract and dart has no explicit way to initialize an interface
abstract class Flyable {
  void fly() { }
}
//This is the way to use interface in dart, with implements
class Bird extends Animal implements Flyable {
  String featherColor;

  Bird(super.name, super.age, super.weight, this.featherColor);

  @override //override is to write/add the function from Flyable interface
  void fly() {
    print('$name is flying');
  }
}

//enums are way to save constant values in a place
enum Rainbow {
  red, orange, yellow, green, blue, indigo, violet
}
enum Weather {
  //attribute is possible
  sunny(15),
  cloudy(34),
  rain(69),
  storm(83);

  final int rainAmount;

  //a constructor is possible in enum
  const Weather(this.rainAmount);

  //behaviour also possible
  @override
  String toString() => "Today's weather forecast is $name with a $rainAmount% chance of rain";
}

//mixin is to replace multiple inheritance
mixin mixFlyable {
  void fly() {
    print("I'm flying");
  }
}
mixin Walkable {
  void walk() {
    print("I'm walking");
  }
}
mixin Swimmable {
  void swim() {
    print("I'm swimming!");
  }
}
//"with" is to use the mixin
class Duck with Walkable, Swimmable {}

abstract class Performer {
  void perform();
}
//Mixin is stacking and only one of them would be used if the function/behaviour is the same name
mixin Dancer implements Performer {
  @override
  void perform() {
    print('Dancing');
  }
}
mixin Singer implements Performer {
  @override
  void perform() {
    print('Singing');
  }
}
//with firstMixin, usedMixin. The mixin put in the usedMixin is the one going to appear.
class Musician extends Performer with Dancer, Singer {
  void showTime() {
    perform();
  }
}

//polymorphism here
class Car{
  void power(){
    print("It runs on petrol.");
  }
}
//Honda just extends car and still use the function from Car
class Honda extends Car{}
//Tesla is different car and it should be changed as well with override
class Tesla extends Car{
  @override
  void power(){
    print("It runs on electricity.");
  }
}