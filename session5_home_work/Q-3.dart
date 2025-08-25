void main() {
  int price = 180;
  bool isStudent = true;
  int Finalprice;

  if (price >= 150 && isStudent) {
    Finalprice = (price - 15); // Apply 15 discount
    print(Finalprice);
  }
}
// 