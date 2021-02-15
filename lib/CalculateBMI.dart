import 'dart:math';

class CalculateBrain {
  final int height;
  final int weight;
  double _bmi = 0;

  CalculateBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "you have a higher than normal body weight. Try exercising more.";
    } else if (_bmi > 18.5) {
      return "You have a normal weight. Good Job!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  }
}
