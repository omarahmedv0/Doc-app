import 'package:advanced_course/core/di/dependency_injection.dart';
import 'package:advanced_course/core/routing/routes.dart';
import 'package:advanced_course/features/home/ui/home_screen.dart';
import 'package:advanced_course/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_course/features/login/ui/login_screen.dart';
import 'package:advanced_course/features/onboarding/onboarding_screen.dart';
import 'package:advanced_course/features/sign_up/logic/sign_up_cubit.dart';
import 'package:advanced_course/features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Map<String, Widget Function(BuildContext)> appRouter = {
  Routes.onBoarding: (c) => const OnboardingScreen(),
};

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(getIt.get()),
            child: const LoginScreen(),
          ),
        );
      case Routes.signup:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
    }
  }
}
