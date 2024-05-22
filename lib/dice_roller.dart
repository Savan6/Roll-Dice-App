import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
final random = Random();

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      
      int randomNumber = random.nextInt(6)+1;
      activeDice = 'assets/images/dice-$randomNumber.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDice,
          width: 200,
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  textStyle: const TextStyle(fontSize: 28)),
              onPressed: rollDice,
              child: const Text('Roll Dice')),
        )
      ],
    );
  }
}
