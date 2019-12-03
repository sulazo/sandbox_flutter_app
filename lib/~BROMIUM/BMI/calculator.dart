//import 'package:flutter/material.dart';
import 'dart:math';

class Calc {
  final int height;
  final int weight;
  double bmi;
  // make this privat and out of this constructor _bmiResult only available in the function

  Calc({this.height, this.weight});

  String getResult() {
    bmi = weight / pow(height / 100, 2);
    print(bmi);
    return bmi.toStringAsFixed(2);
  }

  String getTranslation() {
    if (bmi >= 25) {
      //  return "You are ok";
    }
    return "You are ok boss";
  }

  String getStatus() {
    return "Normal";
  }
}
