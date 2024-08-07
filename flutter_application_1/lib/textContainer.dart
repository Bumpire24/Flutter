import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer(String text, {super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Test',
      style: TextStyle(
        fontSize: 28, 
        color: Colors.white
        ),
    );
  }
}
