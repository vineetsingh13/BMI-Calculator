import 'dart:math';

class calculator {
  calculator({required this.height, required this.weight});
  final int height;
  final int weight;

  double _bmi = 0.0;

  String calculate_bmi() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. Try to eat more.';
    }
  }
}
