import 'package:flutter/material.dart';
import 'package:netflix_clone_2020_2/stores/movie_list_store.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SoonTabWidget extends StatelessWidget {
  void clickButton(BuildContext context) async {
    MovieListStore store = Provider.of<MovieListStore>(context, listen: false);

    // print(store[1].imdbId);

    final filmePreferido = store[1];

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setString("nomeFilme", filmePreferido.title);
    sharedPreferences.setString("anoFilme", filmePreferido.year);

    print("Dados salvos no shared preferences!");
  }

  void readData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    String nomeFilme = sharedPreferences.getString("nomeFilme");
    String anoFilme = sharedPreferences.getString("anoFilme");

    print("Meu filme da Marvel preferido é o $nomeFilme, do ano $anoFilme");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () => clickButton(context),
          child: Text("Grava dados"),
        ),
        TextButton(
          onPressed: () => readData(),
          child: Text("Lê dados"),
        ),
      ],
    ));
  }
}
