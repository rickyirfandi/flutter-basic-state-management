import 'package:flutter/material.dart';

import '1-set-state/set-state.dart';
import '2-change-notifier/change-notifier.dart';
import '3-stream-builder/stream-builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home : SetState(),
      //home : WithChangeNotifier(),
      home: WithStreamBuilder(),
    );
  }
}
