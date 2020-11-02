import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.weightValue, @required this.heightValue});
  final int heightValue;
  final int weightValue;
  double _bmi;
  String calculateBMI() {
    _bmi = weightValue / pow(heightValue / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi > 25) {
      return 'OverWeight';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'You have a higher than normal body weight. Try to do exercise more.';
    } else if (_bmi > 18) {
      return 'You have a normal body weight. Good job!!';
    } else {
      return 'ou have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
