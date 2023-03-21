import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_snake_game/models/position.dart';
import 'package:flutter_snake_game/widgets/grid_widget.dart';
import 'package:flutter_snake_game/widgets/joystick_widget.dart';

import '../models/player.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<Player> listPlayers = [
    Player(
      id: "A",
      color: "#261c1e",
      headPosition: PositionGrid(x: 5, y: 6),
      bodyPositions: [],
    ),
    Player(
      id: "B",
      color: "#66748f",
      headPosition: PositionGrid(x: 25, y: 26),
      bodyPositions: [],
    ),
    Player(
      id: "C",
      color: "#542e25",
      headPosition: PositionGrid(x: 10, y: 45),
      bodyPositions: [],
    ),
    Player(
      id: "D",
      color: "#e1483a",
      headPosition: PositionGrid(x: 45, y: 10),
      bodyPositions: [],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text("SnakeGame - Flutter")),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.all(8.0),
            child: GridWidget(
              listPlayer: listPlayers,
              width: 50,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: JoystickWidget(
              clickDown: clickDown,
              clickLeft: clickLeft,
              clickRight: clickRight,
              clickUp: clickUp,
            ),
          )
        ],
      ),
    );
  }

  clickUp() {
    _testOnlyMoveLocaly(0, -1);
    _testOnlyRandomMoveOthers();
  }

  clickDown() {
    _testOnlyMoveLocaly(0, 1);
    _testOnlyRandomMoveOthers();
  }

  clickLeft() {
    _testOnlyMoveLocaly(-1, 0);
    _testOnlyRandomMoveOthers();
  }

  clickRight() {
    _testOnlyMoveLocaly(1, 0);
    _testOnlyRandomMoveOthers();
  }

  _testOnlyMoveLocaly(int x, int y) {
    if (listPlayers[0].bodyPositions.length >= 2) {
      listPlayers[0].bodyPositions.removeAt(0);
    }

    listPlayers[0].bodyPositions.add(
          PositionGrid(
            x: listPlayers[0].headPosition.x,
            y: listPlayers[0].headPosition.y,
          ),
        );

    listPlayers[0].headPosition.x += x;
    listPlayers[0].headPosition.y += y;

    setState(() {});
  }

  _testOnlyRandomMoveOthers() {
    Random rnd = Random();

    for (int i = 0; i < listPlayers.length; i++) {
      if (i != 0) {
        int x = rnd.nextInt(3) - 1;
        int y = rnd.nextInt(3) - 1;
        bool moveHor = rnd.nextBool();

        if (moveHor) {
          y = 0;
        } else {
          x = 0;
        }

        if (listPlayers[i].bodyPositions.length >= 2) {
          listPlayers[i].bodyPositions.removeAt(0);
        }

        listPlayers[i].bodyPositions.add(
              PositionGrid(
                x: listPlayers[i].headPosition.x,
                y: listPlayers[i].headPosition.y,
              ),
            );

        listPlayers[i].headPosition.x += (x);
        listPlayers[i].headPosition.y += (y);
      }
    }
  }
}
