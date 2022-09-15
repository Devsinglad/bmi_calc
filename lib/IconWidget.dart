import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  color: Colors.grey,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

class IconWidget extends StatelessWidget {
  final IconData iconData;
  final String label;
  const IconWidget({
    Key? key,
    required this.iconData,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
