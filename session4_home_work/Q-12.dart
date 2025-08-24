void main() {
  Map<String, String> data = {'Mahmoud': 'Mahmoud', 'phone': 'null'};
  String? phone = data['phone'];
  if (phone == 'null') {
    print('No Phone number');
  }

  data['phone'] = '01020716717';
  String updatedPhone = data['phone'] ?? 'No Phone'; // Null-aware operator
  print(updatedPhone.length);
}
