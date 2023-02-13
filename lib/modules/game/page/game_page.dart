import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GamePage extends StatelessWidget {
  final int players;

  const GamePage({
    required this.players,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RotatedBox(
        quarterTurns: players > 3 ? 3 : 0,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: RotatedBox(
                quarterTurns: 2,
                child: Row(
                  children: [
                    const PlayerWidget(),
                    if (players > 2) const PlayerWidget(),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.grey,
                child: FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const IconButton(
                        onPressed: null,
                        icon: Icon(
                          FontAwesomeIcons.diceD20,
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          FontAwesomeIcons.rotateLeft,
                        ),
                      ),
                      const IconButton(
                        onPressed: null,
                        icon: Icon(
                          FontAwesomeIcons.users,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  const PlayerWidget(),
                  if (players > 3) const PlayerWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({
    super.key,
  });

  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  int health = 20;
  Color color = Colors.primaries[Random().nextInt(Colors.primaries.length)];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        width: double.infinity,
        height: double.infinity,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Player'.toUpperCase()),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () => setState(() {
                              health--;
                            }),
                        icon: const Icon(FontAwesomeIcons.minus)),
                    Text(
                      health.toString(),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    IconButton(
                      onPressed: () => setState(() {
                        health++;
                      }),
                      icon: const Icon(FontAwesomeIcons.plus),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    IconButton(
                      onPressed: null,
                      icon: Icon(FontAwesomeIcons.droplet),
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(FontAwesomeIcons.shield),
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(FontAwesomeIcons.crown),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
