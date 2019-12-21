import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'widgets/depth_ui.dart';
import 'package:simple_permissions/simple_permissions.dart';
import 'dart:async';

void main() {
  if (Platform.isWindows || Platform.isLinux)
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Depth Alpha',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: MyHomePage(title: 'Depth Alpha'),
    );
  }
}

