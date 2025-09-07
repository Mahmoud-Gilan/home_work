import 'dart:io';

void main() {
  print('Enter a number n:');
  int n = int.parse(stdin.readLineSync()!);

  int count = 0;
  print('Odd numbers between 1 and $n:');
  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      print(i);
      count++;
    }
  }
  print('Total odd numbers found: $count');
}
