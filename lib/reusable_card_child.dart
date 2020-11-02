import 'package:flutter/material.dart';

import 'constants.dart';

class ReusableCardChild extends StatelessWidget {
  ReusableCardChild(
      {@required this.cardChildIcon, @required this.cardChildText});
  final IconData cardChildIcon;
  final String cardChildText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardChildIcon,
          size: kCardIconSize,
        ),
        SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(
          cardChildText,
          style: kCardTextStyle,
        )
      ],
    );
  }
}
