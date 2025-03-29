import 'package:flutter/material.dart';

import '../Constants.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.label});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
