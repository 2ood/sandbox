import 'package:flutter/material.dart';
import 'package:login_app/size.dart';
import 'package:validators/validators.dart';

class CustomTextFormField extends StatelessWidget {
  
  final String text;
  
  const CustomTextFormField({required this.text});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment : CrossAxisAlignment.start,
      children : [
        Text(text),
        SizedBox(height: small_gap),
        TextFormField(
          validator : (value) {
            if(value!.isEmpty) {
              return "Please enter some text";
            } else if (text=="email" && !isEmail(value)) {
              return  "invalid email type";
            } else if (text=="password" && !isAlphanumeric(value)) {
              return  "invalid email type";
            } else return null;
          },
//          (value) => value!.isEmpty?"Please enter some text": null,
          obscureText :text=="password"?true:false,
          decoration : InputDecoration(
            hintText : 'enter $text',
            enabledBorder : OutlineInputBorder(
                borderRadius : BorderRadius.circular(20),
            ),//OutlineInputBorder
            focusedBorder :  OutlineInputBorder(
                borderRadius : BorderRadius.circular(20),  
            ), //OutlineInputBorder
            errorBorder :  OutlineInputBorder(
                borderRadius : BorderRadius.circular(20),  
            ),
            focusedErrorBorder :  OutlineInputBorder(
                borderRadius : BorderRadius.circular(20),  
            ),
          ), //InputDecoration
        ),//TextFormField
      ],
    );
  }
}



