import 'dart:io';

void main() {
  // Ask user for a number
  print('Enter a number:');
  String input = stdin.readLineSync()!;

  // Convert each character to int and store in a list
  List<int> digits = input.split('').map(int.parse).toList();

  // Calculate sum of digits
  int sum = digits.reduce((a, b) => a + b);

  // Find largest digit
  int largest = digits.reduce((a, b) => a > b ? a : b);

  print('Sum of digits: $sum');
  print('Largest digit: $largest');
}
