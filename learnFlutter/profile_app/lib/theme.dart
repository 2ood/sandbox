import 'package:flutter/material.dart';

//primary clorlo  :  앱의 브랜드 색상
//secondary color (accent color ) :  앱의 버튼이나 ( 상호작용하는) eveent 들의 색상. 

ThemeData theme() {
  return ThemeData(
    primaryColor: Colors.white,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue),
    ),
  );
}
