import 'package:flutter/material.dart';

import 'constants.dart';

class IconWithText extends StatelessWidget {
  final IconData iconData;
  final String text;

  IconWithText({@required this.iconData, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: cLabelTextStyle,
        )
      ],
    );
  }
}