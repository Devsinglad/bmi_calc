import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Widget? input;
  final Color color;

  const Box({
    this.input,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(15),
      child: input,
    );
  }
}
