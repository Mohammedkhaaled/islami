import 'package:flutter/material.dart';

class MyThemeData{
  static Color standerdColor = Color(0xFFB7935F);
  static Color blackcolor = Color(0xFF242424);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: standerdColor,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: blackcolor,
        fontWeight: FontWeight.w700
      ),
        headline2: TextStyle(
            fontSize: 25,
            color: blackcolor,
            fontWeight: FontWeight.w400
        )
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: blackcolor)
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackcolor,
      unselectedItemColor: Colors.white,
    )
  );

  static final ThemeData darkTheme = ThemeData(

  );
}