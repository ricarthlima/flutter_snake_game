import 'package:flutter/material.dart';
import 'package:flutter_snake_game/screens/game_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnakeGame',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        textTheme: GoogleFonts.vt323TextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: GameScreen(),
    );
  }
}
