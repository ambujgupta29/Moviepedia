import 'package:Moviepedia/Screens/movie_screen.dart';
import 'package:Moviepedia/Widgets/movieselectiontile.dart';
import 'package:flutter/material.dart';

enum MovieSelectonAPI {
  top_rated,
  upcoming,
  latest,
  popular,
  now_playing,
}
Map<MovieSelectonAPI, String> paths = {
  MovieSelectonAPI.top_rated: 'top_rated',
  MovieSelectonAPI.upcoming: 'upcoming',
  MovieSelectonAPI.now_playing: 'now_playing',
  MovieSelectonAPI.popular: 'popular',
};

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MovieSelectionTile(
                title: "Top Rated",
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MovieScreen(
                              apipath: paths[MovieSelectonAPI.top_rated],
                            )),
                  );
                },
              ),
              MovieSelectionTile(
                title: "Popular",
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MovieScreen(
                              apipath: paths[MovieSelectonAPI.popular],
                            )),
                  );
                },
              ),
              MovieSelectionTile(
                title: "Upcoming",
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MovieScreen(
                              apipath: paths[MovieSelectonAPI.upcoming],
                            )),
                  );
                },
              ),
              MovieSelectionTile(
                title: "Now Playing",
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MovieScreen(
                              apipath: paths[MovieSelectonAPI.now_playing],
                            )),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
