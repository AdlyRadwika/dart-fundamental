import 'package:kali_ini_beneran/kali_ini_beneran.dart' as kali_ini_beneran;
import 'dart:io';

var testScope = 'Hello test variable scope here!'; //var still can be changed
const one = 1;  //const means the value is set before running the program and can't be changed
final String testFinal = "aaaaa"; //final similar to const but still could be declared during running the program
String? favoriteFood; //? is set to nullable
String? favoriteFood2 = 'Batagor';

void main(List<String> arguments) {

  //to comment hello world
  print('Hello world: ${kali_ini_beneran.calculate()}!');
  //to commet adly here
  print('Heyyy adly here');
  print('');

  /*
   To use each functions here
  */

  nullSafety(favoriteFood);
  nullSafety2(favoriteFood2!); //use ! when 100% the result is won't be null
  print('Hello, this is null safety 3 and the result is $favoriteFood');
  print('Hello, this is null safety 4 and the result is ${favoriteFood = 'Nasgor'}');
  print('');


  // print('Hello, const global variable here, $one !'); //const variable
  // print('Hello $testFinal, you\'re the final variable!'); //final variable
  // print('');

  // print(testScope); //variable scope
  // print('');

  // greet('Adly', 2002); //Functions fundamental 1
  // print('Rata-rata dari 10 & 5 adalah ${average(10, 5)}'); //Functions fundamental 2
  // greetNewUser('Widy', 20, true); //Optional parameters 1
  // greetNewUser('Adly', 18); //Optional parameters 1.2
  // greetNewUser2(age: 19, name: 'Budi'); //Optional parameters 2
  // print('');

  // exceptions();
  // print('');

  // operators();
  // print('');

  // booleans();
  // print('');

  // strings();
  // print('');

  // numbers();
  // print('');

  // variables();
  // print('');

  // userInput();
  //print('');
}

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

void numbers(){
  print('--Numbers--');
  //Integer
  var year = 2022;
  var hex = 0xDEADBEEF;
  //Double
  var decimal = 1.5;
  var pie = 2.56;
  double withoutDecimal = 8; //equal to 8.0;

  //Parsing string to int
  var oneString = int.parse('1');
  //Parsing string to double
  var twoDecString = double.parse('2.0');
  //Parsing int to string
  var threeString = 3.toString();
  //Parsing double to string
  var fourString = 4.0343.toStringAsFixed(2);

  print('String to int = $oneString');
  print('String to double = $twoDecString');
  print('Int to string = $threeString');
  print('Double to string 3 digits = $fourString');
}

void strings(){
  print('--Strings--');
  //Single quote
  String a = 'a';
  //Double quote
  String aA = "aA";

  print('"Who is your parents?" B asked'); //With double quote inside
  print('"$a\'s parents is $aA" C helped'); //Both combined
  print("The SDK path is on D:\\Program Files\\Dart"); //Can also be used as this way
  print('2 * 3 = ${2 * 3}'); //Math operation
  print(r'$2 + $3 = $5'); //r or runes is to prevent calling variables
  print('This is three strips: \u2634'); //can also be used to call unicode
}

void booleans(){
  print('--Booleans--');
  //can be bool or var
  bool alwaysTrue = true;
  var alwaysFalse = false;
  //! means not or bang
  var notTrue = !true;
  bool notFalse = !false;

  if(/* change me into line 85-89*/ alwaysFalse == true) {
    print("Correct");
  } else {
    print("Wrong");
  }
}

void operators(){
  print('--Operators--');
  //set firstNumber value into 4 at declaration
  var firstNumber = 4;

  //Sum operation
  var secondNumber = 13;
  var sum = firstNumber + secondNumber;
  print('$firstNumber + $secondNumber = $sum');
  print('+ = ${5 + 2}');   // int add = 7
  print('- = ${5 - 2}');   // int subtract = 3
  print('* = ${5 * 2}');   // int multiply = 10
  print('/ = ${5 / 2}');   // double divide = 2.5
  print('~/ = ${5 ~/ 2}');  // int intDivide = 2
  print('% = ${5 % 2}');   // int modulo = 1
  print('2 + 4 * 2 = ${2 + 4 * 2}'); // multiple operations
  print('double operations parentheses = ${(1 + 3) * (4 - 2)}');

  //increment and decrement
  var a = 0, b = 5;
  print('before increment = $a');
  print('before decrement = $b');
  a++;
  b--;
  print('increment = $a'); // output = 1
  print('decrement = $b'); // output = 4
  var d = 2;
  d *= 3;   // d = d * 3 atau d = 2 * 3
  print('d*= $d'); // output = 6

  //Logic operators
  if (2 < 3 && 2 + 4 == 5) {
    print('Untuk mencetak ini semua kondisi harus benar');
  } else {
    print('2 kurang dari 3, tapi 2 + 4 tidak sama dengan 5, maka ini akan tampil');
  }

  if (false || true || false) {
    print('Ada satu nilai true');
  } else {
    print('Jika semuanya false, maka ini akan tampil');
  }
}

void exceptions(){
  print('--Exceptions--');
  //will error
  // var a = 7;
  // var b = 0;
  // print(a ~/ b);

  //with on Exception
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } on Exception {
    print('Error with exception');
    print('');
  }
  print('With try and catch');
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e) {
    print('Exception happened: $e');
    print('');
  }
  print('With try and catch + stack trace');
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch(e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  }
  print('With try-catch-stacktrace + finally');
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch(e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  } finally {
    print('This line still executed');
  }
}

void nullSafety(String? food){
  print('--Null safety--');
  if (food == null) {
    print('This is null safety 1 and result is Bought Nasi Goreng');
  } else {
    print('This is null safety 1 and result is Bought $food');
  }
}

void nullSafety2(String food){
  print('This is null safety 2 and result is bought a $food');
}

/*

Functions chapter

*/

//void means no return
void greet(String name, int bornYear) {
  print('--Functions--');
  var age = 2022 - bornYear;
  print('Halo $name! Tahun ini Anda berusia $age tahun');
}

//with arrows
void greeting() => print('Hello');
double average2(num num1, num num2) => (num1 + num2) / 2;

//without void means return is a must
double average(num num1, num num2) {
  return (num1 + num2) / 2;
}

//optional parameters 1 and to use it must according to the sequences
void greetNewUser([String? name /* ? means null allowed */, int? age, bool? isVerified]){
  print('Hello, $name. Your age is $age. And this is $isVerified');
}
//optional parameters 2 and can be used not based on the sequences
void greetNewUser2({required String name, required int age, bool? isVerified}){
  print('This is optional parameters 2');
  print('Hello, $name. Your age is $age. And this is $isVerified');
}