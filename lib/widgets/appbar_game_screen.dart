import 'package:flutter/material.dart';

AppBar getAppBarGameScreen({
  required BuildContext context,
  required int points,
  required int timeRemaining,
}) {
  return AppBar(
    toolbarHeight: 72,
    backgroundColor: Colors.black,
    elevation: 0,
    centerTitle: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Image.asset(
              'assets/apple.png',
              height: 32,
            ),
            Text(points.toString()),
          ],
        ),
        Column(
          children: const [
            Text(
              "SnakeGame",
              style: TextStyle(color: Colors.green, fontSize: 32),
            ),
            Text(
              "Flutter",
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/stopwatch.png',
              height: 32,
            ),
            Text(timeRemaining.toString()),
          ],
        ),
      ],
    ),
  );
}
