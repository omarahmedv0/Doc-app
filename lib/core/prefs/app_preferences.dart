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

  Future<String> getToken() async {
    return await secureStorage.read(key: PrefsKeys.prefsKeyToken) ?? "";
  }

  Future<void> saveToken(String token) async {
    await secureStorage.write(key: PrefsKeys.prefsKeyToken, value: token);
  }

  Future<void>setIsUserLoggedIn(bool value) async {
    await _sharedPreferences.setBool(PrefsKeys.isUserLoggedIn, value);
  }

  bool getIsUserLoggedIn() {
    return _sharedPreferences.getBool(PrefsKeys.isUserLoggedIn) ?? false;
  }
}
