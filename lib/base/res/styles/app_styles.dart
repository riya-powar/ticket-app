import 'package:flutter/material.dart';

Color primary= const Color(0xFF687daf);


class AppStyles {
  static Color primaryColor= primary;
  static Color textColor= const Color(0xFF6D6A6A);
  static Color bgColor= const Color(0xFFeeedf2);

  static TextStyle textStyle=TextStyle(
    fontSize: 16, 
    fontWeight: FontWeight.w500, 
    color: textColor
  );

  static TextStyle headLineStyle1=TextStyle(
    fontSize: 32, 
    fontWeight: FontWeight.w700, 
    color: textColor
  );

  static TextStyle headLineStyle2=TextStyle(
    fontSize: 28, 
    fontWeight: FontWeight.bold, 
    color: textColor
  );

  static TextStyle headLineStyle3=TextStyle(
    fontSize: 20, 
    fontWeight: FontWeight.w500, 
  );
}