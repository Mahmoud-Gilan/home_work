void main() {
  Map<String, String> Countries = {
    'EG': 'Egypt',
    'SA': 'Saudi Arabia',
    'AE': 'UAE',
  };
  Countries['QA'] = 'Qatar'; // Add Qatar to the map
  print(Countries['EG']); // Output: Egypt
}
