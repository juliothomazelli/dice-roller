import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  var diceSelected = "lib/assets/images/dice-one.png";

  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1;

    if (diceRoll == 1){
      setState(() {
        diceSelected = "lib/assets/images/dice-one.png";
      });
      return;
    }

    if (diceRoll == 2){
      setState(() {
        diceSelected = "lib/assets/images/dice-two.png";
      });

      return;
    }

    if (diceRoll == 3){
      setState(() {
        diceSelected = "lib/assets/images/dice-three.png";
      });
      return;
    }

    if (diceRoll == 4){
      setState(() {
        diceSelected = "lib/assets/images/dice-four.png";
      });
      return;
    }

    if (diceRoll == 5){
      setState(() {
        diceSelected = "lib/assets/images/dice-five.png";
      });
      return;
    }

    if (diceRoll == 6){
      setState(() {
        diceSelected = "lib/assets/images/dice-six.png";
      });
      return;
    }
  }

  @override
  Widget build(context) {
    return Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                  diceSelected,
                  width: 250
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  //padding: const EdgeInsets.only(top: 20),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28)
                ),
                child: const Text("Roll Dice"),
              )
            ]
        )
    );
  }
}