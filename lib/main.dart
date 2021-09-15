import 'dart:io';

import 'package:flutter/material.dart';
import 'package:proposition/config.dart';

import 'atlas.dart';

void main() {
  print(Platform.operatingSystem);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'VT323',
        primarySwatch: Colors.blue,
        buttonTheme: ButtonThemeData(
          padding: EdgeInsets.all(Config.paddingOuter),
        ),
      ),
      routes: Atlas.routes,
    );
  }
}
