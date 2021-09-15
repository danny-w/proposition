import 'package:flutter/material.dart';

import '../../config.dart';
import '../../atlas.dart';
import '../templates/screen.dart';
import '../widgets/animated_marque.dart';
import '../widgets/option_button.dart';
import '../widgets/rounded_button.dart';

class ChooseToLearnScreen extends StatelessWidget {
  const ChooseToLearnScreen({Key? key}) : super(key: key);

  static const id = 'Choose To Learn';

  @override
  Widget build(BuildContext context) {
    return Screen(
      title: id,
      backgroundColor: Config.red,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        // padding: MyTheme.padding,
        children: [
          const AnimatedMarque(text: 'choose to learn'),
          Config.image('valentine.png', width: 50, height: 50),
          _buildOptionButton(
            label: 'Myths about humanities degrees',
            routeName: MythsIntroScreen.id,
          ),
          _buildOptionButton(
            label: ' What SHOULD you get from a humanities degree?',
            // TODO fix routeName
            routeName: id,
          ),
          _buildOptionButton(
            label: 'Jobs for humanities-type folks?',
            // TODO fix routeName
            routeName: id,
          ),
          _buildOptionButton(
            label: 'How can I make myself more marketable in a hybrid economy?',
            // TODO fix routeName
            routeName: HomeScreen.id,
          ),
          _buildOptionButton(
            label: 'Jobs for juiced-up humanities-type folks?',
            // TODO fix routeName
            routeName: HomeScreen.id,
          ),
          SizedBox(height: Config.paddingOuter),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildButton(label: "BACK", onPressed: () {}),
              SizedBox(width: Config.paddingOuter),
              _buildButton(label: "QUIT", onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildOptionButton({
    required String label,
    required String routeName,
  }) =>
      Padding(
        padding: EdgeInsets.only(top: Config.paddingOuter),
        child: OptionButton(
          label: label,
          routeName: routeName,
          minHeight: 80,
          // fontSize: Config.fontSizeNormal,
          fontColor: Colors.white,
          borderColor: Colors.white,
        ),
      );

  Widget _buildButton(
          {required String label, required void Function() onPressed}) =>
      RoundedButton(
        label: label,
        onPressed: onPressed,
        color: Config.lightGrey,
      );
}
