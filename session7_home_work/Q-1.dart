import 'dart:io';

void main() {
  // Ask user for three numbers
  print('Enter first number:');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Enter second number:');
  int num2 = int.parse(stdin.readLineSync()!);

  print('Enter third number:');
  int num3 = int.parse(stdin.readLineSync()!);

  // Calculate sum and average
  int sum = num1 + num2 + num3;
  double average = sum / 3;

  print('Sum: $sum');
  print('Average: $average');

  // Compare average with 50
  if (average > 50) {
    print('Average is greater than 50.');
  } else {
    print('Average is not greater than 50.');
  }
}
