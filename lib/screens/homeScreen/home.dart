import 'package:flutter/material.dart';
import 'package:flutter_app/screens/homeScreen/topBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: TopBar(),
          ),
          Text("Hello World")
        ],
      ),
    );
  }
}