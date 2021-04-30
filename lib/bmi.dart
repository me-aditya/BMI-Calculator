import 'dart:math';

class BMI {
  final int height;
  final int weight;
  double _bmi = 0;

  BMI({this.height, this.weight});

  void calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    String result = '';

    if (_bmi >= 25) {
      result = 'Overweight';
    } else if (_bmi > 18.5) {
      result = 'Normal';
    } else {
      result = 'Underweight';
    }

    return result;
  }

  String getInterpretation() {
    String result = '';

    if (_bmi >= 25) {
      result =
          'You have a higher BMI expected for your height, weight, and age. Try to exercise more.';
    } else if (_bmi > 18.5) {
      result = 'You have a normal body weight. Good job!';
    } else {
      result =
          'You have a lower BMI expected tfor your height, weight, and age. You can eat a bit more.';
    }

    return result;
  }
}
