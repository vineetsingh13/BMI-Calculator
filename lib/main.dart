import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const bmi());
}

class bmi extends StatelessWidget {
  const bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        textTheme: Typography.whiteRedwoodCity,
      ),
      home: InputPage(),
    );
  }
}
