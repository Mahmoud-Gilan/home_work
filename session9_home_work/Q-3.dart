class Movie {
  String title;
  double rate;
  Movie(this.title, this.rate);
}

void main() {
  List<Movie> movies = [
    Movie("Spider man", 7.5),
    Movie("Interstellar", 8.6),
    Movie("The Dark Knight", 9.0),
    Movie("Avengers", 8.0),
  ];
  for (var movie in movies) {
    if (movie.rate > 7.0) print("Movie: ${movie.title}, Rate: ${movie.rate}");
  }
}
