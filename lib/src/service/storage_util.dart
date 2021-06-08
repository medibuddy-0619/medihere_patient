import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class StorageUtil {
  final JsonEncoder _jsonEncoder = new JsonEncoder();
  final JsonDecoder _jsonDecoder = new JsonDecoder();

  static StorageUtil? _instance;
  static SharedPreferences? _prf;

  static const String _keyAccessToken = "accessToken";

  StorageUtil? get clear{
    _instance = null;
    return _instance;
  }

  static Future<StorageUtil?> getInstance() async {
    if(_instance == null) {
      _instance = StorageUtil();
    }

    if(_prf == null) {
      _prf = await SharedPreferences.getInstance();
    }

    return _instance;
  }

  dynamic _getFromDisk(String key) {
    var value = _prf!.getString(key);
    return value;
  }

  bool? _getBoolFromDisk(String key) {
    var value = _prf!.getBool(key);
    return value;
  }

  void saveStringToDisk(String key, String content) {
    _prf?.setString(key, content);
  }

  void saveDoubleToDisk(String key, double num) {
    _prf?.setDouble(key, num);
  }

  void saveIntToDisk(String key, int num) {
    _prf?.setInt(key, num);
  }

  void saveBooleanToDisk(String key, bool content) {
    _prf?.setBool(key, content);
  }

  void saveStringListToDisk(String key, List<String> contents) {
    _prf?.setStringList(key, contents);
  }

  void setAccessToken(String token){
    saveStringToDisk(_keyAccessToken, token);
  }

  String? get accessToken {
    var userToken = _getFromDisk(_keyAccessToken);
    if(userToken == null) {
      return null;
    }

    return userToken;
  }
}