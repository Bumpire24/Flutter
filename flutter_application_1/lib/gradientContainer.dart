// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/textContainer.dart';

const gradientAlignmentStart = Alignment.topLeft;
const gradientAlignmentEnd = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: gradientAlignmentStart,
              end: gradientAlignmentEnd,
              colors: [
                Colors.purple,
                Colors.deepPurple
                ]
              ),
            ),
          child: const Center(
            child: TextContainer(),
          ),
        );
  }
}