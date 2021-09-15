import 'package:flutter/material.dart';

class AdaptiveText extends StatelessWidget {
  const AdaptiveText(
    this.text, {
    Key? key,
    this.style,
    this.color,
    this.fontSize,
    this.textAlign,
  }) : super(key: key);

  final String text;
  final TextStyle? style;
  final Color? color;
  final double? fontSize;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final child = Text(
      text,
      textAlign: textAlign,
      textScaleFactor: MediaQuery.of(context).textScaleFactor,
      style: style ??
          TextStyle(
            color: color,
            fontSize: fontSize,
          ),
    );
    return child;

    // return Platform.isIOS
    //     ? Material(type: MaterialType.transparency, child: child)
    //     : child;
  }
}
