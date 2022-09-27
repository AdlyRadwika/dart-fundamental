import 'dart:io';

//single INHERITANCE
class Animal {
  void walk() {
    print('$runtimeType walk!');
  }
}
 
class Cat extends Animal {
  @override
  void walk() {
    super.walk();
    print('Yeay! $runtimeType walked!');
  }
}


//MULTILEVEL INHERITANCE
class Animal {
  void walk() {
    print('$runtimeType walk!');
  }
}
 
class Carnivore extends Animal {
  void eat() {
    print('$runtimeType eat!');
  }
}
 
class Cat extends Carnivore { }


//MULTIPLE INHERITANCE
class Ovipar {}
 
class Vivipar {}
 
class Ovovivipar implements Ovipar, Vivipar {}
 
class Snake implements Ovovivipar {}


//Hierarchical Inheritance
class Animal {
  void walk() {
    print('$runtimeType walk!');
  }
}
 
class Carnivore extends Animal {
  void eat() {
    print('$runtimeType eat!');
  }
}
 
class Cat extends Carnivore {}
 
class Lion extends Carnivore {}
 
class Dog extends Carnivore {}
