// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

class CalculateBMI {
  int weight;
  double height;
  late double bmi;
  CalculateBMI({required this.weight, required this.height}) {
    bmi = weight / pow(height / 100, 2);
  }

  String? calulateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String? getResult() {
    if (bmi >= 35) {
      return 'Obese';
    } else if (bmi >= 26 && bmi <= 34) {
      return 'Overweight';
    } else if (bmi >= 18.5 && bmi <= 25) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String? getFeedback() {
    if (bmi >= 35) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi >= 26 && bmi <= 34) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi >= 18.5 && bmi <= 25) {
      return 'You have a normal body weight. Keep it up!';
    } else {
      return 'You have a lower than normal body weight. Try to eat and exercise more.';
    }
  }
}
