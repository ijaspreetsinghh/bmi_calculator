import 'package:flutter/material.dart';

import 'constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.reusableCardColor, this.cardChild, this.onPress});
  final Color reusableCardColor;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(kCardChildMargin),
        decoration: BoxDecoration(
          color: reusableCardColor,
          borderRadius: BorderRadius.circular(kCardChildBorderRadius),
        ),
      ),
    );
  }
}
