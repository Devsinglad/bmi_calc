import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    required this.height,
    required this.weight,
  });

  final int height;
  final int weight;
  double? _bmi;

// this function is able to calculate the weight and the height
  // the pow function is for calculating exponential functions
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'OverWeight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String interpretation() {
    if (_bmi! >= 25) {
      return 'Go To The GYM';
    } else if (_bmi! > 18.5) {
      return 'SEXY';
    } else {
      return 'Go AND EAT';
    }
  }
}
