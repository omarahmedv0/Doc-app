import 'package:advanced_course/core/theming/colors.dart';
import 'package:flutter/material.dart';

class ThemeManager {
 static ThemeData defaultTheme() {
    return ThemeData(
      primaryColor: ColorsManager.mainBlue,
      scaffoldBackgroundColor: Colors.white,
    );
  }
}
