class Product {
  String name;
  double price;

  Product({required this.name, this.price = 0});
}

void main() {
  var product1 = Product(name: 'Drone', price: 15000);
  var product2 = Product(name: 'Camera');

  print('Product 1: Name: ${product1.name}, Price: ${product1.price}');
  print('Product 2: Name: ${product2.name}, Price: ${product2.price}');
}
