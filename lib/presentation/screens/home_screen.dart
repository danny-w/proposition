import 'dart:math';

import 'package:flutter/material.dart';

import '../../atlas.dart';
import '../../config.dart';
import '../templates/screen.dart';
import '../widgets/option_button.dart';
import '../widgets/rounded_button.dart';
import 'choose_to_learn_screen.dart';
import '../../extension/build_context.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const id = "Home";

  @override
  Widget build(BuildContext context) {
    final maxWidth =
        MediaQuery.of(context).size.height * 0.2 - Config.paddingOuter * 2;
    final double height = min(80, maxWidth);
    final double fontSize = max(24, height * 0.3);

    return Screen(
      title: id,
      backgroundColor: Config.grey,
      bottomBarItems: [
        RoundedButton(
          label: 'SOURCES',
          color: Colors.grey.shade400,
          onPressed: () => context.pushRoute(SourcesScreen.id),
        ),
        RoundedButton(
          label: 'CREDITS',
          color: Colors.grey.shade400,
          onPressed: () => context.pushRoute(CreditsScreen.id),
        ),
      ],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildOptionButton(
            label: "I act on good evidence. Prove it!",
            routeName: ChooseToLearnScreen.id,
            minHeight: height,
            fontSize: fontSize,
          ),
          _buildOptionButton(
            label: "Already made up my mind: STEM all the way.",
            routeName: StemAllTheWayScreen.id,
            minHeight: height,
            fontSize: fontSize,
          ),
          _buildOptionButton(
            label: "Humanities, baby!",
            // TODO fix routeName
            routeName: ChooseToLearnScreen.id,
            minHeight: height,
            fontSize: fontSize,
          ),
          _buildOptionButton(
            label: "WAIT. I know what STEM is, but humanities?",
            // TODO fix routeName
            routeName: ChooseToLearnScreen.id,
            minHeight: height,
            fontSize: fontSize,
          ),
        ],
      ),
    );
  }

  Widget _buildOptionButton({
    required String label,
    required String routeName,
    required double minHeight,
    required double fontSize,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: OptionButton(
        label: label,
        routeName: routeName,
        minHeight: minHeight,
        // fontSize: fontSize,
        fontColor: Colors.white,
        backgroundColor: Colors.black,
      ),
    );
  }
}
