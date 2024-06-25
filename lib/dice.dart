import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  String diceImg = "assets/images/dice-1.png";
  var random = Random();
  var dicePoint = [];
  void rollDice() {
    setState(
      () {
        var diceNum = random.nextInt(6);
        diceNum += 1;
        diceImg = 'assets/images/dice-$diceNum.png';
        dicePoint.add(diceNum);
        if (dicePoint.length >= 5) {
          dicePoint.clear();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Made By Nishak',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        Image.asset(
          diceImg,
          height: 250,
          width: 250,
        ),
        ElevatedButton(
          onPressed: rollDice,
          child: const Text('Roll Dice'),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          dicePoint.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
