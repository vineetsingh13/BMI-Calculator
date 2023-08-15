import 'package:bmi/constants.dart';
import 'package:bmi/input_page.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmi_Result,
      required this.result_text,
      required this.result_interpretation});

  final String bmi_Result;
  final String result_text;
  final String result_interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Your Result',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: ReusableCard(
              colour: inactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result_text.toUpperCase(),
                    style: resultTextStyle,
                  ),
                  Text(
                    bmi_Result,
                    style: bmiTextStyle,
                  ),
                  Text(
                    result_interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Re-Calculate',
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
                Color(0xFFEB1555),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
