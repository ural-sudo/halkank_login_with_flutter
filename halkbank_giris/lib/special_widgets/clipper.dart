


import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    var path = Path();
    path.lineTo(size.width-250,0);
    path.quadraticBezierTo(size.width-185, size.height-15, size.width-120, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);




    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

  
  
}