import 'package:flutter/material.dart';

import 'constants.dart';


class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonText;

  BottomButton({this.onTap, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: cBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: cBottomContainerHeight,
        child: Center(
          child: Text(
            buttonText,
            style: cLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}