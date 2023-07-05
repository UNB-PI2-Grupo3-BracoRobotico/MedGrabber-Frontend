import 'package:design_system/spacing.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTheme {
  static ThemeData getThemeData() {
    return ThemeData(
      scaffoldBackgroundColor: kWhite,
      backgroundColor: kWhite,
      primaryColor: kPrimary,
      splashColor: kPrimary,
      useMaterial3: true,
      colorScheme: const ColorScheme.light().copyWith(
        primary: kPrimary,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: kPrimary,
        splashColor: kLightGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(kSpacingGiant),
          ),
        ),
      ),
      appBarTheme: const AppBarTheme(
        scrolledUnderElevation: 0,
        backgroundColor: kWhite,
        elevation: 0,
        centerTitle: false,
      ),
      textTheme: const TextTheme(
        bodySmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        bodyLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        headlineSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w300,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.normal,
        ),
        headlineLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
