import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            title: Text('The Dice App'),
            backgroundColor: Colors.blueAccent,
          ),
          body: DicePage(),
        ),
      ),
    );

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void setDiceNumbers() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: OutlinedButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: setDiceNumbers,
            ),
          ),
          Expanded(
            child: OutlinedButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: setDiceNumbers,
            ),
          ),
        ],
      ),
    );
  }
}
