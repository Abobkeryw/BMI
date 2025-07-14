import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../components/Buttom_Button.dart';
import '../components/ReusableCard.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    required this.interpretation,
    required this.bmiResult,
    required this.resulttext,
  });

  final String bmiResult;
  final String resulttext;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CALCULATOR RESULTS', style: kTitle)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Your Result', style: kYourResult),
          Expanded(
            child: ReusableCard(
              onPress: () {}, // Provide an onPress function here as well
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(resulttext.toUpperCase(), style: kOverWeight),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(child: Text(bmiResult, style: kResultNumber)),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kLabelTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ButtomBotton(
            buttontitle: "RE-CALCAULATOR",
            onTap: () {
              Navigator.pushReplacementNamed(context, '/input');
            },
          ),
        ],
      ),
    );
  }
}
