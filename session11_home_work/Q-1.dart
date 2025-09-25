class Vehicle {
  String _name = 'vehicle';
  double _kmPerLitre = 10;
  double _tankCapacity = 40;

  Vehicle({
    required String name,
    required double kmPerLitre,
    required double tankCapacity,
  }) : _name = name,
       _kmPerLitre = kmPerLitre,
       _tankCapacity = tankCapacity;

  String get name => _name;
  double get kmPerLitre => _kmPerLitre;
  double get tankCapacity => _tankCapacity;

  set name(String name) {
    if (name.isEmpty) {
      print("Invalid name");
    } else {
      _name = name;
    }
  }

  set kmPerLitre(double kmPerLitre) {
    if (kmPerLitre <= 0) {
      print("Invalid km per litre");
    } else {
      _kmPerLitre = kmPerLitre;
    }
  }

  set tankCapacity(double tankCapacity) {
    if (tankCapacity <= 0) {
      print("Invalid tank capacity");
    } else {
      _tankCapacity = tankCapacity;
    }
  }

  double fuelNeeeded(List<double> trips) {
    double total = 0;
    for (var trip in trips) {
      total += trip;
    }
    return total / kmPerLitre;
  }

  bool canComplete(List<double> trips) {
    return fuelNeeeded(trips) <= tankCapacity;
  }
}

class Car extends Vehicle {
  int _passengers = 1;
  Car({
    required String name,
    required double kmPerLitre,
    required double tankCapacity,
  }) : super(name: name, kmPerLitre: kmPerLitre, tankCapacity: tankCapacity);

  int get passengers => _passengers;

  set passengers(int passengers) {
    if (passengers <= 0) {
      print("Invalid number of passengers");
    } else {
      _passengers = passengers;
    }
  } // validate passengers > 0

  double effKmPerLitre() {
    double e = kmPerLitre - 0.5 * (passengers - 1);
    return e;
  } // effective km per litre

  @override
  double fuelNeeeded(List<double> trips) {
    double total = 0;
    for (var trip in trips) {
      total += trip;
    }
    return total / effKmPerLitre();
  } // override to use effective km per litre
}

class Truck extends Vehicle {
  double _load = 0;
  Truck({
    required String name,
    required double kmPerLitre,
    required double tankCapacity,
  }) : super(name: name, kmPerLitre: kmPerLitre, tankCapacity: tankCapacity);

  double get load => _load;

  set load(double load) {
    if (load <= 0) {
      print("Invalid load");
    } else {
      _load = load;
    }
  }

  @override
  double fuelNeeeded(List<double> trips) {
    double total = 0;
    for (var trip in trips) {
      total += trip;
    }
    return total / kmPerLitre;
  } // override to use base km per litre
}

void main() {
  List<double> trips = [100, 200, 150];
  List<Vehicle> vehicles = [
    Car(name: "Car A", kmPerLitre: 15, tankCapacity: 40),
    Truck(name: "Truck A", kmPerLitre: 8, tankCapacity: 120),
    Car(name: "Car B", kmPerLitre: 12, tankCapacity: 50),
  ];

  for (var vehicle in vehicles) {
    double need = vehicle.fuelNeeeded(trips);
    print("${vehicle.name} needs ${need.toStringAsFixed(2)} litres of fuel.");
    bool can = vehicle.canComplete(trips);
    if (can) {
      print("${vehicle.name} can complete the trips.");
    } else {
      print("${vehicle.name} cannot complete the trips.");
    }
  }
}
