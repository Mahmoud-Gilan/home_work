void main() {
  String text = 'EGP 12.50';

  double price = double.parse(text.substring(3)); // Extract the price
  print(price); // Output: 12.50

  // onther way
  String text2 = 'EGP 12.50';
  String numberOnly2 = text2.split(' ')[1];

  double price2 = double.parse(numberOnly2);
  print(price2);
}
