import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YugiohTheme {
//   static TextTheme lightTextTheme = TextTheme(
//   //Usage: typing card names
//     headline1: const TextStyle(
//       fontFamily: 'Matrix',
//       fontSize: 32.0,
//       fontWeight: FontWeight.bold,
//       color: Colors.black,
//       ),
// //Usage: typing monster Attributes, Types and Spell/Trap properties
//     bodySmall:const TextStyle(
//       fontFamily: 'Stone Serif',
//       fontSize: 16.0,
//       fontWeight: FontWeight.bold,
//       color: Colors.black,
//     ),
// //Usage: typing card effect texts
//     bodyText2: const TextStyle(
//       fontFamily: 'Matrix',
//       fontSize: 14.0,
//       fontWeight: FontWeight.w700,
//       color: Colors.black,
//     ),
// //Usage: Usage: typing Normal Monsters' card lores
//     // bodyText1: const TextStyle(
//     //   fontFamily: 'Stone Serif',
//     //   fontSize: 16.0,
//     //   fontWeight: FontWeight.w600,
//     //   color: Colors.black,
//     // ),
//      headline6: GoogleFonts.openSans(
//       fontSize: 20.0,
//       fontWeight: FontWeight.w600,
//       color: Colors.white,
//     ),
//   );

  static TextTheme lightTextTheme = TextTheme(

    //Tittle fist letter
    displayLarge: const TextStyle(
      fontFamily: 'Matrix Regular 1',
      fontSize: 32.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),

    //Tittle second + letter
    displayMedium: const TextStyle(
      fontFamily: 'Matrix Regular 1',
      
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),

    //type of monster
    bodyLarge: const TextStyle(
      fontFamily: 'Stone Serif Regular 1',
      fontSize: 10.0,
      fontWeight: FontWeight.w900,
      color: Colors.black,
    ),

    //card lore
    bodyMedium: const TextStyle(
      fontFamily: 'Stone Serif',
      fontStyle: FontStyle.italic,
      fontSize: 10.0,
      fontWeight: FontWeight.w900,
      color: Colors.black,
    ),
    bodySmall: const TextStyle(
      fontFamily: 'Stone Serif Regular 1',
      fontSize: 12.0,
      fontWeight: FontWeight.w900,
      color: Colors.black,
    ),
    titleLarge: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: const TextStyle(
      fontFamily: 'Matrix',
      fontSize: 32.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    displayMedium: const TextStyle(
      fontFamily: 'Matrix',
      fontSize: 22.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    displaySmall: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleLarge: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
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
