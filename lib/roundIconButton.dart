import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function onPressed;
  final IconData iconData;

  RoundIconButton({this.onPressed, this.iconData});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      child: Icon(
        iconData,
        color: Colors.white,
      ),
      onPressed: onPressed,
    );
  }
}
