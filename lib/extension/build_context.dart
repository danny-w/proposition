import 'package:flutter/material.dart';

import '../atlas.dart';

extension BuildContextExt on BuildContext {
  void goHome() =>
      Navigator.of(this).popUntil(ModalRoute.withName(HomeScreen.id));

  void pushRoute(String value) => Navigator.of(this).pushNamed(value);

  void pushReplacementRoute(String value) {
    Navigator.of(this).pop();
    Navigator.of(this).pushNamed(value);
  }
}
