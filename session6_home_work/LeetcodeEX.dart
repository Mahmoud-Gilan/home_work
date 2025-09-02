void main() {
  List<int> list = [2, 5, 6, 8];
  int target = 10;

  for (int i = 0; i < list.length; i++) {
    for (int j = i + 1; j < list.length; j++) {
      if (list[i] + list[j] == target) {
        print('${list[i]}, ${list[j]}');
      }
    }
  }
  // Using Map
  Map<int, int> map = {};
  for (int n = 0; n < list.length; n++) {
    int complement = target - list[n];
    if (map.containsKey(complement)) {
      print('${list[n]}, ${complement}');
    } else {
      map[list[n]] = n;
    }
  }
}
