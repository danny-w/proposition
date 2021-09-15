import 'dart:math';

import 'package:flutter/material.dart';

import '../../atlas.dart';
import '../../config.dart';
import '../templates/screen.dart';
import '../widgets/adaptive_text.dart';
import '../widgets/option_button.dart';

class MythsScreen extends StatelessWidget {
  const MythsScreen({Key? key}) : super(key: key);

  static const id = "Myths";

  @override
  Widget build(BuildContext context) {
    return Screen(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildTopRow(),
          SizedBox(height: Config.paddingOuter),
          AdaptiveText(
            "Myths about humanities degrees",
            fontSize: Config.fontSizeTitle,
          ),
          SizedBox(height: Config.paddingOuter),
          AdaptiveText(
            'You’ve all heard these narratives, right? Well, they’ve been around for decades and decades, ever since the GI Bill made it possible for more people to go to college. Are they true?',
            color: Config.red,
            fontSize: Config.fontSizeTiny,
          ),
          _buildOptionButton(
            label:
                'It’s teach, or Starbucks, or nothing. No jobs for humanities folks!',
            routeName: id, // TODO: fix route
          ),
          _buildOptionButton(
            label: 'If you study the humanities, you won’t make any money.',
            routeName: id, // TODO: fix route
          ),
          _buildOptionButton(
            label:
                'Studying the humanities doesn’t net you real-world, practical skills.',
            routeName: id, // TODO: fix route
          ),
          _buildOptionButton(
            label: 'It’s easy--anyone can do it.',
            routeName: id, // TODO: fix route
          ),
          _buildOptionButton(
            label: 'MOAR DATA!',
            routeName: id, // TODO: fix route
          ),
          _buildImageRow(),
        ],
      ),
    );
  }

  Row _buildTopRow() {
    return Row(
      children: [
        _buildTopOption(
          label: "CHOOSE AGAIN",
          routeName: ChooseToLearnScreen.id,
          popCurrentScreen: true,
          extraPadding: true,
        ),
        Spacer(),
        _buildTopOption(
          label: "OK, OK. I'LL CONSIDER IT!",
          routeName: ChooseToLearnScreen.id, // TODO fix route
        ),
      ],
    );
  }

  Widget _buildTopOption({
    required String label,
    required String routeName,
    bool popCurrentScreen = false,
    bool extraPadding = false,
  }) =>
      OptionButton(
        label: label,
        routeName: routeName,
        popCurrentScreen: popCurrentScreen,
        minHeight: 20,
        fontSize: Config.fontSizeSmall,
        padding: EdgeInsets.symmetric(
          horizontal: extraPadding ? Config.paddingOuter : Config.paddingInner,
        ),
        borderColor: Colors.black,
        borderRadius: 10,
        backgroundColor: Config.lightGrey,
      );

  Widget _buildOptionButton({
    required String label,
    required String routeName,
  }) =>
      Padding(
        padding: const EdgeInsets.only(top: Config.paddingOuter),
        child: OptionButton(
          label: label,
          routeName: routeName,
          borderColor: Colors.black,
          fontColor: Colors.black,
          // fontSize: Config.fontSizeNormal,
          borderRadius: 24,
        ),
      );

  Widget _buildImageRow() => Stack(
        alignment: Alignment.bottomCenter,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 200),
          Positioned(
            left: 10,
            child: _buildImage('light_bulb.png',
                height: 100, angle: -pi * 0.25, opacity: 0.5),
          ),
          _buildImage('light_bulb.png',
              height: 75, angle: pi * 0.1, opacity: 0.7),
          Positioned(
            right: 0,
            child: _buildImage('light_bulb.png',
                height: 150, angle: 0, opacity: 1),
          ),
        ],
      );

  Widget _buildImage(String name,
          {required double height,
          required double angle,
          required double opacity}) =>
      Opacity(
        opacity: opacity,
        child: Transform.rotate(
            angle: angle,
            child: Config.image(
              'light_bulb.png',
              height: height,
            )),
      );
}
