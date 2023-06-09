import 'package:flutter/material.dart';
import 'pages/animation_container.dart';
import 'pages/animation_crossfade.dart';
import 'pages/animation_positioned.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animations',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const OpacityAnimation(),
      // home: const ContainerAnimated(),
      // home: const CrossFadeAnimation(),
      home: const PositionedAnimated(),
    );
  }
}
