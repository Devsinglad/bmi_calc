import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'BoxWidget.dart';
import 'IconWidget.dart';

const bottomContainHeight = 80.0;
const activeContainerColor = Color(0xff1D1E33);
const inactiveContainerColor = Color(0xff111328);
const bottomContainerColor = Color(0xffEB1555);

//an enum representing the genders
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveContainerColor;
  Color femaleCardColor = inactiveContainerColor;
//1= male 2=female
  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      maleCardColor = activeContainerColor;
    } else {
      maleCardColor = inactiveContainerColor;
    }
    if (selectedGender == Gender.female) {
      femaleCardColor = activeContainerColor;
    } else {
      femaleCardColor = inactiveContainerColor;
    }
    // if (gender == 1) {
    //   if (maleCardColor == inactiveContainerColor) {
    //     maleCardColor = activeContainerColor;
    //     femaleCardColor = inactiveContainerColor;
    //   } else {
    //     maleCardColor = inactiveContainerColor;
    //   }
    // }
    // if (gender == 2) {
    //   if (femaleCardColor == inactiveContainerColor) {
    //     femaleCardColor = activeContainerColor;
    //     maleCardColor = inactiveContainerColor;
    //   } else {
    //     femaleCardColor = inactiveContainerColor;
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });

                      print('male pressed');
                    },
                    child: Box(
                      color: maleCardColor,
                      input: IconWidget(
                        iconData: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: Box(
                      color: femaleCardColor,
                      input: IconWidget(
                        iconData: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Box(
              color: activeContainerColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Box(
                    color: activeContainerColor,
                  ),
                ),
                Expanded(child: Box(color: activeContainerColor)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            //width: double.infinity,
            height: bottomContainHeight,
          )
        ],
      ),
    );
  }
}
