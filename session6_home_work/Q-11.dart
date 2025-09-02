void main() {
  String product = 'Laptop';
  int? discount = null;
  checkDiscount(product, discount);
}

void checkDiscount(String product, int? discount) {
  if (discount != null) {
    print('Discount available for ${product}');
  } else {
    print('No discount available for ${product}');
  }
}
