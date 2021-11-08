import 'package:flutter/material.dart';
import 'package:pages/recipe_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  	print("Hello World12");
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      theme : ThemeData(fontFamily: 'PatuaOne'),
      home : RecipePage(),
    );
  }
}