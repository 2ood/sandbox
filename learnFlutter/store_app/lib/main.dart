import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(children: [
                Text(
                  "Women",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ), //text
                Spacer(),
                Text(
                  "Kids",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ), //text
                Spacer(),
                Text(
                  "Shoes",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ), //text
                Spacer(),
                Text(
                  "Bags",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ), //text
              ] //children
                  ), //row
            ), //padding
            Expanded(
              flex: 1,
              child: Image.asset("bag.jpeg",
                  fit: BoxFit.cover), //image를assets 폴더에서 가져올 수 있다.
            ), //expanded
            SizedBox(
              height: 2,
            ), //sizedBox
            Expanded(
              flex: 2,
              child:
                  Image.asset("cloth.jpeg", fit: BoxFit.cover), //image
            ), //expanded
          ],
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
