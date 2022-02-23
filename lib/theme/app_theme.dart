import 'package:flutter/material.dart';

class AppTheme {

  static const Color primaryColor = Colors.orange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Primary color
    primaryColor: primaryColor,

    // AppBar theme
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 10,
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom( primary: primaryColor)
    )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Primary color
    primaryColor: Colors.green,

    // AppBar theme
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 10,
    ),

    scaffoldBackgroundColor: Colors.black
  );

}