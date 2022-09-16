import 'package:flutter/material.dart';

import 'constants.dart';

class CalcButton extends StatelessWidget {
  final Function() onTap;
  final String buttonName;

  const CalcButton({
    Key? key,
    required this.onTap,
    required this.buttonName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: bottomContainHeight,
        child: Center(
          child: Text(
            buttonName,
            style: labelTextStyle,
          ),
        ),
      ),
    );
  }
}
