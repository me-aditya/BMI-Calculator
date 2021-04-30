import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          accentColor: Color(0xFF1D1F33),
          sliderTheme: SliderTheme.of(context).copyWith(
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 15.0,
            ),
            overlayShape: RoundSliderOverlayShape(
              overlayRadius: 30.0,
            ),
            thumbColor: Color(0xFFEB1F55),
            overlayColor: Color(0x15EB1F55),
            activeTrackColor: Colors.white,
            inactiveTrackColor: Color(0xFF8D8E98),
          )),
    );
  }
}
