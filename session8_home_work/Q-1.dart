class Calculator {
  num num1;
  num num2;
  Calculator(this.num1, this.num2); // Constructor with two parameters

  void addNumbers() {
    print(num1 + num2);
  }
}

void main() {
  Calculator calculator = Calculator(34, 20); // Create a Calculator object
  calculator.addNumbers(); // Call the addNumbers method
}
