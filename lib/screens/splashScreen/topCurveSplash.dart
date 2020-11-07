import 'package:flutter/material.dart';
import 'curvePainterSplash.dart';

class TopCurveSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        child: Image.asset(
          'assets/cus.png',
          width: 410,
          height: 250,
          //fit: BoxFit.cover,
          color: Colors.black,
        ),
        height: 400.0,
      ),
      painter: CurvePainterSplash(),
    );
  }
}