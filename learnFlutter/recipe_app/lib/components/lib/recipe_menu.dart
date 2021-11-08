import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Padding (
      padding : const EdgeInsets.only(top : 20),
      child : SingleChildScrollView(
        //자기 자식에 scroll 방향을 (default 는 vertical 로 ) 달아줌.
        scrollDirection : Axis.horizontal,
        child : Row(
        children : [
          _buildMenuItem(Icons.food_bank, "All"),
          SizedBox(width : 25),
          _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
          SizedBox(width : 25),
          _buildMenuItem(Icons.fastfood, "Burger"),
          SizedBox(width : 25),
          _buildMenuItem(Icons.local_pizza, "Pizza"),
          //ImageIcon(image) 이런 방법도 있다. 
          ],
        ),
      ),
      );
  }
}

Container _buildMenuItem(IconData micon, String text){
  return Container(
        height : 60,
        width : 80,
        decoration : BoxDecoration(
          border : Border.all(
          color : Colors.black12,
          ),
          borderRadius : BorderRadius.circular(30),
        ),
        child : Column(
          mainAxisAlignment :  MainAxisAlignment.center,
          children : [
            Icon(micon, size : 30),
            SizedBox(height: 5),
            Text(text),
          ],
        ),
     );
}