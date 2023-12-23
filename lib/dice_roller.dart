import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/dice-6.png";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        /* const Text(
          "Dice App",
          style: TextStyle(
              fontSize: 58, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 50), */
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            //padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }

  void rollDice() {
    var randomNumber = randomizer.nextInt(6) + 1;

    setState(() {
      // This is an anynomous function
      // Needed to update the UI
      activeDiceImage = "assets/dice-$randomNumber.png";
      // Alternative you could also set the path right in the Image.asset with the
      // newly generated random number
    });
  }
}
