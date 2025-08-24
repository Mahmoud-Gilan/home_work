void main() {
  double price = 220.0;
  bool isStudent = true;
  bool hasCoupon = false;
  double threshold = 160.0;
  double discount = 0.0;

  if (isStudent && hasCoupon) {
    discount = 0.25;
  } else if (isStudent) {
    discount = 0.20;
  } else if (price > threshold) {
    discount = 0.15;
  }

  print('Final Price: ${price * (1 - discount)}');
}
