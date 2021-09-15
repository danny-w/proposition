import 'dart:async';

import 'package:flutter/material.dart';

import '../../extension/build_context.dart';

class TimedTransition extends StatefulWidget {
  const TimedTransition({
    Key? key,
    required this.duration,
    required this.nextRoute,
    required this.child,
  }) : super(key: key);

  final Duration duration;
  final String nextRoute;
  final Widget child;

  @override
  _TimedTransitionState createState() => _TimedTransitionState();
}

class _TimedTransitionState extends State<TimedTransition> {
  late final Timer _timer;

  @override
  void didChangeDependencies() {
    _timer = Timer(
      widget.duration,
      () => context.pushReplacementRoute(widget.nextRoute),
    );
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
