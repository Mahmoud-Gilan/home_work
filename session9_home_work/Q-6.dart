class NumberCheck {
  int value;
  NumberCheck(this.value);

  bool isEven() {
    return value % 2 == 0;
  }
}

void main() {
  NumberCheck number = NumberCheck(42);
  if (number.isEven()) {
    print("${number.value} is even");
  } else {
    print("${number.value} is odd");
  }
}
