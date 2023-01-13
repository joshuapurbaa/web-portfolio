import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core.dart';

class AppTheme {
  AppTheme._();

  static TextTheme lighTextTheme = TextTheme(
    displayLarge: GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w500,
    ),
    displayMedium: GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w500,
    ),
    displaySmall: GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w500,
    ),
    // Headline
    headlineLarge: GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w700,
      color: AppPalette.primaryGreen,
    ),
    headlineMedium: GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w700,
    ),
    titleLarge: GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w700,
    ),
    titleMedium: GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w600,
    ),
    titleSmall: GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w500,
    ),
    labelLarge: GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w500,
    ),
    // Headline
    labelMedium: GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
      color: AppPalette.primaryGreen,
    ),
    labelSmall: GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w600,
      letterSpacing: 0.10,
    ),
    bodyLarge: GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w600,
    ),
    bodySmall: GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w400,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(),
      textTheme: lighTextTheme,
      inputDecorationTheme: const InputDecorationTheme(),
      bottomSheetTheme: const BottomSheetThemeData(),
      textButtonTheme: const TextButtonThemeData(),
      elevatedButtonTheme: const ElevatedButtonThemeData(),
    );
  }
}
