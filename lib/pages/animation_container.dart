import 'package:flutter/material.dart';

class ContainerAnimated extends StatefulWidget {
  const ContainerAnimated({super.key});

  @override
  State<ContainerAnimated> createState() => _ContainerAnimatedState();
}

class _ContainerAnimatedState extends State<ContainerAnimated> {
  bool animate = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          height: animate ? height : 60,
          width: animate ? width : 60,
          color: animate ? Colors.blueAccent : Colors.amber,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () => {animate = !animate},
          );
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
