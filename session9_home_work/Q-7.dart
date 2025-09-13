import 'dart:io';

int sumDigits(int n) {
  int s = 0;
  while (n > 0) {
    s += n % 10; // Add the last digit to sum
    n ~/= 10; // Remove the last digit
  }
  return s;
}

void main() {
  stdout.write('Enter a number: ');
  String? line = stdin.readLineSync();
  int? n = int.tryParse((line ?? '').trim());
  if (n == null) {
    print('Invalid input.');
    return;
  }
  n = n.abs(); // Work with absolute value
  while (n! >= 10) {
    n = sumDigits(n); // Sum the digits until single-digit result
  }
  print('Single-digit result: $n');
}
