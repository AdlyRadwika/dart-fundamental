import 'dart:io';

//RUNTIME POLYMORPHISM
void main() {
  var cat = Cat();
  cat.walk();
}
 
class Animal {
  void walk() {
    print('Animal walk!');
  }
}
 
class Cat extends Animal {
  @override
  void walk() {
    super.walk();
    print('Yeay! Cat walked!');
  }
}
