import 'package:Moviepedia/Widgets/Customclipper.dart';
import 'package:flutter/material.dart';

class MovieDetailScreen extends StatefulWidget {
  String title;
  String imageurl;
  String content;
  MovieDetailScreen({this.title, this.imageurl, this.content});
  @override
  _MovieDetailScreenState createState() =>
      _MovieDetailScreenState(title, imageurl, content);
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  String title;
  String imageurl;
  String content;
  _MovieDetailScreenState(this.title, this.imageurl, this.content);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              clipper: CurveClipper(),
              child: Image(
                height: 400.0,
                width: double.infinity,
                fit: BoxFit.cover,
                image:
                    NetworkImage('https://image.tmdb.org/t/p/w500${imageurl}'),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  title,
                  softWrap: true,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SourceSansPro',
                    fontSize: 30.0,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                content,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Montserrat',
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
