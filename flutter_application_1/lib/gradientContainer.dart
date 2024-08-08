// ignore_for_file: file_names

import 'package:flutter/material.dart';

const gradientAlignmentStart = Alignment.topLeft;
const gradientAlignmentEnd = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  GradientContainer.purple({super.key}) : colors = [Colors.black, Colors.purple];

  GradientContainer.red({super.key}) : colors = [Colors.black, Colors.red];

  final List<Color> colors;

  void sample() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: gradientAlignmentStart,
            end: gradientAlignmentEnd,
            colors: colors),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            TextButton(
              onPressed: sample,
              child: const Text('Tap me'),
            )
          ],
        ),
      ),
    );
  }
}
