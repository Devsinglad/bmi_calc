import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Widget? input;
  final Color color;
  Function()? ontap;

  Box({
    this.input,
    required this.color,
    this.ontap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.all(15),
        child: input,
      ),
    );
  }
}
