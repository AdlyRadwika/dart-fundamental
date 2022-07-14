import 'dart:io';

void main(){

  ///To use each functions, uncomment if needed and vice-versa
  // map();
  // print('');
  // set();
  // print('');
  // list();
  // print('');
}

void list(){
  print('--List--');
  //Explicit
  List<int> numberList = [1, 2, 3, 4, 5];
  //Implicit
  var numberList2 = [1, 2, 3, 4, 5];
  var stringList = ['Hello', 'Dicoding', 'Dart'];
  // List<dynamic>
  List dynamicList = [1, 'Dicoding', true];
  //List spread
  var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  var others = ['Cake', 'Pie', 'Donut'];
  dynamic empty; //set to be null
  var spreadFav = [favorites, others];
  var allFav = [...favorites, ...others];
  var emptyFav = [favorites, ...?empty]; //null safety

  //explicit list
  print('Hello, I\'m explicit list! My call is int and the result is $numberList');
  //the functions in implicit list
  print('Hello, I\'m implicit list! The result is $stringList');
  print('Hello, I\'m the first index of implicit list! The result is ${stringList[0]}');
  print('Hello, I\'m the last index of implicit list! The result is ${stringList.last}');
  stringList.forEach((s) => print('Hello, I\'m stringList in loop and the result is $s!'));
  stringList.add('Flutter');
  print('Hello, there is a new family in stringList and that is ${stringList[3]}!');
  stringList.insert(0, 'Programming');
  print('Hello, there is a few new member in stringList and they are $stringList!');
  stringList[1] = 'Application';
  print('Hello, there is a change in stringList[1] and the result is $stringList!');
  /***
  stringList.remove('Programming'); // Delete explicitly
  stringList.removeAt(1);           // Delete at index 1
  stringList.removeLast();          // Delete the last index
  stringList.removeRange(0, 2);     // Delete index 0-1 and keep the index 2
  ***/
  //dynamic list
  print('Hello, I\'m dynamic list! The result is $dynamicList and my index 0 is ${dynamicList[0]}');
  //spread list
  print('Hello I\'m spread list! The result is $spreadFav');
  print('Hello I\'m combined spread list! The result is $allFav');
  print('Hello I\'m spread list includes null safety! The result is $emptyFav');
}

void set(){
  print('--Set--');
  var numberSet = {1, 4, 6};
  Set<int> anotherSet = new Set.from([1, 4, 6, 4, 1]);
  var setA = {1, 2, 4, 5};
  var setB = {1, 5, 7};

  print('Hello, I\'m a Set that prevent duplication! The result is $anotherSet');
  print('Hello, I\'m numberSet! The result is $anotherSet');
  //functions
  numberSet.add(7);
  print('Hello, I\'m numberSet with a new addition! The result is $numberSet');
  numberSet.addAll({2, 3});
  print('Hello, I\'m numberSet with a few addition! The result is $numberSet');
  numberSet.remove(3); //delete the value 3 not index 3
  print('Hello, I\'m numberSet with a deletion! The result is $numberSet');
  print('Hello, this is numberSet with element at 2! The result is ${numberSet.elementAt(2)}'); //elementAt use index
  var union = setA.union(setB);
  var intersection = setA.intersection(setB);
  print('Hello, I\'m setA: $setA and this is setB: $setB');
  print('Hello, I\'m setA union with setB! The result is $union');
  print('Hello, I\'m setA intersection with setB! The result is $intersection');


}

void map(){
  print('--Map--');
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan'
  };
  
  print('Hello, I\'m capital variable and the result is $capital');
  print('Hello, I\'m capital variable and this is Jakarta the capital of : ${capital['Jakarta']}');
  var mapKeys = capital.keys;
  print('Hello, I\'m mapKeys and this is the result $mapKeys');
  var mapValues = capital.values;
  print('Hello, I\'m mapValues and this is the result $mapValues');
  capital['New Delhi'] = 'India';
  print('Hello, I\'m capital variable and this is a new addition : $capital');

  /**
   to remove all value
   capital.clear();
   */
}