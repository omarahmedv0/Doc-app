import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PrefsKeys {
  static const String prefsKeyToken = "prefsKeyToken";
  static const String isUserLoggedIn = "isUserLoggedIn";
}

class AppPreferences {
  AppPreferences(this._sharedPreferences, this.secureStorage);
  final SharedPreferences _sharedPreferences;
  final FlutterSecureStorage secureStorage;

  String getToken()  {
    return _sharedPreferences.getString( PrefsKeys.prefsKeyToken)??"";
  }

  Future<void> saveToken(String token) async {
    await _sharedPreferences.setString( PrefsKeys.prefsKeyToken, token);
  }

  Future<void>setIsUserLoggedIn(bool value) async {
    await _sharedPreferences.setBool(PrefsKeys.isUserLoggedIn, value);
  }

  bool getIsUserLoggedIn() {
    return _sharedPreferences.getBool(PrefsKeys.isUserLoggedIn) ?? false;
  }
}
