void main() {
  int number = 6;
  int factory = 1;

  for (int i = 1; i <= number; i++) {
    factory = factory * i; // Calculate the factorial
  }

  print('Factorial of $number = $factory');
}
