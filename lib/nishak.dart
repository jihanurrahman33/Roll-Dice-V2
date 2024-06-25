import 'package:custom_widget_practice/dice.dart';
import 'package:flutter/material.dart';

class Nishak extends StatefulWidget {
  const Nishak({super.key});

  @override
  State<Nishak> createState() => _NishakState();
}

class _NishakState extends State<Nishak> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.deepPurple,
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 135, 37, 7),
                  Color.fromARGB(255, 175, 66, 32)
                ],
              ),
            ),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Dice(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
