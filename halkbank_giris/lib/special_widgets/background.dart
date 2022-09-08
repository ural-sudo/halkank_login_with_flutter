
import 'package:flutter/material.dart';
class Background extends StatelessWidget {

  late Gradient gradient;
  late Widget child;


  Background({required this.gradient, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
      Container(
        decoration: BoxDecoration(
          gradient: gradient,
        ),
        child: child,
      ),
      ]
    );
  }
}