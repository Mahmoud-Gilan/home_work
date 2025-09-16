class Book {
  String _title = '';
  int _pages = 0;

  String get title => _title;

  set title(value) {
    if (value.isEmpty) {
      print("Invalid title");
    } else {
      _title = value;
    }
  }

  set pages(value) {
    if (value <= 0) {
      print("Invalid pages");
    } else {
      _pages = value;
    }
  }

  double get readingTime => _pages * 2.0; // 2 minutes per page
}

void main() {
  Book book = Book();
  book.title = "Dart Programming";
  book.pages = 150;
  print(
    'Title: ${book.title}, Estimated Reading Time: ${book.readingTime} minutes',
  );
}
