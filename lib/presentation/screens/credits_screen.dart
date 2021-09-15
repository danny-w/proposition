import 'package:flutter/material.dart';

import '../templates/screen.dart';

class CreditsScreen extends StatelessWidget {
  const CreditsScreen({Key? key}) : super(key: key);

  static const id = "Credits";

  @override
  Widget build(BuildContext context) {
    return Screen(body: Text(id));
  }
}
