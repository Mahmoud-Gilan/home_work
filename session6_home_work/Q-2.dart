void main() {
  List<int> list = [5, 10, 15, 20, 25];
  int sum = 0;

  for (int i = 0; i < list.length; i++) {
    sum += list[i];
  }
  print(sum);
}
