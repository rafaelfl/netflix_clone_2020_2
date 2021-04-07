import 'package:flutter/material.dart';
import 'package:netflix_clone_2020_2/model/movie.dart';

class MovieWidget extends StatelessWidget {
  final Movie movie;
  final void Function() onTap;

  const MovieWidget(this.movie, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(movie.bannerPath),
      ),
    );
  }
}
