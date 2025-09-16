import 'dart:io';

bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;
  var sSorted = (s.split('')..sort()).join();
  var tSorted = (t.split('')..sort()).join();
  return sSorted == tSorted;
}

void main() {
  stdout.write("Enter the S: ");
  String? s = stdin.readLineSync();
  stdout.write("Enter the T: ");
  String? t = stdin.readLineSync();
  if (s == null || t == null || s.isEmpty || t.isEmpty) {
    print("Invalid input.");
    return;
  }
  print(isAnagram(s, t));
}
