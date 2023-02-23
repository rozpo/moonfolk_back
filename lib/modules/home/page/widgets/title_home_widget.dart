import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitleHomeWidget extends StatelessWidget {
  const TitleHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Moonfolk',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'the Soratami Counsel',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            SvgPicture.asset(
              'assets/logo.svg',
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
