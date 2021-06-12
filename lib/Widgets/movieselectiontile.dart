import 'package:flutter/material.dart';

class MovieSelectionTile extends StatefulWidget {
  @override
  _MovieSelectionTileState createState() => _MovieSelectionTileState();
  String title;
  Function onpressed;
// String content;
  MovieSelectionTile({this.title, this.onpressed});
}

class _MovieSelectionTileState extends State<MovieSelectionTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onpressed,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        width: double.infinity,
        height: 120.0,
        decoration: BoxDecoration(
          color: Colors.red[800],
          borderRadius: BorderRadius.circular(20.0),
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            widget.title,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Montserrat',
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
