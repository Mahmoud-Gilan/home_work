void mian() {
  Map<String, String> countries = {
    'EG': 'Egypt',
    'SA': 'Saudi Arabia',
    'LY': 'Libya',
  };
  print(countries['EG']);

  countries['QA'] = 'Qatar';

  print(countries.length);

  if (!countries.containsKey('JO')) {
    print('Jordan Missing');
  }
}
