import 'dart:io';

void main() {
  var open = 9;
  var closed = 21;
  var now = 22;

  for (int i = 1; i < 9; i+=2) {
    print(i);
  }

  ///To use each functions, comment if not used and vice-versa
  // switchCase();
  // print('');
  // breakContinue();
  // print('');
  // doWhile();
  // print('');
  // forLoops();
  // print('');
  // ifElse(now,open,closed);
  // calculateScore();
  // print('');
}

void ifElse(now, open, closed) {
  print('--If & Else--');
  print('Input is $now');
  if (now > open && now < closed) {
    print("Hello, we're open");
  } else {
    print("Sorry, we’ve closed");
  }

  //If-else in one-liner
  // condition ? true expression : false expression
  int seven = 7;
  var shopStatus = seven > open ? "Hello, we're open" : "Sorry, we've closed";
  print(
      'This is one-liner. The input is $seven and the result is "$shopStatus"');

  //If-else in one-liner 2
  //expression1 ?? expression2
  String name = 'Adly';
  dynamic name2;
  //Since name has value, it will use the expression1
  var buyer1 = name ?? 'user';
  //Since name2 is null, the expression2 will be used
  var buyer2 = name2 ?? 'user';
  print('This is buyer1 with the name $buyer1');
  print('This is buyer2 with null in the name and the result is $buyer2');
}

void calculateScore() {
  stdout.write('Inputkan nilai Anda (1-100) : ');
  var score = num.parse(stdin.readLineSync()!);
  if (score >= 90) {
    print('Nilai Anda: A');
  } else if (score >= 80) {
    print('Nilai Anda: B');
  } else if (score >= 70) {
    print('Nilai Anda: C');
  } else if (score >= 60) {
    print('Nilai Anda: D');
  } else {
    print('Nilai Anda: E');
  }
}

void forLoops() {
  print('--For Loops--');
  for (int i = 1; i < 10; i++) {
    print(i);
  }
}

void doWhile() {
  print('--Do While--');
  String username;
  bool notValid = false;

  //only While
  var i = 1;
  while (i <= 5) {
    print(i);
    i++;
  }
  //do-while
  do {
    stdout.write('Masukkan nama Anda (min. 6 karakter): ');
    username = stdin.readLineSync() ?? "";

    if (username.length < 6) {
      notValid = true;
      print('Username Anda tidak valid');
    } else {
      print('Halo $username!');
    }
  } while (notValid);
}

void breakContinue() {
  print('--Break and Continue--');
  //Break only
  print('This is break only');
  var primeNumbers = [
    2,
    3,
    5,
    7,
    11,
    13,
    17,
    19,
    23,
    29,
    31,
    37,
    41,
    43,
    47,
    53,
    59,
    61,
    67,
    71
  ];
  stdout.write('Masukkan bilangan prima : ');
  var searchNumber = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < primeNumbers.length; i++) {
    if (searchNumber != primeNumbers[i]) {
      print('$searchNumber bukanlah bilangan prima');
    } else if (searchNumber == primeNumbers[i]) {
      print('$searchNumber adalah bilangan prima ke-${i + 1}');
      break;
    }
    print('$searchNumber != ${primeNumbers[i]}');
  }
  //Continue
  print('This is continue only');
  for (int i = 1; i <= 10; i++) {
    if (i % 3 == 0) {
      //since its continue, this part will be skipped
      continue;
    }
    print(i);
  }
}

void switchCase() {
  print('--Switch Case--');
  stdout.write('Masukkan angka pertama : ');
  var firstNumber = num.parse(stdin.readLineSync()!);
  stdout.write('Masukkan operator [ + | - | * | / ] : ');
  var operator = stdin.readLineSync();
  stdout.write('Masukkan angka kedua : ');
  var secondNumber = num.parse(stdin.readLineSync()!);

  switch (operator) {
    case '+':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber + secondNumber}');
      break;
    case '-':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber - secondNumber}');
      break;
    case '*':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber * secondNumber}');
      break;
    case '/':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber / secondNumber}');
      break;
    default:
      print('Operator tidak ditemukan');
  }
}
