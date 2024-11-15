import 'package:flutter/material.dart';

Color primary= const Color(0xFF687daf);


class AppStyles {
  static Color primaryColor= primary;
  static Color textColor= const Color(0xFF6D6A6A);
  static Color bgColor= const Color(0xFFeeedf2);
  static Color ticketBlue= const Color(0xFF526799);
  static Color ticketOrange= const Color(0xFFF37B67);
  static Color kakiColor= const Color(0xFFd2bdb6);
  static Color planeColor= const Color(0xFFBFC2DF);
  static Color findTicketColor= const Color(0xD91130CE);
  static Color circleColor= const Color(0xFF189999);
  static Color ticketColor = const Color(0xFFFFFFFF);

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

  static TextStyle headLineStyle4=TextStyle(
    fontSize: 15, 
    fontWeight: FontWeight.w500, 
  );
}