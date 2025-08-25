void main() {
  List names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];

  Map<String, int> nameCount = {};
  for (String n in names) {
    nameCount[n] = (nameCount[n] ?? 0) + 1;
  }

  for (String n in nameCount.keys) {
    if (nameCount[n]! > 1) {
      print(n);
    }
  }
}
