import 'package:flutter/material.dart';
import 'package:netflix_clone_2020_2/home/movie.dart';
import 'package:netflix_clone_2020_2/home/widgets/movie_widget.dart';

class MovieSectionWidget extends StatelessWidget {
  final String title;
  final List<Movie> movieList;

  const MovieSectionWidget({
    Key key,
    @required this.title,
    @required this.movieList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieList.length,
                itemBuilder: (context, index) {
                  return MovieWidget(
                    movieList[index],
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text("O filme clicado foi: ${movieList[index]}"),
                        ),
                      );
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
