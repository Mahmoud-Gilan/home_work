void main() {
  List<int> numbers = [3, 7, 2, 9, 12, 4, 6];

  for (int n in numbers) {
    if (n % 3 == 0) {
      print('$n is divisible by 3');
    }
  }
}
