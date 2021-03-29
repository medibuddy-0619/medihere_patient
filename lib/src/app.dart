import 'package:flutter/material.dart';
import 'package:medihere_patient/src/ui/start_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: StartScreen(),
    );
  }
}