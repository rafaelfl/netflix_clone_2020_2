class Movie {
  final String title;
  final int year;
  final String bannerPath;

  Movie(this.title, this.year, this.bannerPath);

  @override
  String toString() {
    return "$title ($year)";
  }
}
