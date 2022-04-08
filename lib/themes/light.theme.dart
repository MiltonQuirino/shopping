import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xF026873);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);

ThemeData lightTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blueGrey,
      brightness: brightness,
    ).copyWith(
      secondary: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Colors.black87,
      ),
      bodyText1: TextStyle(
        color: Colors.black87,
      ),
      headline3: TextStyle(
        color: Colors.black54,
      ),
    ),
  );
}
