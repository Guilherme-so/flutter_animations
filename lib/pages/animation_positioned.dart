import 'package:flutter/material.dart';

class PositionedAnimated extends StatefulWidget {
  const PositionedAnimated({super.key});

  @override
  State<PositionedAnimated> createState() => _PositionedAnimatedState();
}

class _PositionedAnimatedState extends State<PositionedAnimated> {
  bool run = false;

  @override
  Widget build(BuildContext context) {
    final screenMiddle = MediaQuery.of(context).size.height ~/ 2 - 50;
    final width = MediaQuery.of(context).size.width - 50;

    return Scaffold(
      body: Stack(children: [
        AnimatedPositioned(
          duration: const Duration(seconds: 1),
          top: screenMiddle.floorToDouble(),
          left: run ? width : 0,
          child: const Icon(
            Icons.directions_bike,
            size: 50,
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            run = !run;
          });
        },
        child: const Icon(Icons.run_circle),
      ),
    );
  }
}
