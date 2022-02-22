import 'package:flutter/material.dart';

import 'color.dart';
import 'typograph.dart';

class SetThemeData {
  static ThemeData darkThemeData() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: SetColor.primary,
      backgroundColor: SetColor.primary,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: SetColor.light,
        backgroundColor: SetColor.primary,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: SetColor.primary,
      ),
      textTheme: SetTextTheme.lightTextTheme,
    );
  }

  static ThemeData lightThemeData() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: SetColor.light,
      backgroundColor: SetColor.light,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: SetColor.primary,
        backgroundColor: SetColor.light,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: SetColor.light,
      ),
      textTheme: SetTextTheme.darkTextTheme,
    );
  }
}
