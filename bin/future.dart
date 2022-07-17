import 'dart:io';

void main(){
  print('This is ');
  print('synchronous print');
  print('');

  ///To use each functions, uncomment if needed and vice-versa
  // future();
  // print('');

  futureAsyncAwait();
  print('');

}

///These are asynchronous functions
///It means that it doesn't have to be in sequence
///As an example, line 2 and 3.
///Line 3 wait for line 2 first to be printed, in the asynchronous program, both could run together while waiting for each other.
void future(){
  print('--Future--');
  final myFuture = Future(() {
    print('The basic future here');
    return 12;
  });
  print('main() done');

  ///Calling the future with completed data + error and when complete here
  ///It is similar to try-catch-finally
  getOrder().then((value) { //completed with data
    print('This is the completed future with data and catchError. Also with whenComplete');
    print('You ordered: $value');
  })
  .catchError((error) { //completed with error
    print('Sorry. $error');
  })
  .whenComplete(() { //When the process of then and catch error finished
    print('Thank you');
  });
  print('Getting your order...');
}

///The future with delay and catch error here (completed with data + error)
Future<String> getOrder() {
  //use delayed with the duration
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = true; //change to false and vice-versa to get one of the result
    if (isStockAvailable) {
      return 'Coffee Boba';
    } else {
      throw 'Our stock is not enough.';
    }
  });
}

///The uncompleted future
/**
    Future<String> getOrder() {
      return Future.delayed(Duration(seconds: 3), () {
        return 'Coffee Boba';
    });
    }
 */

///Future completed with data only
///This is when calling the function
/**
    getOrder().then((value) {
      print('Your ordered: $value');
    });
    print('Getting your order...');

    //The output would be:
    Getting your order...
    You ordered: Coffee Boba (Appeared after 3 seconds)
 */

///Future with async and await is to act as a synchronous program
futureAsyncAwait() async{ //must declare async if about to get the value of Future function
  print('--Future with async and await--');
  //calling the functions from future
  print('Hello, this is when calling the future without async and await: ${getOrder()}');

  print('Getting your order...');
  try {
    var order = await getOrder(); //put await to actually get the value of Future function (uncompleted)
    print('Hello, this is future with async and await');
    print('You order: $order'); //completed with data
  } catch (error) {
      print('Sorry. $error'); //completed with error
  } finally {
      print('Thank you'); //when the process of data and error finished
  }
}