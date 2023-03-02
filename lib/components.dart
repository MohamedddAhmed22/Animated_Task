import 'package:flutter/material.dart';


class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;
    var path = Path();
    path.lineTo(0, h / 1.25);
    path.cubicTo(w / 2 * 0.6, h * 0.6, w, h * 1.4, w * 1.2, h / 1.5);
    path.lineTo(w, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}