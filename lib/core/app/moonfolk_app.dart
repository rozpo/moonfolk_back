import 'package:flutter/material.dart';

import '../../modules/home/page/home_page.dart';
import '../config/moonfolk_config.dart';
import '../theme/moonfolk_theme.dart';

class MoonfolkApp extends StatelessWidget {
  const MoonfolkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MoonfolkConfig.appName,
      theme: MoonfolkTheme.lightTheme,
      darkTheme: MoonfolkTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
