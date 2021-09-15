import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class Config {
  static Image image(String name,
          {double? width, double? height, BoxFit? fit}) =>
      Image.asset("assets/images/$name",
          width: width, height: height, fit: fit);

  static const paddingOuter = 20.0;
  static const paddingInner = 8.0;
  static const paddingRoundedButton = 24.0;

  // colors
  static const red = Color(0xffff531a);
  static const offWhite = Color(0xffd5d5d5);
  static const grey = Color(0xff707070);
  static const lightGrey = Color(0xffc0c0c0);

  static const fontSizeTitle = 40.0;
  static const fontSizeNormal = 22.0;
  static const fontSizeSmall = 16.0;
  static const fontSizeTiny = 13.5;
  static const fontSizeRoundedButton = 20.0;

  // durations
  static const landingScreenDuration = const Duration(seconds: 1);
  static const mythsIntroScreenDuration = const Duration(seconds: 1);
}
