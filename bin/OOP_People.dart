class People {
  //encapsulation, where underscore made them private
  String _name = '';
  int _age = 0;
  double _weight = 0;

  //setter and getter
  String get name => _name;
  set name(String value) => _name = value;

  int get age => _age;
  set age(int value) => _age = value;

  double get weight => _weight;
  set weight(double value) => _weight = value;

  People(this._name, this._age, this._weight);

  void eat() {
    print('$_name is eating.');
    _weight = _weight + 0.2;
  }

  void sleep() {
    print('$_name is sleeping.');
  }

  void poop() {
    print('$_name is pooping.');
    _weight = _weight - 0.1;
  }
}