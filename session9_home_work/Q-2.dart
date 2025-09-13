class Temperature {
  double celsius;

  Temperature({required this.celsius});

  double toFahrenheit(double celsius) {
    return (celsius * 9 / 5) + 32;
  }
}

void main() {
  Temperature temp = Temperature(celsius: 37.0);
  print(temp.toFahrenheit(temp.celsius));
}
