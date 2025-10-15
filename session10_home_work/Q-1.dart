class BankAccount {
  double _balance = 0;

  double? getBalance() => _balance;

  set balance(double? value) {
    if (value == null || value < 0) {
      print("Invalid balance");
    } else {
      _balance = value;
    }
  }
}

void main() {
  var account = BankAccount();

  account.balance = 1500; // Setting
  print(account.getBalance());

  account.balance = -150;
  print(account.getBalance()); // Output: 100.0 (unchanged)
}
