void main() {
  String path = "/products";

  switch (path) {
    case "/":
      print("Home Page");
      break;

    case "/products":
      List<Map<String, dynamic>> products = [
        {'name': 'Laptop', 'price': 15000},
        {'name': 'Phone', 'price': 8000},
        {'name': 'Tablet', 'price': 11000},
      ];
      print("Products");
      break;

    case "profile":
      Map<String, String> user = {'name': 'Mahmoud', 'email': 'null'};
      print(
        "user : ${user['name']}, email: ${user['email'] ?? "No Email"}",
      ); // null safty
      break;

    default:
      print("Not Found");
  }
}
