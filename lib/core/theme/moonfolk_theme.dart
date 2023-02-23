import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonfolk/core/theme/src/moonfolk_color_scheme.dart';

mixin MoonfolkTheme {
  static const Color grey = Color(0xFFC5C8D9);
  static const Color blue = Color(0xFF2E62A6);
  static const Color teal = Color(0xFF698EBF);
  static const Color green = Color(0xFF72A697);
  static const Color black = Color(0xFF0D0B09);

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    fontFamily: GoogleFonts.kanit().fontFamily,
    colorScheme: MoonfolkColorScheme.light,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    fontFamily: GoogleFonts.kanit().fontFamily,
    colorScheme: MoonfolkColorScheme.dark,
  );
}
