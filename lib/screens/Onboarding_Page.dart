import 'package:bmi_calculator_flutter_master/routes/routes_name.dart';
import 'package:flutter/material.dart';
import '../components/IconContent.dart';
import '../components/Buttom_Button.dart';
import '../constants/constants.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Map<String, dynamic>> _pages = [
    {
      'icon': Icons.monitor_weight,
      'text':
          'Welcome to BMI Calculator! Easily calculate your Body Mass Index.',
    },
    {
      'icon': Icons.fitness_center,
      'text': 'Track your health and fitness with accurate BMI results.',
    },
    {
      'icon': Icons.health_and_safety,
      'text': 'Get personalized tips based on your BMI and stay healthy!',
    },
  ];

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      Navigator.pushReplacementNamed(context, Routesname.input);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: _pages.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconContent(icon: _pages[index]['icon'], label: ''),
                        SizedBox(height: 30),
                        Text(
                          _pages[index]['text'],
                          style: kYourResult,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _pages.length,
                (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 4, vertical: 16),
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index ? kBottomColor : Colors.grey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 24.0,
              ),
              child: ButtomBotton(
                buttontitle:
                    _currentPage == _pages.length - 1 ? 'Get Started' : 'Next',
                onTap: _nextPage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
