void main() {
  Map<String, String?> envVariables = {
    'App_name': 'KVM',
    'Enivironment': null,
    'bugs': 'false',
  };

  String Value1 = envVariables['App_name'] ?? 'No Name';
  String Value2 = envVariables['Enivironment'] ?? 'Production';
  String Value3 = envVariables['bugs'] ?? 'true';

  print(Value1.toUpperCase());
  print(Value2.toUpperCase());
  print(Value3.toUpperCase());

  bool prodReady = (Value2 == 'Production' && Value3 == 'false');
  print('Is Production Ready: $prodReady');
}
