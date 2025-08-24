void main() {
  double price = 101.999;
  String currency = 'EGP';

  String priceString = price.toString(); // Convert to string

  String tag = '$priceString $currency';
  print(tag);

  String paddedCurrency = currency.padLeft(
    8,
  ); // Pad with spaces to the left to make it 8 characters long

  String tagpadded = '$priceString $paddedCurrency';
  print(tagpadded);

  print("${tagpadded.length}, ${tag.length}");
}
