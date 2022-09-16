import 'package:bmi_calc/BoxWidget.dart';
import 'package:bmi_calc/calc_button.dart';
import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final String bmiResults;
  final String bmiResultsText;
  final String bmiInterpretation;

  const Results(
      {Key? key,
      required this.bmiResults,
      required this.bmiResultsText,
      required this.bmiInterpretation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                'YOUR RESULT',
                style: mainTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Box(
              color: activeContainerColor,
              input: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResultsText.toUpperCase(),
                    style: resultsStyle,
                  ),
                  Text(
                    bmiResults,
                    style: mainTextStyle,
                  ),
                  Text(
                    bmiInterpretation.toUpperCase(),
                    style: labelTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          CalcButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonName: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
