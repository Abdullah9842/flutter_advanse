import 'package:flutter/material.dart';
import 'package:my_own/core/routing/routes.dart';
import 'package:my_own/features/onboarding/onboarding_screen.dart';
import 'package:my_own/ui/login_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (context) => const Placeholder());
    }
  }
}
