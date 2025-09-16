class Product {
  String _name = '';
  double _price = 0.0;

  String get name => _name;
  double get price => _price;

  set name(String value) {
    if (value.isEmpty) {
      print("Invalid name");
    } else {
      _name = value;
    }
  }

  set price(double value) {
    if (value < 0) {
      print("Invalid price");
    } else {
      _price = value;
    }
  }

  double get discountedPrice => _price * 0.9; // 10% discount
}

void main() {
  var product1 = Product();
  product1.name = 'Laptop';
  product1.price = 11000;
  print(
    'Product: ${product1.name}, Original Price: ${product1.price}, Discounted Price: ${product1.discountedPrice}',
  );
}
