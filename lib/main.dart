import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const LifeCounterWidget(),
    );
  }
}

class LifeCounterWidget extends StatelessWidget {
  const LifeCounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 8,
              child: Transform.rotate(
                angle: math.pi,
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: FittedBox(
                              child: Text(
                                'Player 1'.toUpperCase(),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: const Icon(FontAwesomeIcons.minus),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    '20',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                  IconButton(
                                    icon: const Icon(FontAwesomeIcons.plus),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: FittedBox(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(FontAwesomeIcons.droplet),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: const Icon(FontAwesomeIcons.shield),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: const Icon(FontAwesomeIcons.crown),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                color: Colors.grey,
                child: FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          iconSize: 48,
                          icon: const Icon(FontAwesomeIcons.diceD20),
                          onPressed: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          iconSize: 48,
                          icon: const Icon(FontAwesomeIcons.gear),
                          onPressed: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          iconSize: 48,
                          icon: const Icon(FontAwesomeIcons.users),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: FittedBox(
                            child: Text(
                              'Player 2'.toUpperCase(),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(FontAwesomeIcons.minus),
                                  onPressed: () {},
                                ),
                                Text(
                                  '20',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                                IconButton(
                                  icon: const Icon(FontAwesomeIcons.plus),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: FittedBox(
                            child: Row(
                              children: [
                                IconButton(
                                  icon: const Icon(FontAwesomeIcons.droplet),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: const Icon(FontAwesomeIcons.shield),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: const Icon(FontAwesomeIcons.crown),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
