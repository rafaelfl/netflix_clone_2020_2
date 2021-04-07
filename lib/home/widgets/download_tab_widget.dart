import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_2020_2/model/movie.dart';
import 'package:netflix_clone_2020_2/stores/movie_list_store.dart';
import 'package:provider/provider.dart';

class DownloadTabWidget extends StatelessWidget {
  void downloadMovieList(BuildContext context) async {
    final MovieListStore movieListStore =
        Provider.of<MovieListStore>(context, listen: false);

    final dio = Dio();

    final Response response =
        await dio.get('https://www.omdbapi.com/?apikey=a6656c3d&s=avengers');

    final Map<String, dynamic> mapResponse =
        Map<String, dynamic>.from(response.data);

    if (mapResponse["Response"] != "True") {
      return;
    }

    (mapResponse["Search"] as List).forEach((m) {
      final Map<String, String> movieJson = Map<String, String>.from(m);

      Movie movie = Movie.fromJson(movieJson);

      print(movie);
      movieListStore.addMovie(movie);
    });

    // print(response.data.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => downloadMovieList(context),
            child: Text("Baixa filmes"),
          ),
        ],
      ),
    );
  }
}
