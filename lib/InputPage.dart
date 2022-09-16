import 'package:bmi_calc/calculator_brain.dart';
import 'package:bmi_calc/results.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'BoxWidget.dart';
import 'IconWidget.dart';
import 'calc_button.dart';
import 'constants.dart';

//an enum representing the genders
enum Gender { male, female }

enum selected { add, remove }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //best way to do all this by creating instance vars
  Gender? selectedGender;
  selected? item;
  int height = 180;
  int weight = 60;
  int age = 18;
//   Color maleCardColor = inactiveContainerColor;
//   Color femaleCardColor = inactiveContainerColor;
// //1= male 2=female
//   void updateColor(Gender selectedGender) {
//     // Here is a combination of ternary operators and  enum
//     selectedGender == Gender.male
//         ? maleCardColor = activeContainerColor
//         : maleCardColor = inactiveContainerColor;
//     selectedGender == Gender.female
//         ? femaleCardColor = activeContainerColor
//         : femaleCardColor = inactiveContainerColor;
//
//     //Second way to toggle colors
//     // if (selectedGender == Gender.male) {
//     //   maleCardColor = activeContainerColor;
//     // } else {
//     //   maleCardColor = inactiveContainerColor;
//     // }
//     // if (selectedGender == Gender.female) {
//     //   femaleCardColor = activeContainerColor;
//     // } else {
//     //   femaleCardColor = inactiveContainerColor;
//     // }
//
//     // one way to do toggle colors
//     // if (gender == 1) {
//     //   if (maleCardColor == inactiveContainerColor) {
//     //     maleCardColor = activeContainerColor;
//     //     femaleCardColor = inactiveContainerColor;
//     //   } else {
//     //     maleCardColor = inactiveContainerColor;
//     //   }
//     // }
//     // if (gender == 2) {
//     //   if (femaleCardColor == inactiveContainerColor) {
//     //     femaleCardColor = activeContainerColor;
//     //     maleCardColor = inactiveContainerColor;
//     //   } else {
//     //     femaleCardColor = inactiveContainerColor;
//     //   }
//     // }
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Box(
                    ontap: () {
                      setState(() {
                        //updateColor(Gender.male);
                        selectedGender = Gender.male;
                      });

                      print('male pressed');
                    },
                    color: selectedGender == Gender.male
                        ? activeContainerColor
                        : inactiveContainerColor,
                    input: IconWidget(
                      iconData: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: Box(
                    ontap: () {
                      setState(() {
                        // updateColor(Gender.female);
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? activeContainerColor
                        : inactiveContainerColor,
                    input: IconWidget(
                      iconData: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Box(
              color: activeContainerColor,
              input: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: mainTextStyle,
                      ),
                      Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbColor: bottomContainerColor,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30,
                      ),
                      overlayColor: bottomContainerColor.withOpacity(0.1),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                        print(newValue);
                      },
                      min: 120.0,
                      max: 220.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Box(
                    color: activeContainerColor,
                    input: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: labelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: mainTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              press: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              press: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Box(
                    color: activeContainerColor,
                    input: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: labelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: mainTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              press: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              press: () {
                                setState(() {
                                  age--;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CalcButton(
            onTap: () {
              //note this C/brain weight and height = local weight and height of the inputPage
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => Results(
                            bmiResults: calc.calculateBMI(),
                            bmiResultsText: calc.getResult(),
                            bmiInterpretation: calc.interpretation(),
                          )));
            },
            buttonName: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function()? press;
  const RoundIconButton({Key? key, required this.icon, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: press,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4C4F5E),
      splashColor: Colors.blue,
      child: Icon(icon),
    );
  }
}
