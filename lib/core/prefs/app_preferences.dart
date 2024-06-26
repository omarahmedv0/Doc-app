import 'package:shared_preferences/shared_preferences.dart';

abstract class PrefsKeys {
  static const String prefsKeyToken = "prefsKeyToken";
}

class AppPreferences {
  AppPreferences(this._sharedPreferences);
  final SharedPreferences _sharedPreferences;

  String getToken() {
    return _sharedPreferences.getString(PrefsKeys.prefsKeyToken) ?? "";
  }

  Future<void> saveToken(String token) async {
    await _sharedPreferences.setString(PrefsKeys.prefsKeyToken, token);
  }
}
