import 'package:advanced_course/core/theming/colors.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  static ThemeData defaultTheme() {
    return ThemeData(
      fontFamily: "Inter",
      primaryColor: ColorsManager.mainBlue,
      scaffoldBackgroundColor: Colors.white,
    );
  }
}
