import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 53.0,
        height: 53.0,
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
