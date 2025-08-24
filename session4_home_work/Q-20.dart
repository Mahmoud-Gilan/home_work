void main() {
  int age = 16;
  bool hasParent = true;
  String area = 'restricted';

  bool allowed = false;
  if (age < 18 && !hasParent) {
    allowed = false;
  } else if (age < 18 && hasParent) {
    allowed = true;
  } else if (age >= 18) {
    allowed = true;
  }

  if (!allowed) {
    print('Access Denied');
    return;
  }

  switch (area) {
    case 'general':
      print('general area');
      break;
    case 'restricted':
      print('restricted area');
      break;
    default:
      print('Unknown area');
  }
}
