void main(){
  ///To use each functions, uncomment if needed and vice-versa
  // print('Hello, this is lambda function with int and the result is ${sum(1,2)}'); //anonymous/lambda function
  // print('Hello, this is lambda function as var and the result is ${sum2(3,4)}');
  // printLambda();
  // print('');

  // myHigherOrderFunction('Hello, this is Higher Order function method 1', sum3); //Higher order function
  // myHigherOrderFunction('Hello, this is Higher Order function method 2', (num1, num2) => num1 + num2);
  // myHigherOrderFunction2('Hello this is higher order with specific in the myFunction parameter', (num1, num2) => num1 + num2);
  // print('');

  // var closureExample = calculate(3); //closure function
  // closureExample();
  // closureExample(); //this closureExample still has access to the previous count which means it is a closure and the reason why is in sync
  // print('');
}

//this one is a recursion function
int fibonacci(n) {
  if (n <= 0) {
    return 0;
  } else if(n == 1) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

//this is called a pure function
int sum(int num1, int num2) {
  return num1 + num2;
}
//it can be stored as var
var sum2 = (int num1, int num2) {
  return num1 + num2;
};
// also use fat arrow is possible
Function printLambda = () => print('This is lambda function');

//Higher order function can call a function as the parameter
void myHigherOrderFunction(String message, Function myFunction) {
  print(message);
  print(myFunction(3, 4));
}
void myHigherOrderFunction2(String message, int Function(int num1, int num2) myFunction) {
  print(message);
  print(myFunction(1,2));
}
//the sum as function for the higher order
Function sum3 = (int num1, int num2) => num1 + num2;

//for closure function
Function calculate(base) {
  var count = 1;
  // which works in a lexical scope (nested functions)
  return () => print("Value is ${base + count++}"); //this lambda has access to var count and base because in the same scope
}