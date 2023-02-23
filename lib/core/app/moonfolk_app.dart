import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../modules/home/page/home_page.dart';
import '../config/moonfolk_config.dart';
import '../theme/theme_controller.dart';

class MoonfolkApp extends StatelessWidget {
  const MoonfolkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MoonfolkConfig.appName,
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
