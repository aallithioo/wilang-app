import 'package:flutter/material.dart';

import 'color.dart';
import 'typograph.dart';

class SetThemeData {
  static ThemeData darkThemeData() {
    return ThemeData(
      brightness: Brightness.dark,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: SetColor.white,
        backgroundColor: SetColor.black.withOpacity(0.6),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: SetColor.black.withOpacity(0.6),
      ),
      textTheme: SetTextTheme.lightTextTheme,
    );
  }

  static ThemeData lightThemeData() {
    return ThemeData(
      brightness: Brightness.light,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: SetColor.black,
        backgroundColor: SetColor.white.withOpacity(0.6),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: SetColor.white.withOpacity(0.6),
      ),
      textTheme: SetTextTheme.darkTextTheme,
    );
  }
}
