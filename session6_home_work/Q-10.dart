void main() {
  int n = 8;
  int result = sum(n);
  print(result);
}

int sum(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}
