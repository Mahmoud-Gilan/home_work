void main() {
  int? bonus;

  if (bonus != null && bonus > 50) {
    print('Big bonus');
  } else if (bonus != null && bonus <= 50) {
    print('Small bonus');
  } else if (bonus == null) {
    print('No bonus');
  }
}
