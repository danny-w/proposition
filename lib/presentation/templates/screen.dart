import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config.dart';

class Screen extends StatelessWidget {
  const Screen({
    Key? key,
    this.title,
    this.bottomBarItems = const [],
    this.backgroundColor = Colors.white,
    this.alignment = Alignment.center,
    required this.body,
  }) : super(key: key);

  final Widget body;
  final String? title;
  final Alignment alignment;
  final Color backgroundColor;
  final List<Widget> bottomBarItems;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoPageScaffold(
            backgroundColor: backgroundColor,
            child: Material(
                type: MaterialType.transparency, child: _buildBody(context)),
          )
        : Scaffold(
            backgroundColor: backgroundColor,
            body: _buildBody(context),
          );
  }

  Widget _buildBody(BuildContext context) => SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.all(Config.paddingOuter),
          child: bottomBarItems.isEmpty
              ? _buildChild()
              : Column(
                  children: [
                    Expanded(child: _buildChild()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildBottomBarItems(),
                    ),
                  ],
                ),
        ),
      );

  Widget _buildChild() => Container(
        alignment: alignment,
        child: SingleChildScrollView(child: body),
      );

  List<Widget> _buildBottomBarItems() {
    final List<Widget> items = [];
    if (bottomBarItems.isNotEmpty) {
      items.add(bottomBarItems.first);
      for (var i = 1; i < bottomBarItems.length; i++) {
        items.add(SizedBox(width: Config.paddingOuter));
        items.add(bottomBarItems[i]);
      }
    }
    return items;
  }
}
