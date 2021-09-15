import 'package:flutter/material.dart';

import '../templates/screen.dart';

class SourcesScreen extends StatelessWidget {
  const SourcesScreen({Key? key}) : super(key: key);

  static const id = "Sources";

  @override
  Widget build(BuildContext context) {
    return Screen(body: Text(id));
  }
}
