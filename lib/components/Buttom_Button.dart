import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ButtomBotton extends StatelessWidget {
  ButtomBotton({required this.buttontitle, required this.onTap});

  final String buttontitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Pass the function reference, not a function call
      child: Container(
        child: Center(
          child: Text(
            buttontitle,
            style: kTitle,
          ),
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomColor,
      ),
    );
  }
}
