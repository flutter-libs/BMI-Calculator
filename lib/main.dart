import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF0A0E21),
          secondary: Colors.purpleAccent,
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: Colors.white,),
          bodyMedium: TextStyle(color: Colors.white,),
          bodyLarge: TextStyle(color: Colors.white,),
        ),
      ),
      home: InputPage(),
    );
  }
}