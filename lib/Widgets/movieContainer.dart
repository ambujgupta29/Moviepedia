import 'package:Moviepedia/Screens/Movie_detail_screen.dart';
import 'package:flutter/material.dart';

class MovieContainer extends StatefulWidget {
  @override
  _MovieContainerState createState() => _MovieContainerState();
  String title;
  String imageurl;
  String overview;
// String content;
  MovieContainer({this.title, this.imageurl, this.overview});
}

class _MovieContainerState extends State<MovieContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MovieDetailScreen(
                    title: widget.title,
                    imageurl: widget.imageurl,
                    content: widget.overview,
                  )),
        );
      },
      child: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 2),
                    blurRadius: 6.0,
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  height: 300.0,
                  width: 400.0,
                  image: NetworkImage(
                    ('https://image.tmdb.org/t/p/w500${widget.imageurl}'),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 10.0,
              bottom: 10.0,
              right: 10.0,
              child: Container(
                padding: EdgeInsets.all(12.0),
                height: 300.0,
                width: 100.0,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (widget.title != null)
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
