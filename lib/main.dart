import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonfolk/core/theme/theme_controller.dart';
import 'package:moonfolk/modules/home/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moonfolk Magic: The Gathering Counsel',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: ThemeController().color.blue,
          secondary: ThemeController().color.purple,
        ),
        fontFamily: GoogleFonts.kanit().fontFamily,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(
              Colors.white,
            ),
            foregroundColor: MaterialStatePropertyAll(
              ThemeController().color.purple,
            ),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
