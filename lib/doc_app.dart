import 'package:advanced_course/core/routing/app_router.dart';
import 'package:advanced_course/core/routing/routes.dart';
import 'package:advanced_course/core/theming/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  DocApp({super.key, required this.appRouter});
  AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBoarding,
        theme: ThemeManager.defaultTheme(),
      ),
    );
  }
}
