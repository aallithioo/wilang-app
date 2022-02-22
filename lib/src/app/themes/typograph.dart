import 'package:flutter/material.dart';

import 'font_size.dart';
import 'letter_spacing.dart';
import 'color.dart';
import 'font_weight.dart';
import 'typeface.dart';

class SetTextTheme {
// Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    headline1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.black,
      letterSpacing: SetLetterSpacing.negative15,
      fontSize: SetFontSize.huge,
      color: SetColor.primary,
    ),
    headline2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.heavy,
      letterSpacing: SetLetterSpacing.negative10,
      fontSize: SetFontSize.large,
      color: SetColor.primary,
    ),
    headline3: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.bold,
      letterSpacing: SetLetterSpacing.positive10,
      fontSize: SetFontSize.medium,
      color: SetColor.primary,
    ),
    headline4: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.semibold,
      letterSpacing: SetLetterSpacing.positive03,
      fontSize: SetFontSize.medium,
      color: SetColor.primary,
    ),
    headline5: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.medium,
      letterSpacing: SetLetterSpacing.positive10,
      fontSize: SetFontSize.medium / 1.5,
      color: SetColor.primary,
    ),
    headline6: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive02,
      fontSize: SetFontSize.small,
      color: SetColor.primary,
    ),
    subtitle1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive02,
      fontSize: SetFontSize.small,
      color: SetColor.primary,
    ),
    subtitle2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive01,
      fontSize: SetFontSize.small,
      color: SetColor.primary,
    ),
    bodyText1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive05,
      fontSize: SetFontSize.small,
      color: SetColor.primary,
    ),
    bodyText2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive03,
      fontSize: SetFontSize.small,
      color: SetColor.primary,
    ),
    button: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive13,
      fontSize: SetFontSize.small,
      color: SetColor.primary,
    ),
    caption: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive04,
      fontSize: SetFontSize.tiny,
      color: SetColor.primary,
    ),
    overline: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive15,
      fontSize: SetFontSize.tiny,
      color: SetColor.primary,
    ),
  );

// Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headline1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.black,
      letterSpacing: SetLetterSpacing.negative15,
      fontSize: SetFontSize.huge,
      color: SetColor.light,
    ),
    headline2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.heavy,
      letterSpacing: SetLetterSpacing.negative10,
      fontSize: SetFontSize.large,
      color: SetColor.light,
    ),
    headline3: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.bold,
      letterSpacing: SetLetterSpacing.positive10,
      fontSize: SetFontSize.medium,
      color: SetColor.light,
    ),
    headline4: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.semibold,
      letterSpacing: SetLetterSpacing.positive03,
      fontSize: SetFontSize.medium,
      color: SetColor.light,
    ),
    headline5: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.medium,
      letterSpacing: SetLetterSpacing.positive10,
      fontSize: SetFontSize.medium / 1.5,
      color: SetColor.light,
    ),
    headline6: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive02,
      fontSize: SetFontSize.small,
      color: SetColor.light,
    ),
    subtitle1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive02,
      fontSize: SetFontSize.small,
      color: SetColor.light,
    ),
    subtitle2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive01,
      fontSize: SetFontSize.small,
      color: SetColor.light,
    ),
    bodyText1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive05,
      fontSize: SetFontSize.small,
      color: SetColor.light,
    ),
    bodyText2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive03,
      fontSize: SetFontSize.small,
      color: SetColor.light,
    ),
    button: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive13,
      fontSize: SetFontSize.small,
      color: SetColor.light,
    ),
    caption: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive04,
      fontSize: SetFontSize.tiny,
      color: SetColor.light,
    ),
    overline: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive15,
      fontSize: SetFontSize.tiny,
      color: SetColor.light,
    ),
  );
}
