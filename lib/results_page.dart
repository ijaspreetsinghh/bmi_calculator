import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import 'bottom_button.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.interpratation,
      @required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpratation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Your Result',
                style: kHeadingTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              reusableCardColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultsTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpratation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
