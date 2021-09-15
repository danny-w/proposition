import 'dart:async';

import 'package:flutter/material.dart';

import 'adaptive_text.dart';

class AnimatedMarque extends StatefulWidget {
  const AnimatedMarque({
    Key? key,
    required this.text,
    this.styles = const [
      null,
      TextStyle(fontFamily: 'Anton'),
      TextStyle(fontFamily: 'Lobster'),
    ],
    this.duration = const Duration(milliseconds: 400),
    this.height = 80,
  }) : super(key: key);

  final String text;
  final List<TextStyle?> styles;
  final Duration duration;
  final double height;

  @override
  _AnimatedMarqueState createState() => _AnimatedMarqueState();
}

class _AnimatedMarqueState extends State<AnimatedMarque> {
  late final Timer _timer;
  int _styleIndex = 0;

  @override
  void initState() {
    _timer = Timer.periodic(
      widget.duration,
      (_) => setState(
        () => _styleIndex = (_styleIndex + 1) % widget.styles.length,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: FittedBox(
        fit: BoxFit.contain,
        child: AdaptiveText(widget.text, style: widget.styles[_styleIndex]),
      ),
    );
  }
}
