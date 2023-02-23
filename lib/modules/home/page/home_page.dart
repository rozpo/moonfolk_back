import 'package:flutter/material.dart';

import 'package:moonfolk/modules/home/page/widgets/menu_home_widget.dart';
import 'package:moonfolk/modules/home/page/widgets/title_home_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            Expanded(
              child: TitleHomeWidget(),
            ),
            Expanded(
              flex: 2,
              child: MenuHomeWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
