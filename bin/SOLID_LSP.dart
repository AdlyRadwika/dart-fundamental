import 'dart:io';

//Liskov Subtituition Principle

//BEFORE
/*
abstract class Product {
  String getName();
  DateTime getExpiredDate();
 
  // Function to get all of information about [Product]
  void getProductInfo() {
    // some magic code
  }
}
 
class Vegetable extends Product {
  @override
  String getName() {
    return 'Broccoli';
  }
 
  @override
  DateTime getExpiredDate() {
    return DateTime.now();
  }
}
*/

//AFTER
abstract class Product {
    String getName();
 
    //Function to get all of information about [Product]
    void getProductInfo() {
        // some magic code
    }
}
 
abstract class FoodProduct extends Product {
    DateTime getExpiredDate();
}
 
class Vegetable extends FoodProduct {
    @override
    String getName() {
        return 'Broccoli';
    }
 
    @override
    DateTime getExpiredDate() {
        return DateTime.now();
    }
}
 
class Smartphone extends Product {
    @override
    String getName() {
        return 'Samsung S10+ Limited Edition';
    }
}
