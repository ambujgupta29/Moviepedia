import 'package:Moviepedia/Screens/Movie_detail_screen.dart';
import 'package:Moviepedia/Screens/movie_screen.dart';
import 'package:Moviepedia/Screens/selection_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moviepedia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF203341),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SelectionScreen(),
    );
  }
}
