import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:medihere_patient/src/service/storage_util.dart';

class InitStateProvider extends ChangeNotifier {
  final StorageUtil _storageUtil = StorageUtil();

  bool _isLogin;
  bool get isLogin => _isLogin;

  void checkLogin() async{
    _storageUtil.accessToken == null ? _isLogin = false : _isLogin = true;
    notifyListeners();
  }
}
