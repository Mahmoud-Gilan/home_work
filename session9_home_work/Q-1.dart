class City {
  String? name;
  String? population;

  City({this.name, this.population});
}

main() {
  City city1 = City(name: "Curitiba", population: "4 million");
  City city2 = City(name: "São Paulo", population: "12 million");

  print("City: ${city1.name}, Population: ${city1.population}");
  print("City: ${city2.name}, Population: ${city2.population}");
}
