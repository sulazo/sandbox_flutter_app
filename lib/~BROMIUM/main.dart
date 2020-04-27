import 'package:flutter/material.dart';

import 'BMI/bmi calculator.dart';
//import 'bmi calculator.dart';

void main() => runApp(MaterialApp(
      /* routes: {
        '/resultScreen': (context) => Result(), // key:value{'k':value}
        // '/next':(context)=>Screen(),
      },*/
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
        scaffoldBackgroundColor: Color(0xff0a0e21),
      ),
      home: BMI(),
    ));
