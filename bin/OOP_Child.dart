import 'OOP_People.dart';

//Inheritance
class Child extends People {
  late String education;

  Child(super.name, super.age, super.weight, this.education);

  void toSchool(){
    print('$name is going to school');
  }
}