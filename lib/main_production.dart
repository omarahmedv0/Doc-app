import 'dart:developer';

import 'package:advanced_course/core/di/dependency_injection.dart';
import 'package:advanced_course/core/prefs/app_preferences.dart';
import 'package:advanced_course/core/routing/app_router.dart';
import 'package:advanced_course/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  ));
  await setupGetIt();

  await ScreenUtil.ensureScreenSize();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
