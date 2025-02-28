import 'package:flutter/material.dart';
import 'dart:math';

// This is how to create a random number generator
// only once, not every time the widget is built
final randomizer = Random();

// StatefulWidget is a widget that has a state
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  // This is how to create the state of the widget
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

// State is the state of the widget
// _DiceRollerState is the state of the DiceRoller widget
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  // This is how to update the state of the widget
  void rollDice() {
    // print('Rolling dice...');
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  // This is how to build the widget
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(8),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
