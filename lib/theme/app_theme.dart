import 'package:flutter/material.dart';

class AppTheme {

  static const Color primaryColor = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Primary color
    primaryColor: primaryColor,

    // AppBar theme
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 10,
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