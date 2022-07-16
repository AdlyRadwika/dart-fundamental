void main(){
  ///To use each functions, uncomment if needed and vice-versa
  // genericType();
  // print('');

  inferenceType();
  print('');
}

void genericType(){
  print('--Generic type--');
  List<int> numberList = [1, 2, 3, 4, 5]; //use <int> to be specific
  List<String> stringList = ['Dart', 'Flutter', 'Android', 'iOS']; //and so do List<String>
  List dynamicList = [1, 2, 3, 'empat'];  // this is considered as List<dynamic>
  ///This is still part of the generic type but commented because of some part would cause error
  /**
      List<Bird> birdList = [Bird(), Dove(), Duck()]; //this would work
      List<Bird> birdList = [Bird(), Dove(), Duck(), Animal()];  // Error because of the Animal()
      List<Bird> myBird = List<Animal>(); //unless it would this way
      //but there would be an error such as below.
      Unhandled exception:
      type 'List<Animal>' is not a subtype of type 'List<Bird>'
   **/

  print('Hello this is numberList and the result is $numberList');
  print('Hello this is stringList and the result is $stringList');
  print('Hello this is dynamicList and the result is $dynamicList');
}
//generic type where it use "T" as the parameter (could be either string or int)
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

void inferenceType(){
  print('--Inference Type--');
  Map<String, dynamic> company = {'name': 'Dicoding', 'yearsFounded': 2015}; //the first way to write this
  var company2 = {'name': 'Dicoding', 'yearsFounded': 2015}; // the second way but still a "Map<String, Object>"
  ///This is still part of the inference type but commented because of some part would cause error
  /**
      Fish fish = Fish(); //Fish fish is the "consumer" while Fish() is the "producer"
      Animal fish = Fish();//Since Fish is consumer, it is safe to change into Animal(the supertype)
      Shark fish = Fish();  // Error, because Fish could have different subtype such as FlyingFish or something
      //To solve the line 43 below is the answer.
      Fish fish = Shark(); //Producer is flexible and that's why Shark() the subtype is allowed to replace Fish() the supertype
   **/

  print('Hello, this is company with Map<String, Object> and the result is $company');
  print('Hello, this is company2 with var only and the result is $company2');
}