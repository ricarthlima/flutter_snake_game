import 'package:flutter_snake_game/models/position.dart';

class Player {
  String id;
  String color;
  PositionGrid headPosition;
  List<PositionGrid> bodyPositions;

  Player({
    required this.id,
    required this.color,
    required this.headPosition,
    required this.bodyPositions,
  });
}
