import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData appTheme = ThemeData(
    appBarTheme: AppThemes.appBarTheme,
  );

  static const AppBarTheme appBarTheme = AppBarTheme(
    elevation: 0.0,
    // centerTitle: true,
    backgroundColor: Colors.green,
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 18.0,
    ),
  );
}
