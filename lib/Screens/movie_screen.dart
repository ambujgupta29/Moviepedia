import 'dart:convert';
import 'package:Moviepedia/Model/movie_model.dart';
import 'package:Moviepedia/Widgets/movieContainer.dart';
import 'package:Moviepedia/api/apikey.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class MovieScreen extends StatefulWidget {
  String apipath;
  MovieScreen({this.apipath});

  @override
  _MovieScreenState createState() => _MovieScreenState(apipath);
}

class _MovieScreenState extends State<MovieScreen> {
  String apipath;
  _MovieScreenState(this.apipath);

  String newurl() {
    print(apipath);
    return 'https://api.themoviedb.org/3/movie/$apipath?api_key=${APIkey().api_key}';
  }

  List<MovieModel> newsm = List<MovieModel>();

  Future<List<MovieModel>> getdata() async {
    final response = await http.get(newurl());
    var newsl = List<MovieModel>();
    if (response.statusCode == 200) {
      var news = json.decode(response.body);
      for (var newone in news['results']) {
        newsl.add(MovieModel.fromJson(newone));
      }
    }
    return newsl;
  }

  @override
  void initState() {
    getdata().then((value) {
      setState(() {
        newsm.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: ListView.builder(
          itemCount: newsm.length,
          itemBuilder: (BuildContext context, int index) {
            return MovieContainer(
              title: newsm[index].title,
              imageurl: newsm[index].imageurl,
              overview: newsm[index].content,
            );
          }),
    );
  }
}
