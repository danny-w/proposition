import 'package:flutter/material.dart';

import '../../config.dart';
import '../../atlas.dart';
import '../templates/screen.dart';
import '../templates/timed_transition.dart';
import '../widgets/adaptive_text.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  static const id = "Landing";

  @override
  Widget build(BuildContext context) {
    return TimedTransition(
      duration: Config.landingScreenDuration,
      nextRoute: HomeScreen.id,
      child: Screen(
        body: AdaptiveText('''A Proposition

.

.

.

.

.

.

.

.

.

.

.

.

College students should consider studying a STEM field ALONG WITH a Humanities discipline to be successful in a new hybrid economy.''',
            color: Colors.black, fontSize: Config.fontSizeTitle),
      ),
    );
  }
}
