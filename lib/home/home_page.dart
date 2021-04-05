import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_clone_2020_2/home/movie.dart';
import 'package:netflix_clone_2020_2/home/widgets/action_button.dart';
import 'package:netflix_clone_2020_2/home/widgets/fading_image.dart';
import 'package:netflix_clone_2020_2/home/widgets/watch_again_widget.dart';
import 'package:netflix_clone_2020_2/home/widgets/popular_section_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        // Adicionei essa opção para fazer o corpo aparecer
        // abaixo da AppBar
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          brightness: Brightness.dark,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset("assets/images/netflix_logo.png")),
          actions: [
            ActionButton(icon: Icons.cast),
            ActionButton(icon: Icons.search),
            ActionButton(icon: Icons.person),
          ],
        ),
        body: TabBarView(
          children: [
            startTab(context),
            soonTab(context),
            downloadTab(context),
          ],
        ),
        bottomNavigationBar: TabBar(
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(icon: Icon(Icons.home), text: "Início"),
            Tab(icon: Icon(Icons.movie_filter_outlined), text: "Em breve"),
            Tab(icon: Icon(Icons.download_rounded), text: "Downloads"),
          ],
        ),
      ),
    );
  }

  Widget soonTab(BuildContext context) {
    return Center(child: Text("implementar a tela de \"Em breve\""));
  }

  Widget downloadTab(BuildContext context) {
    return Center(child: Text("implementar a tela de \"Downloads\""));
  }

  Widget startTab(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // o widget IntrinsicHeight define uma altura para os
          // seus filhos dentro de uma column (com base no seu
          // conteúdo)
          IntrinsicHeight(
            child: Stack(
              // a Stack se expande para ocupar todo o espaço
              // do container pai
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                FadingImage("assets/images/main_banner.jpg"),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: kToolbarHeight +
                            MediaQuery.of(context).padding.top +
                            10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Séries",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Filmes",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Minha lista",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          PopularSectionWidget(),
          WatchAgainWidget(),
        ],
      ),
    );
  }
}
