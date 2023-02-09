import 'package:flutter/material.dart';

class YugiohTheme {
  static TextTheme cardTextTheme = const TextTheme(
    //Tittle fist letter
    displayLarge: TextStyle(
      fontFamily: 'Matrix Regular 1',
      fontStyle: FontStyle.normal,
      letterSpacing: 0.5,
      fontSize: 34.0,
      fontWeight: FontWeight.w900,
      color: Colors.black,
    ),
    //Tittle second + letter
    displayMedium: TextStyle(
        fontFamily: 'Matrix Regular 1',
        fontStyle: FontStyle.normal,
        fontSize: 24.0,
        fontWeight: FontWeight.w900,
        color: Colors.black),
    //type of monster
    bodyLarge: TextStyle(
        fontFamily: 'Stone Serif Regular 1',
        fontSize: 10.0,
        fontWeight: FontWeight.w900,
        color: Colors.black),
    //description
    bodyMedium: TextStyle(
      fontFamily: 'Stone Serif',
      fontSize: 12,
      fontWeight: FontWeight.w800,
      color: Color.fromARGB(167, 0, 0, 0),
    ),
    bodySmall: TextStyle(
        fontFamily: 'Stone Serif Regular 1',
      fontSize: 10.0,
      fontWeight: FontWeight.w900,
        color: Colors.black
    ),
    displaySmall: TextStyle(
      fontFamily: 'Stone Serif',
      fontSize: 12,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w800,
      color: Color.fromARGB(167, 0, 0, 0),
    ),
  );
  static TextTheme lightTextTheme = const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Matrix',
      fontSize: 32.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Matrix',
      fontSize: 22.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
  );

  static TextTheme darkTextTheme = const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Matrix',
      fontSize: 32.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Matrix',
      fontSize: 22.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          return Colors.black;
        }),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: lightTextTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: darkTextTheme,
    );
  }
}
