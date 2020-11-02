import 'package:flutter/material.dart';

import 'constants.dart';
import 'input_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          thumbColor: kBottomContainerColor,
          inactiveTrackColor: kTextStyleColor,
          overlayColor: kOverLaySliderColor,
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 13.0,
          ),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 25.0,
          ),
        ),
        primaryColor: Color(0XFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
    );
  }
}
