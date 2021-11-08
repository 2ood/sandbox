import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
    padding : EdgeInsets.all (20),
    child : Row(
        mainAxisAlignment :  MainAxisAlignment.spaceAround,
        children : [
         _buildInfo("50", "posts"),
         _buildLine(),
         _buildInfo("10","likes"),
         _buildLine(),
         _buildInfo("3","shares"),  
        ],
     ),
    );
  }
}

Widget _buildInfo(String count, String title) {
  return Column(
    children : [
      Text(count, style : TextStyle(fontSize:15),),
      SizedBox(height :2),
      Text(title, style : TextStyle(fontSize:15),),
    ],
  );
}


Widget _buildLine(){
  return Container(
    width : 2,
    color : Colors.blue,
    height: 60,
  );
}