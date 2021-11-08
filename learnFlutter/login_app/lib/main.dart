import 'package:flutter/material.dart';
import 'package:login_app/pages/login_page.dart';
import 'package:login_app/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme : ThemeData (
        textButtonTheme :  TextButtonThemeData (
          style : TextButton.styleFrom(
            backgroundColor :Colors.black,
            primary : Colors.white, //글자 색.//정체성
            shape : RoundedRectangleBorder(
              borderRadius :  BorderRadius.circular(30),
            ), //RoundedRectangleBorer
            minimumSize :  Size(400,60),
          ),//styleFrom
        ),
      ),
      initialRoute : "/login",
      routes: {
        "/login" : (context) => LoginPage(),
        "/home" : (context) => HomePage(),
      },
    );
  }
}

