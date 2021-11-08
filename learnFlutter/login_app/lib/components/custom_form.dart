import 'package:flutter/material.dart';
import 'package:login_app/size.dart';
import 'package:login_app/components/custom_text_form_field.dart';

//TextFormField 위젯이 필요하다면
//Column 대신 ListView 를 쓰는 게 좋다. 

class CustomForm extends StatelessWidget {
  
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return  Form(
      key : _formKey,
      child :Column(
        children : [
          CustomTextFormField(text : "email"),
          SizedBox(height :medium_gap),
          CustomTextFormField(text : "password"),
          SizedBox(height :large_gap),
          TextButton(
            onPressed : (){
            if(_formKey.currentState!.validate()) {
             Navigator.pushNamed(context, "/home"); 
            }
          }, child : Text("Login")),
        ],
      ),
    );
  }
}


