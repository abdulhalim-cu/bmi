import 'dart:math';

class Calculator {
  final int height;
  final int weight;
  double _bmi;

  Calculator({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Please try to exercise';
    } else if (_bmi >= 18.5) {
      return 'You have normal body weight. Keep it up. Good luck';
    } else {
      return 'Your body weight under the normal. please eat more';
    }
  }
}
