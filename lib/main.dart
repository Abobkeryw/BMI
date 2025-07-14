import 'package:bmi_calculator_flutter_master/routes/routes_name.dart';
import 'package:flutter/material.dart';

import 'constants/constants.dart';
import 'routes/routes.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
          titleTextStyle: kTitle,
        ),
      ),
      initialRoute: Routesname.onboarding,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
