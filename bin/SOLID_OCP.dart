import 'dart:io';

//Open/Close Principle

//BEFORE
/*
class Cinema {
  double price;
 
  Cinema(this.price);
}
 
 
class StandardCinema extends Cinema {
  StandardCinema(double price) : super(price);
}
 
 
class DeluxeCinema extends Cinema {
  DeluxeCinema(double price) : super(price);
}
 
 
class PremiumCinema extends Cinema {
  PremiumCinema(double price) : super(price);
}

class CinemaCalculations {
  double calculateAdminFee(Cinema cinema) {
    if (cinema is StandardCinema) {
      return cinema.price * 10 / 100;
    } else if (cinema is DeluxeCinema) {
      return cinema.price * 12 /100;
    } else if (cinema is PremiumCinema) {
      return cinema.price * 20 / 100;
    } else {
      return 0.0;
    }
  }
}
*/


//AFTER
abstract class Cinema {
  double price;
 
  Cinema(this.price);
 
  double calculateAdminFee();
}
 
class StandardCinema extends Cinema {
  StandardCinema(double price) : super(price);
 
  @override
  double calculateAdminFee() {
    return price * 10 / 100;
  }
}
 
class DeluxeCinema extends Cinema {
  DeluxeCinema(double price) : super(price);
 
  @override
  double calculateAdminFee() {
    return price * 12 / 100;
  }
}
 
class PremiumCinema extends Cinema {
  PremiumCinema(double price) : super(price);
 
  @override
  double calculateAdminFee() {
    return price * 20 / 100;
  }
}

class CoupleCinema extends Cinema {
  CoupleCinema(double price) : super(price);
 
  @override
  double calculateAdminFee() {
    return price * 15 / 100;
  }
}

void main() {
  final standardCinema = StandardCinema(100);
  final adminFee = standardCinema.calculateAdminFee();
  print(adminFee);
}
