import 'package:flutter/material.dart';

import '../../config.dart';
import '../../extension/build_context.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({
    Key? key,
    required this.label,
    required this.routeName,
    this.popCurrentScreen = false,
    this.minHeight = 60,
    this.padding = const EdgeInsets.all(Config.paddingInner),
    this.fontSize = Config.fontSizeNormal,
    this.fontColor,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
  }) : super(key: key);

  final String label;
  final String routeName;
  final bool popCurrentScreen;
  final double minHeight;
  final EdgeInsets padding;
  final double? fontSize;
  final Color? fontColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => popCurrentScreen
          ? context.pushReplacementRoute(routeName)
          : context.pushRoute(routeName),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: minHeight),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius ?? minHeight * 0.35),
            ),
            border: borderColor == null
                ? null
                : Border.all(width: 1, color: borderColor!),
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(color: fontColor, fontSize: fontSize),
            textAlign: TextAlign.center,
            textScaleFactor: MediaQuery.of(context).textScaleFactor,
          ),
        ),
      ),
    );
  }
}
