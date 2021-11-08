import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//TextFormField 위젯이 필요하다면
//Column 대신 ListView 를 쓰는 게 좋다. 

class Logo extends StatelessWidget {
  
  final String title;
  
  const Logo(this.title);
  
  @override
  Widget build(BuildContext context) {
    return Column ( //Column 은 기본적으로 중앙정렬, Row 는 왼쪽정렬
            children : [
              SvgPicture.asset("assets/logo.svg", height: 70, width : 70, color : Colors.black),
              Text(title, style : TextStyle(
              fontSize : 40, fontWeight : FontWeight.bold,  
              ),
                  ),
            ], 
    );
  }
}

