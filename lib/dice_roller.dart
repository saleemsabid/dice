import 'dart:math';

import 'package:flutter/material.dart';

import 'package:dice/gradient_container.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int diceNumber = randomizer.nextInt(6) + 1;
  void rollDice() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice/dice-$diceNumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 105, 96, 96)),
          child: const StyledText('Roll Dice'),
        )
      ],
    );
  }
}
