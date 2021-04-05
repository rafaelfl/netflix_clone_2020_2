import 'package:flutter/material.dart';
import 'package:netflix_clone_2020_2/home/movie.dart';
import 'package:netflix_clone_2020_2/home/widgets/movie_widget.dart';
import 'package:netflix_clone_2020_2/stores/watch_again_store.dart';
import 'package:provider/provider.dart';

class WatchAgainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Assitir novamente",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Consumer<WatchAgainStore>(
            builder: (context, watchAgainStore, child) {
              return Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: watchAgainStore.length,
                    itemBuilder: (context, index) {
                      return MovieWidget(
                        watchAgainStore[index],
                        onTap: () {
                          Navigator.pushNamed(context, "/details",
                              arguments: watchAgainStore[index]);
                        },
                      );
                    }),
              );
            },
          )
        ],
      ),
    );
  }
}
