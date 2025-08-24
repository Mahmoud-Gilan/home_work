void main() {
  List<String> names = [
    'Tharwat',
    'Sayed',
    'Ali',
    'Mahmoud',
    'Osama',
    'Ali',
    'Mahmoud',
  ];

  Set<String> uniqueNames = names.toSet();

  Map<String, int> counts = {};
  for (var n in names) {
    counts[n] = (counts[n] ?? 0) + 1;
  }
  print(uniqueNames);
  print(counts);
  print("Length List: ${names.length}, Length Set: ${uniqueNames.length}");

  if (uniqueNames.length < names.length) {
    print("found duplicates");
  }
}
