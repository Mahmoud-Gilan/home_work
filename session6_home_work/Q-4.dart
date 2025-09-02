void main() {
  Map<String, double> students = {'Ahmed': 81.6, 'Samy': 90.5, 'Mahmoud': 74.0};

  String highest = '';
  double highestMark = 0;

  students.forEach((name, mark) {
    if (mark > highestMark) {
      highestMark = mark;
      highest = name;
    }
  });

  print('${highest} : ${highestMark}');
}
