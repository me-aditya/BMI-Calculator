import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({this.color, this.cardChild, this.onPressed});
  final Widget cardChild;
  final Color color;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
