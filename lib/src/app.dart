import 'package:flutter/material.dart';
import 'package:medihere_patient/src/ui/register_screen/email_register_screen_view.dart';
import 'package:medihere_patient/src/ui/register_screen/password_register_screen_view.dart';
import 'package:medihere_patient/src/ui/start_screen/start_screen_view.dart';

import 'package:medihere_patient/src/provider/google_sign_in.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => StartScreenView(),
            '/emailRegister': (context) => EmailRegisterScreenView(),
            '/passwordRegister': (context) => PasswordRegisterScreenView(),
          },
        ),
      );
}
