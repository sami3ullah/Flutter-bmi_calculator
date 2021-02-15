import 'package:bmi_calculator/screens/ResultScreen.dart';
import 'package:flutter/material.dart';
import 'screens/InputPageState.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: Color(0xFF0A0E21)),
      home: InputPageState(),
    );
  }
}
