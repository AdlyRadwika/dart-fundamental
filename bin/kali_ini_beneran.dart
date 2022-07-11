import 'package:kali_ini_beneran/kali_ini_beneran.dart' as kali_ini_beneran;
import 'dart:io';

void main(List<String> arguments) {

  //to comment hello world
  print('Hello world: ${kali_ini_beneran.calculate()}!');
  //to commet adly here
  print('Heyyy adly here');

  void variables(){
    print('--Variables--');
    //initialize at first (dynamic variable (the value could be any))
    var test;
    //variable string and integer
    var nyapa = 'Oiii!';
    var umur = 12;
    //set the value of line 11
    test = 'apa';
    test = 10; //test is dynamic, therefore, it could be changed
    print('$nyapa $umur $test');

    int a = 10; //integer
    double b = 3.14; //double, decimal numbers
    num c; //num, bilangan bulat dan desimal
    bool isCreate = false; //boolean true/false
    String abcde = 'abcde'; //String
    List aList = [a,'A','aA','Aa']; //List with []
    Map aMap = {"a": 1, "A": 2}; //Map, pairs of key-value
    var e; //dynamic
  }

  void userInput(){
    print('--User input--');
    stdout.write('Who u? ');
    String name = stdin.readLineSync()!; //the ! is to not return null
    stdout.write('Ur age? '); //printed in the same line
    int age = int.parse(stdin.readLineSync()!); //parsed from int to the input(string)
    print('Hello $name, aged $age'); //printed in a new line
  }

  //to use each functions
  variables();
  userInput();
}

