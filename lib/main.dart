import 'package:flutter/material.dart';
import 'views/homeView/homeView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      // initialRoute: '/zeroth',
      // routes: {
      //   '/zeroth': (context) => HomeView(),
      //   // '/first': (context) => SnakeGame(),
      //   // '/second': (context) => Minesweeper(),
      //   // '/third': (context) => Hangman(),
      //   // '/fourth': (context) => About(),
      //   // '/fifth': (context) => GameList(),
      // },
      home: HomeView(),
    );
  }
}
