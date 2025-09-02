void main() {
  larger(35, 55);
}

void larger(int a, int b) {
  if (a > b) {
    print(a);
  } else if (b > a) {
    print(b);
  } else {
    print('Equal');
  }
}
