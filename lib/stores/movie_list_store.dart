import 'package:flutter/material.dart';
import 'package:netflix_clone_2020_2/model/movie.dart';

class MovieListStore extends ChangeNotifier {
  List<Movie> _list = [];

  void addMovie(Movie movie) {
    _list.add(movie);
    notifyListeners();
  }

  void addMovieList(List<Movie> movieList) {
    _list.addAll(movieList);
    notifyListeners();
  }

  // void updateMovie(int index, Movie movie) {
  //   _list[index] = movie;
  //   notifyListeners();
  // }

  int get length => _list.length;

  Movie operator [](int index) => _list[index];
}
