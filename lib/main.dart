import 'package:flutter/material.dart';
import 'package:my_app/game_modes_page.dart';
import 'package:my_app/welcome_page.dart';
import 'package:my_app/home_page.dart';
import 'package:my_app/login_page.dart';
import 'package:my_app/game_page.dart';

void main() {
  runApp(ChessApp());
}

class ChessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chess App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelcomePage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/gameModes': (context) => GameModesPage(),
        '/game': (context) => GamePage(),
      },
    );
  }
}
