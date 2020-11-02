import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottom_button.dart';
import 'calculator_brain.dart';
import 'constants.dart';
import 'results_page.dart';
import 'reusable_card.dart';
import 'reusable_card_child.dart';
import 'round_icon_button.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int heightValue = 180;
  int weightValue = 60;
  int ageValue = 21;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    reusableCardColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: ReusableCardChild(
                      cardChildIcon: FontAwesomeIcons.mars,
                      cardChildText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    reusableCardColor: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: ReusableCardChild(
                      cardChildIcon: FontAwesomeIcons.venus,
                      cardChildText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                reusableCardColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kCardTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          heightValue.toString(),
                          style: kCardLargeTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kCardTextStyle,
                        )
                      ],
                    ),
                    Slider(
                        value: heightValue.toDouble(),
                        min: kMinHeight,
                        max: kMaxHeight,
                        onChanged: (double newHeight) {
                          setState(() {
                            heightValue = newHeight.round();
                          });
                        })
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    reusableCardColor: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kCardTextStyle,
                        ),
                        Text(
                          weightValue.toString(),
                          style: kCardLargeTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weightValue--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weightValue++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    reusableCardColor: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kCardTextStyle,
                        ),
                        Text(
                          ageValue.toString(),
                          style: kCardLargeTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  ageValue--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  ageValue++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            BottomButton(
              onTap: () {
                CalculatorBrain calc = CalculatorBrain(
                    weightValue: weightValue, heightValue: heightValue);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      bmiResult: calc.calculateBMI(),
                      interpratation: calc.getInterpretation(),
                      resultText: calc.getResults(),
                    ),
                  ),
                );
              },
              buttonTitle: 'CALCULATE',
            )
          ],
        ));
  }
}
