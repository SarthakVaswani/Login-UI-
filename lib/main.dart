import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyFlutterApp {
  MyFlutterApp._();

  static const _kFontFam = 'MyFlutterApp';
  static const _kFontPkg = null;

  static const IconData google =
      IconData(0xf1a0, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData facebook_f =
      IconData(0xf39e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0XFFFC4B64),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Text(
                'Hello there, \nWelcome back',
                style: TextStyle(
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(4.0, 4.0),
                        blurRadius: 3.0,
                        color: Color(0XFF170A42),
                      ),
                      Shadow(
                        offset: Offset(4.0, 4.0),
                        blurRadius: 5.0,
                        color: Color(0XFF170A42),
                      ),
                    ],
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 25.0,
                        offset: Offset(0.0, 1.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0XFF170A42),
                  ),
                  height: 350,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 170, top: 20),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              color: Color(0XFFFC4B64),
                              fontWeight: FontWeight.bold,
                              fontSize: 55),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 30),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0XFFFC4B64),
                              ),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Username',
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 17),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0XFFFC4B64),
                              ),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  margin: EdgeInsets.only(bottom: 6.0),
                  height: 62,
                  width: 180,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 25.0,
                        offset: Offset(0.0, 1.0),
                      )
                    ],
                    color: Color(0XFF170A42),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 47, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Sign in with',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        RawMaterialButton(
                          splashColor: Color(0XFFFC4B64),
                          fillColor: Color(0XFF170A42),
                          onPressed: () {},
                          shape: CircleBorder(),
                          child: Icon(
                            MyFlutterApp.facebook_f,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        RawMaterialButton(
                          splashColor: Color(0XFFFC4B64),
                          fillColor: Color(0XFF170A42),
                          onPressed: () {},
                          shape: CircleBorder(),
                          child: Icon(
                            MyFlutterApp.google,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 70,
                ),
                Column(
                  children: [
                    Text(
                      'New?',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 6.0),
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 25.0,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            color: Color(0XFF170A42),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Register',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
