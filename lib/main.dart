import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Login Page",
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new ExactAssetImage('assets/book.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: new BackdropFilter(
              filter: new ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: new Container(
                decoration:
                    new BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
          new Column(
            children: <Widget>[
              new Flexible(flex: 6, child: new Container()),
              new Flexible(
                  flex: 5,
                  child: new Container(
                    color: Colors.black54,
                  )),
              new Flexible(
                  flex: 2,
                  child: new Container(
                    padding: new EdgeInsets.only(top: 36.0),
                    child: new Text(
                      "SIGN UP",
                      style:
                          new TextStyle(color: Colors.white54, fontSize: 16.0),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
