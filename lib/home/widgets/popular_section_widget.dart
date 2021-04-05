import 'package:flutter/material.dart';
import 'package:netflix_clone_2020_2/home/widgets/movie_widget.dart';
import 'package:netflix_clone_2020_2/stores/movie_list_store.dart';
import 'package:provider/provider.dart';

class PopularSectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MovieListStore movieListStore = Provider.of<MovieListStore>(context);

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Populares na Netflix",
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
                itemCount: movieListStore.length,
                itemBuilder: (context, index) {
                  return MovieWidget(
                    movieListStore[index],
                    onTap: () {
                      Navigator.pushNamed(context, "/details",
                          arguments: movieListStore[index]);
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
