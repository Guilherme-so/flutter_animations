import 'package:flutter/material.dart';

class CrossFadeAnimation extends StatefulWidget {
  const CrossFadeAnimation({super.key});

  @override
  State<CrossFadeAnimation> createState() => _CrossFadeAnimationState();
}

class _CrossFadeAnimationState extends State<CrossFadeAnimation> {
  bool toogleWifi = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedCrossFade(
          firstChild: const Icon(
            Icons.wifi,
            size: 50,
          ),
          secondChild: const Icon(
            Icons.wifi_off,
            size: 50,
          ),
          crossFadeState:
              toogleWifi ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            toogleWifi = !toogleWifi;
          });
        },
        child: toogleWifi ? const Icon(Icons.wifi_off) : const Icon(Icons.wifi),
      ),
    );
  }
}
