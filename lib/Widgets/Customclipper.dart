import 'package:flutter/material.dart';

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 4 * size.height / 5);
    Offset centerpoint = Offset(size.width / 2, size.height);
    Offset endpoint = Offset(size.width, 4 * size.height / 5);
    path.quadraticBezierTo(
        centerpoint.dx, centerpoint.dy, endpoint.dx, endpoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
