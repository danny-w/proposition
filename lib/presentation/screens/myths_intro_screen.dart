import 'dart:math';

import 'package:flutter/material.dart';

import '../../config.dart';
import '../../atlas.dart';
import '../templates/timed_transition.dart';
import '../widgets/adaptive_text.dart';

class MythsIntroScreen extends StatelessWidget {
  const MythsIntroScreen({Key? key}) : super(key: key);

  static const id = "Myths Intro";

  @override
  Widget build(BuildContext context) {
    return TimedTransition(
      duration: Config.mythsIntroScreenDuration,
      nextRoute: MythsScreen.id,
      child: Scaffold(
        backgroundColor: Config.red,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(Config.paddingOuter),
                child: AdaptiveText(
                  "Myths about humanities degrees",
                  fontSize: Config.fontSizeTitle,
                ),
              ),
              Spacer(),
              Row(children: [
                Spacer(),
                Transform.rotate(
                  angle: pi * 0.15,
                  child: Config.image(
                    'question.png',
                    width: 250,
                    fit: BoxFit.contain,
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
