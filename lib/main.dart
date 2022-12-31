import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Dicee",
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor: Colors.yellow,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  if (kDebugMode) {
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) + 1;
                    });
                  }
                },
                child: Image(
                  image: AssetImage("images/dice$leftDiceNumber.png"),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  if (kDebugMode) {
                    setState(() {
                      rightDiceNumber = Random().nextInt(6) + 1;
                    });
                  }
                },
                child: Image.asset("images/dice$rightDiceNumber.png"),
              ),
            ),
            // Image(
            //   image: AssetImage("images/one.png"),
            // ),
          ),
        ],
      ),
    );
  }
}
