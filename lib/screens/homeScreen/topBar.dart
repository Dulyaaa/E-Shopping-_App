import 'package:flutter/material.dart';
import 'curvePainter.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        width: 500.0,
        height: 300.0,
        child:Container(
          margin: EdgeInsets.only(top: 100.0, left: 20.0),
          child: Text('E - Shopping App',
          style: TextStyle(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.w600),),
        ),
      ),
      painter: CurvePainter(),
    );
  }
}