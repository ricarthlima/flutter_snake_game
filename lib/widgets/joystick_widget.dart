import 'package:flutter/material.dart';

class JoystickWidget extends StatelessWidget {
  final Function clickUp;
  final Function clickDown;
  final Function clickLeft;
  final Function clickRight;
  const JoystickWidget({
    super.key,
    required this.clickUp,
    required this.clickDown,
    required this.clickLeft,
    required this.clickRight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  clickUp();
                },
                child: const Icon(Icons.arrow_upward_rounded),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  clickLeft();
                },
                child: const Icon(Icons.arrow_back_rounded),
              ),
              FloatingActionButton(
                onPressed: () {
                  clickDown();
                },
                child: const Icon(Icons.arrow_downward_rounded),
              ),
              FloatingActionButton(
                onPressed: () {
                  clickRight();
                },
                child: const Icon(Icons.arrow_forward_rounded),
              ),
            ],
          )
        ],
      ),
    );
  }
}
