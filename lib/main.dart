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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice1.png'),
              onPressed: () => print('Left button pressed.'),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice1.png'),
              onPressed: () => print("Right button pressed."),
            ),
          ),
        ],
      ),
    );
  }
}
