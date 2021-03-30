import 'package:flutter/material.dart';
import 'package:netflix_clone_2020_2/home/home_page.dart';

class NetflixApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Netflix Clone",
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.green,
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.purple)),
      ),
      home: HomePage(),
    );
  }
}
