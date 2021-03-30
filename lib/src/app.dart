import 'package:flutter/material.dart';
import 'package:medihere_patient/src/ui/start_screen/start_screen_view.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: StartScreenView(),
    );
  }
}