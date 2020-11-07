import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/splashScreen/topCurveSplash.dart';
import '../login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 1000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.forward();

    Timer(
        Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column(
        children: <Widget>[
          Container(
            child: FadeTransition(
              opacity: animation,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TopCurveSplash(),
                ],
              ),
            ),
          ),

          Text("WELCOME!!!",
          style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),

          // Container(
          //   //color: Colors.purple,
          //   alignment: Alignment.center,
          //   //margin: EdgeInsets.only(top: 5.0),
          //   //height: 400.0,
          //   child: Image.asset(
          //     'assets/cus.png',
          //     fit: BoxFit.cover,
          //     color: Colors.black,
          //   ),
          // ),


          Container(
            //color: Colors.cyan[500],
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 80.0),
            constraints: BoxConstraints.expand(height: 100),
            child: Text('\n \n E-Shopping App',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0, color: Colors.black, fontWeight: FontWeight.w500),),
          ),
        ],
      ),
    );
  }
}