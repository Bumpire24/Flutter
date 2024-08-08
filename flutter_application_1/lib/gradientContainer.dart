// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/diceRoller.dart';

const gradientAlignmentStart = Alignment.topLeft;
const gradientAlignmentEnd = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  GradientContainer.purple({super.key}) : colors = [Colors.black, Colors.purple];

  GradientContainer.red({super.key}) : colors = [Colors.black, Colors.red];

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: gradientAlignmentStart,
            end: gradientAlignmentEnd,
            colors: colors),
      ),
      child: const Center(
        child: Diceroller()
      ),
    );
  }
}
