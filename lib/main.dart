import 'package:flutter/material.dart';
import 'package:medihere_patient/src/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:medihere_patient/src/provider/google_sign_in.dart';
import 'package:medihere_patient/src/provider/init_state_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => InitStateProvider()),
            ChangeNotifierProvider(create: (context) => GoogleSignInProvider()),
          ],
      child: App())
  );
}
