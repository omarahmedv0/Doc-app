import 'package:advanced_course/core/di/dependency_injection.dart';
import 'package:advanced_course/core/prefs/app_preferences.dart';
import 'package:advanced_course/core/routing/routes.dart';

AppPreferences appPreferences = getIt.get();
String initialRoute()  {
  if (appPreferences.getIsUserLoggedIn()) {
    return Routes.homeScreen;
  } else {
    return Routes.loginScreen;
  }
}
