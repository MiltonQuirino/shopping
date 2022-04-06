import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF00C569);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);

ThemeData lightTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
      brightness: brightness,
    ).copyWith(
      secondary: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Colors.black87,
      ),
    ),
  );
}
