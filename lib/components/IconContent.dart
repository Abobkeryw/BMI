import 'package:flutter/material.dart';

import '../constants/constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon, required this.label});

  final String label;
  final dynamic icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0),
        const SizedBox(height: 15),
        Text(label, style: kLabelTextStyle, textAlign: TextAlign.center),
      ],
    );
  }
}
