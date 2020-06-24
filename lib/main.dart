import 'package:flutter/material.dart';

import './login_screen.dart';

void main() {
  runApp(MyNeoSTOREApp());
}

class MyNeoSTOREApp extends StatelessWidget {
  final yellowColor = const Color(0xfffe3f3f);
  final redColor = const Color(0xFFe91c1a);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NeoSTORE App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: yellowColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                  fontFamily: 'Gotham',
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                  color: Colors.white),
              headline1: TextStyle(
                fontFamily: 'Gotham',
                fontWeight: FontWeight.w300,
                fontSize: 26,
                color: redColor,
              ),
              headline2: TextStyle(
                fontFamily: 'Gotham',
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
      ),
      home: LoginScreen(),
    );
  }
}
