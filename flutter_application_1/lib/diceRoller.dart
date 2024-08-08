import 'dart:math';
import 'package:flutter/material.dart';

class Diceroller extends StatefulWidget {
  const Diceroller({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<Diceroller> {
  var toggleDiceImageName = 'assets/images/dice-1.png';

  void sample() {
    setState(() {
      var diceRoll = Random().nextInt(6) + 1;
      toggleDiceImageName = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              toggleDiceImageName,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 28,
                ),
              ),
              onPressed: sample,
              child: const Text('Tap me'),
            )
          ],
        );
  }
}