import 'package:flutter/material.dart';
import 'package:medihere_patient/src/provider/init_state_provider.dart';
import 'package:medihere_patient/src/ui/main_screen/main_screen_view.dart';
import 'package:medihere_patient/src/ui/register_screen/email_register_screen_view.dart';
import 'package:medihere_patient/src/ui/register_screen/password_register_screen_view.dart';
import 'package:medihere_patient/src/ui/start_screen/start_screen_view.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  void initState(){
    super.initState();
    final store = Provider.of<InitStateProvider>(context, listen: false);
    store.checkLogin();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: Provider.of<InitStateProvider>(context, listen: false).isLogin ? '/' : '/main',
        routes: {
        '/': (context) => StartScreenView(),
        '/emailRegister': (context) => EmailRegisterScreenView(),
        '/passwordRegister': (context) => PasswordRegisterScreenView(),
        '/main': (context) => MainScreenView(),
        }
    );
  }
}
