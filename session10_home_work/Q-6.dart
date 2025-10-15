bool isValid(String s) {
  final expect = {'(': ')', '[': ']', '{': '}'};
  final stack = <String>[];

  for (var char in s.split('')) {
    if (expect.containsKey(char)) {
      stack.add(expect[char]!);
    } else {
      if (stack.isEmpty || stack.removeLast != char) {
        return false; // Mismatched or unbalanced bracket
      }
    }
  }
  return stack.isEmpty; // All brackets matched
}

void main() {
  print(isValid("()")); // true
  print(isValid("()[]{}")); // true
  print(isValid("(]")); // false
  print(isValid("([)]")); // false
  print(isValid("{[]}")); // true
}
