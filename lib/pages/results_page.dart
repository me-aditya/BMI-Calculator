import 'package:bmi_calculator/components/reuseable_card.dart';
import 'package:flutter/material.dart';

import '../bmi.dart';
import '../components/bottomButton.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  
  final BMI bmi;

  ResultsPage({@required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: cTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              color: cActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmi.getResult().toUpperCase(),
                    style: cResultsTextStyle,
                  ),
                  Text(
                    bmi.getBMI(),
                    style: cBMITextStyle,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      bmi.getInterpretation(),
                      textAlign: TextAlign.center,
                      style: cResultDescrTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () => Navigator.pop(context),
            buttonText: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
