void main() {
  Map<String, dynamic> book = {
    'title': 'Dart Guide',
    'page': 120,
    'price': 19.99,
  };

  print(book['title']); // Output the title of the book

  book['price'] = 17.99; // Update the price of the book

  book['author'] = 'Gilan'; // Add an author to the book

  print(book); // Output the entire book map

  print(book.containsKey("pages")); // Check if the book has a 'pages' key
}
