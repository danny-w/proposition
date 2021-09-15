import 'package:flutter/material.dart';

import '../../config.dart';
import 'adaptive_text.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.color,
    this.borderColor = Colors.black,
  }) : super(key: key);

  final String label;
  final void Function() onPressed;
  final Color? color;

  /// set to null to hide border
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(28),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: borderColor == null
              ? null
              : Border.all(width: 2, color: borderColor!),
        ),
        child: AdaptiveText(label, fontSize: 16),
      ),
    );
  }
}
