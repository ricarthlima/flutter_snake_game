import 'package:flutter/material.dart';
import 'package:flutter_snake_game/helpers/get_color_by_hex.dart';
import 'package:flutter_snake_game/models/player.dart';
import 'package:flutter_snake_game/models/position.dart';

class GridWidget extends StatelessWidget {
  final List<Player> listPlayer;
  final int width;
  const GridWidget({
    super.key,
    required this.listPlayer,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: width,
      padding: EdgeInsets.zero,
      crossAxisSpacing: 0,
      mainAxisSpacing: 0,
      children: List.generate(width * width, (index) {
        Color pointColor = Colors.grey;
        Color borderColor = Colors.grey;

        for (Player player in listPlayer) {
          for (PositionGrid body in player.bodyPositions) {
            if (body.toIndexInListGridByWidth(gridWidth: width) == index) {
              pointColor = getColorByHex(player.color);
            }
          }

          if (player.headPosition.toIndexInListGridByWidth(gridWidth: width) ==
              index) {
            pointColor = getColorByHex(player.color);
            borderColor = Colors.red;
          }
        }

        return Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            color: pointColor,
            border: Border.all(
                color: borderColor,
                width: (borderColor == Colors.grey) ? 0 : 1),
          ),
        );
      }),
    );
  }
}
