import 'package:flutter/material.dart';

Color bubbleGreen = const Color(0xFFC3FF37);
Color bubbleGreenDark = const Color(0xFF579A20);
Color bubbleRed = const Color(0xFFFF5757);

class BubbleTheme{
  ThemeData themeData = ThemeData(
    primaryColor: bubbleGreen,
    accentColor: bubbleRed,
    appBarTheme: AppBarTheme(
      color: bubbleGreen,
    ),
    backgroundColor: bubbleGreenDark,

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: bubbleRed,
      ),
    ),

    buttonTheme: ButtonThemeData(
      height: 45,
      minWidth: 150,
    ),

    navigationBarTheme: NavigationBarThemeData(
      height: 60,
      backgroundColor: Colors.cyan.shade200,
      indicatorColor: Colors.redAccent.shade200,
      labelTextStyle: MaterialStateProperty.all(
        TextStyle(fontSize: 14,fontWeight: FontWeight.w500)
      )
    )
  );
}
