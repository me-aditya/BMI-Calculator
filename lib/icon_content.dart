import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.gender});

  final labelTextStyle = TextStyle(
    fontSize: 18.0,
    color: Color(0xFF8D8E98),
  );

  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(height: 15.0),
        Text(
          gender,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
