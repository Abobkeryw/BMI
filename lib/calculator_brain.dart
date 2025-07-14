class CalculatorBrain {
  CalculatorBrain(
      {required this.height, required this.weight, required this.gender});

  final int height;
  final int weight;
  final String gender; // 'male' or 'female'
  double _bmi = 0;

  String calculaterBMI() {
    _bmi = weight / ((height / 100) * (height / 100));
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (gender == 'male') {
      if (_bmi >= 25) {
        return 'Overweight';
      } else if (_bmi > 20) {
        return 'Normal';
      } else {
        return 'Underweight';
      }
    } else {
      // female
      if (_bmi >= 24) {
        return 'Overweight';
      } else if (_bmi > 19) {
        return 'Normal';
      } else {
        return 'Underweight';
      }
    }
  }

  String getinterpretation() {
    if (gender == 'male') {
      if (_bmi >= 25) {
        return 'As a male, you have a higher than normal body weight. Try to exercise more.';
      } else if (_bmi > 20) {
        return 'You have a normal body weight for a male. Good job!';
      } else {
        return 'You have a lower than normal body weight for a male. You can eat a bit more.';
      }
    } else {
      // female
      if (_bmi >= 24) {
        return 'As a female, you have a higher than normal body weight. Try to exercise more.';
      } else if (_bmi > 19) {
        return 'You have a normal body weight for a female. Good job!';
      } else {
        return 'You have a lower than normal body weight for a female. You can eat a bit more.';
      }
    }
  }
}
