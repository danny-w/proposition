import 'package:flutter/material.dart';

extension WidgetExt on Widget {
  Widget pad([double value = 10]) => Padding(padding: EdgeInsets.all(value));
}
