class Car {
  String brand;
  int year;

  Car(this.brand, this.year);
}

void main() {
  Car car1 = Car('Nissan', 2020);
  print(car1);
  Car car2 = Car('Toyota', 2021);
  print(car2);
}
