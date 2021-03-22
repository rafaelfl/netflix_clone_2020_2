import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_clone_2020_2/home/fading_image.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // Adicionei essa opção para fazer o corpo aparecer
      // abaixo da AppBar
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        brightness: Brightness.dark,
        bottomOpacity: 0.0,
        leading: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset("assets/images/netflix_logo.png")),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.cast, size: 24),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.search, size: 24),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.person, size: 24),
          ),
        ],
      ),
      body: Container(
        // Classe para fazer o "fading" na imagem
        child: FadingImage("assets/images/main_banner.jpg"),
      ),
    );
  }
}
