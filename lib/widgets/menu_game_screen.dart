import 'package:flutter/material.dart';

class MenuGameScreen extends StatelessWidget {
  final bool valueLeftHanded;
  final Function onSwitchLeftHandedChange;
  const MenuGameScreen({
    super.key,
    required this.onSwitchLeftHandedChange,
    required this.valueLeftHanded,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "MENU",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          Row(
            children: [
              Switch(
                value: valueLeftHanded,
                onChanged: (value) {
                  onSwitchLeftHandedChange(value);
                },
              ),
              const Text(
                "Left Handed",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("EXIT"),
          ),
        ],
      ),
    );
  }
}
