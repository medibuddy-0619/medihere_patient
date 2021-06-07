import 'package:flutter/material.dart';
import 'package:medihere_patient/src/ui/register_screen/email_register_screen_view.dart';
import 'package:medihere_patient/src/ui/register_screen/password_register_screen_view.dart';
import 'package:medihere_patient/src/ui/start_screen/start_screen_view.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => StartScreenView(),
        '/emailRegister':(context) => EmailRegisterScreenView(),
        '/passwordRegister':(context) => PasswordRegisterScreenView(),
      },
    );
  }
}