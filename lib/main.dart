import 'package:fl_bmi_calculator/screens/result_page.dart';
import 'package:fl_bmi_calculator/screens/input_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
      routes: {
        ResultPage.routeName: (context) => ResultPage(),
        // '/result': (context) => ResultPage(),
      },
    );
  }
}
