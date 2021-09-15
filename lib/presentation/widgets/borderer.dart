import 'package:flutter/material.dart';

class Borderer extends StatelessWidget {
  const Borderer({
    Key? key,
    required this.child,
    this.backgroundColor,
    this.borderColor = Colors.black,
    this.borderWidth = 1.5,
  }) : super(key: key);

  final Widget child;
  final Color? backgroundColor;
  final Color borderColor;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          width: borderWidth,
          color: borderColor,
        ),
      ),
      child: child,
    );
  }
}
