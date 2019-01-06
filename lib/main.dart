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
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: ClipPath(
                          clipper: LoginContainerClipper(),
                          child: new Container(
                            color: Colors.black54,
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding:
                                  const EdgeInsets.only(top: 48.0),
                                  child: TextField(
                                    style: new TextStyle(
                                        color: Colors.white54),
                                    textAlign: TextAlign.center,
                                    keyboardType:
                                    TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintStyle: new TextStyle(
                                            color: Colors.white54,
                                            letterSpacing: 1.0),
                                        hintText: 'Enter your email'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18.0, right: 18.0),
                                  child: new Divider(
                                    height: 1.0,
                                    color: Colors.white54,
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(top: 24.0),
                                  child: new Row(

                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Image.asset(
                                        "assets/googlelogo.png",
                                        height: 24.0,
                                        width: 24.0,
                                      ),
                                      new Container(

                                        width: 30.0,
                                      ),
                                      new Image.asset(
                                        "assets/facebooklogo.png",
                                        height: 24.0,
                                        width: 24.0,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: new Container(
                          margin: new EdgeInsets.only(top: 24.0),
                          padding: new EdgeInsets.all(12.0),
                          height: 80.0,
                          width: 80.0,
                          decoration: new BoxDecoration(
                              color: Colors.black54,
                              borderRadius: new BorderRadius.all(
                                  new Radius.circular(40.0))),
                          child: new Image.asset(
                            "assets/profile.png",
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: new Container(
                          height: 48.0,
                          width: 120.0,
                          decoration: new BoxDecoration(
                              color: Colors.black87,
                              borderRadius: new BorderRadius.all(
                                  new Radius.circular(24.0))),
                          alignment: Alignment.center,
                          child: new Text(
                            "NEXT",
                            style: new TextStyle(
                                color: Colors.white54,
                                fontSize: 14.0,
                                letterSpacing: 1.0),
                          ),
                        ),
                      )

                    ],
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

class LoginContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.lineTo(0.0, size.height / 3);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
