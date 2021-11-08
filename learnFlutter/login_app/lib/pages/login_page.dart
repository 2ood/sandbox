import 'package:flutter/material.dart';
import 'package:login_app/components/custom_form.dart';
import 'package:login_app/components/logo.dart';
import 'package:login_app/size.dart';

//TextFormField 위젯이 필요하다면
//Column 대신 ListView 를 쓰는 게 좋다. 

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding (
        padding :  EdgeInsets.all(16.0),
        child : ListView (
        children : [
          SizedBox(height :xlarge_gap),
          Logo("Login"),
          SizedBox(height :large_gap),
		  CustomForm(),
        ],
      ),
      ),
    );
  }
}


