import 'package:flutter/material.dart';
import 'package:netflix_clone_2020_2/home/movie.dart';
import 'package:netflix_clone_2020_2/netflix_app.dart';
import 'package:netflix_clone_2020_2/stores/movie_list_store.dart';
import 'package:netflix_clone_2020_2/stores/watch_again_store.dart';
import 'package:provider/provider.dart';

void main() {
  MovieListStore movieListStore = MovieListStore();

  movieListStore.addMovieList([
    Movie(
      "Breaking Bad",
      2005,
      "assets/images/breaking_bad.jpeg",
    ),
    Movie(
      "Senhor dos Anéis",
      2005,
      "assets/images/lord.jpg",
    ),
    Movie(
      "Black Mirror",
      2018,
      "assets/images/black.jpg",
    ),
    Movie(
      "Liga da Justiça - Snyder Cut",
      2021,
      "assets/images/snyder.jpg",
    ),
    Movie(
      "Stranger Things",
      2019,
      "assets/images/stranger.jpg",
    ),
    Movie(
      "Vingadores Guerra Infinita",
      2019,
      "assets/images/avengers.jpg",
    ),
    Movie(
      "Alice in Borderland",
      2020,
      "assets/images/alice.jpg",
    ),
    Movie(
      "De Volta para o Futuro II",
      1989,
      "assets/images/back2.jpg",
    ),
    Movie(
      "Brooklyn Nine-Nine",
      2017,
      "assets/images/brooklin.jpg",
    ),
    Movie(
      "Cosmos",
      2020,
      "assets/images/cosmos.jpg",
    ),
    Movie(
      "Dune",
      2020,
      "assets/images/dune.jpg",
    ),
    Movie(
      "Como vender drogas online (rápido)",
      2018,
      "assets/images/how.jpg",
    ),
    Movie(
      "Senhor dos Anéis - As Duas Torres",
      2008,
      "assets/images/lord.jpg",
    ),
  ]);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => movieListStore,
        ),
        ChangeNotifierProvider(
          create: (_) => WatchAgainStore(),
        ),
      ],
      child: NetflixApp(),
    ),
  );
}
