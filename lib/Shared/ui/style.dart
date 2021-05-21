import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color.dart';

ThemeData darkTheme(BuildContext context) {
  return ThemeData(
      fontFamily: 'Secret',
      brightness: Brightness.dark,
      primaryColor: Colors.white,
      buttonColor: Color(0xFFE6AA58),
      accentColor: Color(0xFFE6AA58),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.w900,
          color: Color(0xFFE6AA58),
        ),
        headline2: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w200,
          color: Colors.white,
        ),
        headline3: TextStyle(
          fontSize: 60.0,
          fontWeight: FontWeight.w900,
          color: Color(0xFFE6AA68),
        ),
        headline4: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w900,
          color: Color(0xFFE6AA68),
        ),
        headline5: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          color: Color(0xFFE6AA58),
        ),
        headline6: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w300,
          color: Color(0xFFE6AA58),
        ),
      ));
}

TextStyle h6 = TextStyle(
    fontSize: 16,
    fontFamily: 'Titillium',
    fontWeight: FontWeight.w100,
    color: Colors.amber);

TextStyle h1 = TextStyle(
    fontSize: 40,
    fontFamily: 'Titillium',
    fontWeight: FontWeight.w800,
    color: Colors.black);

TextStyle h5 = TextStyle(
    fontSize: 18,
    fontFamily: 'Titillium',
    fontWeight: FontWeight.w200,
    color: Colors.white);
