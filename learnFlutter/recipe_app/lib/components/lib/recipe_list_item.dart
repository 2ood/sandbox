import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;
  
  RecipeListItem(this.imageName, this.title);
  
  @override
  Widget build(BuildContext context) {
    return Padding (
      padding : const EdgeInsets.symmetric(vertical: 20),
      child : Column(
        children: [
          AspectRatio(
            aspectRatio : 2/1, 
            child : ClipRRect(
                borderRadius : BorderRadius.circular(30),
                child : Image.asset("images/$imageName.jpeg",
                        fit : BoxFit.cover,
                        ),
              ),
            ),
          SizedBox(height:10),
          Text(title, style: TextStyle(fontSize: 20),),
          Text("blablabalbalba$title? blablablabla"),
        ],
      ),
    );
  }
}

