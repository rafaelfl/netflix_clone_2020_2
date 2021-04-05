import 'package:flutter/material.dart';
import 'package:netflix_clone_2020_2/home/movie.dart';
import 'package:netflix_clone_2020_2/stores/watch_again_store.dart';
import 'package:provider/provider.dart';

class MovieDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Movie movie = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Detalhes do filme: ${movie.title}"),
            TextButton(
              onPressed: () {
                Provider.of<WatchAgainStore>(context, listen: false)
                    .addMovie(movie);
                print("Filme $movie assistido!");
              },
              child: Text("Assistir"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Voltar"),
            ),
          ],
        ),
      ),
    );
  }
}
