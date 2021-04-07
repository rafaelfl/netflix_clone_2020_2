import 'package:flutter/material.dart';
import 'package:netflix_clone_2020_2/model/movie.dart';

class WatchAgainStore extends ChangeNotifier {
  List<Movie> _list = [];

  void addMovie(Movie movie) {
    _list.add(movie);
    notifyListeners();
  }

  int get length => _list.length;

  Movie operator [](int index) => _list[index];
}
