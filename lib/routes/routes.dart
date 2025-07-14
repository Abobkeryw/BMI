import 'package:bmi_calculator_flutter_master/routes/routes_name.dart';
import 'package:flutter/material.dart';
import '../screens/Input_Page.dart';
import '../screens/Results_Page.dart';
import '../screens/Onboarding_Page.dart';
import '../screens/BMICalculatorPage.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routesname.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingPage());
      case Routesname.input:
        return MaterialPageRoute(builder: (_) => InputPage());
      case Routesname.results:
        final args = settings.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(
          builder: (_) => ResultsPage(
            bmiResult: args?['bmiResult'] ?? '',
            resulttext: args?['resulttext'] ?? '',
            interpretation: args?['interpretation'] ?? '',
          ),
        );
      case Routesname.history:
        return MaterialPageRoute(builder: (_) => const BMICalculatorPage());
      default:
        return MaterialPageRoute(builder: (_) => OnboardingPage());
    }
  }
}
