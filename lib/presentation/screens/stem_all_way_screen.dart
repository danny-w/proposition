import 'package:flutter/material.dart';

import '../../config.dart';
import '../templates/screen.dart';
import '../widgets/adaptive_text.dart';

class StemAllTheWayScreen extends StatelessWidget {
  const StemAllTheWayScreen({Key? key}) : super(key: key);

  static const id = 'Stem All The Way';

  @override
  Widget build(BuildContext context) {
    return Screen(
      body: ListView(
        children: [
          AdaptiveText(
            '''
You’ve already made up your mind, huh? How old are you, and how much of the world, yourself, your history, and others have you explored?

JK! Do you!

BUT...

Did you know that writing, collaboration, cultural competency, creative thinking, empathy, and storytelling are skills you get from studying humanities?
''',
            textAlign: TextAlign.center,
            fontSize: Config.fontSizeNormal,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildImage('cog.png'),
              _buildImage('laptop.png'),
              _buildImage('cog.png'),
            ],
          ),
          AdaptiveText(
            '''
Pro tip: These are skills that employers say--out loud--that they want but aren’t finding in new hires.
 If you study the humanities or arts in addition to STEM, you will secure a job more quickly!
''',
            textAlign: TextAlign.center,
            fontSize: Config.fontSizeNormal,
          ),
        ],
      ),
    );
  }

  Widget _buildImage(String name) => Config.image(name, width: 50);
}
