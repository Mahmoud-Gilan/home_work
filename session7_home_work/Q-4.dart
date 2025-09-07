import 'dart:io';

void main() {
  List<int> numbers = [];

  // Ask user to enter 5 numbers
  for (int i = 1; i <= 5; i++) {
    print('Enter number $i:');
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  int largest = numbers.reduce(
    (a, b) => a > b ? a : b,
  ); // Find the largest number
  int smallest = numbers.reduce(
    (a, b) => a < b ? a : b,
  ); // Find the smallest number
  int difference = largest - smallest;

  print('Largest number: $largest');
  print('Smallest number: $smallest');
  print('Difference: $difference');
}
