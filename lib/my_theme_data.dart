import 'package:flutter/material.dart';

class MyThemeData {
  static final lightTheme = ThemeData(
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: Colors.transparent,
      // ignore: prefer_const_constructors
      textTheme: TextTheme(
        headline1: const TextStyle(
          color: Colors.white,
          fontSize: 22,
        ),
        headline2: TextStyle(color: Colors.black, fontSize: 21),
        headline4: TextStyle(color: Colors.black, fontSize: 22),
        headline5: TextStyle(color: Colors.black, fontSize: 28),
      ));
}
