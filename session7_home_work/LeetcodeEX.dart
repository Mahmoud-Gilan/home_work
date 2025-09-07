bool isPalindrome(String s) {
  final cleaned = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  return cleaned == cleaned.split('').reversed.join();
}

void main() {
  print(isPalindrome("A man, a plan, a canal: Panama")); // true
  print(isPalindrome("race a car")); // false
  print(isPalindrome(" ")); // true
}
