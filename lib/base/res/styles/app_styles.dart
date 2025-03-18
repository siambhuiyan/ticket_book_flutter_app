import 'package:flutter/material.dart';

Color primaryColor = const Color(0xFF687daf);

class AppStyles {
  static Color primary = primaryColor;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color ticketBlue = const Color(0xff526799);
  static Color ticketOrange = const Color(0xfff37b67);
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: textColor,
  );
  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 33,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headLineStyle3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  static TextStyle headLineStyle4 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
}
