void main() {
  int a = 45;
  int b = 20;
  int c = 30;

  bool ex1 = a < b && b < c; // false
  bool ex2 = a > b || b < c; // true
  bool ex3 = !(a > b); // false
  print(ex1);
  print(ex2);
  print(ex3);

  if (ex1 && ex2) {
    print("Rule passed");
  } else {
    print("Rule failed");
  }
}
