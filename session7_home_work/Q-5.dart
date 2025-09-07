import 'dart:io';

void main() {
  // Ask user for a number
  print('Enter a number:');
  int num = int.parse(stdin.readLineSync()!);

  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    int result = num * i;
    print('$num x $i = $result');
    sum += result;
  }
  print('Sum of all results: $sum');
}
