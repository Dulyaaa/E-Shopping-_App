import 'package:flutter/material.dart';

import 'homeScreen/home.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SingleChildScrollView(
        child: Column(
            children: <Widget> [
              Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 55.0, right: 50.0),
                    height: 200.0,
                    child: Image.asset(
                      'assets/cus.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 250.0),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    height: 323.0,
                    child: Card(
                      // color: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: DefaultTabController(
                          length: 2,
                          child: Column(
                            children: <Widget>[
                              Container(
                                constraints: BoxConstraints.expand(height: 50),
                                child: TabBar(
                                    indicatorColor: Colors.purple,
                                    tabs: [
                                  Tab(child: Text(
                                      'Sign In',
                                      style: TextStyle(color: Colors.black, fontSize: 18.0))),
                                  Tab(child: Text(
                                      'Sign Up',
                                      style: TextStyle(color: Colors.black, fontSize: 18.0))),
                                ]),
                              ),
                              Expanded(
                                child: Container(
                                  child: TabBarView(children: [
                                    Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 15.0,
                                        ),
                                        TextField(
                                          style: TextStyle(
                                            fontSize: 17.0,
                                          ),
                                          decoration: InputDecoration(
                                            hintText: 'name@example.com',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        TextFormField(
                                          style: TextStyle(
                                            fontSize: 17.0,
                                          ),
                                          decoration: InputDecoration(
                                            hintText: 'Mobile Number',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            MaterialButton(
                                              child: Text("Sign In",
                                              style: TextStyle(fontSize: 16.0),),
                                              color: Colors.blue,
                                              textColor: Colors.white,
                                              minWidth: 260.0,
                                              padding: EdgeInsets.only(
                                                  left: 38, right: 38, top: 15, bottom: 15),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5)),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => HomeScreen()),
                                                );
                                              },
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 15.0,
                                        ),
                                        TextField(
                                          style: TextStyle(
                                            fontSize: 17.0,
                                          ),
                                          decoration: InputDecoration(
                                            hintText: 'name@example.com',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        TextFormField(
                                          style: TextStyle(
                                            fontSize: 17.0,
                                          ),
                                          decoration: InputDecoration(
                                            hintText: 'Mobile Number',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            MaterialButton(
                                              child: Text("Sign Up",
                                              style: TextStyle(fontSize: 16.0),),
                                              color: Colors.blue,
                                              textColor: Colors.white,
                                              minWidth: 260.0,
                                              padding: EdgeInsets.only(
                                                  left: 38, right: 38, top: 15, bottom: 15),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5)),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => HomeScreen()),
                                                );
                                              },
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ]),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.pink,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 600.0),
                    constraints: BoxConstraints.expand(height: 50),
                    child: Text('E-Shopping App',
                    style: TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}