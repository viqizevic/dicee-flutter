import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNr = 1;
  int rightNr = 1;

  void rollin() {
    setState(() {
      leftNr = Random().nextInt(6) + 1;
      rightNr = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                rollin();
              },
              child: Image.asset('images/dice$leftNr.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                rollin();
              },
              child: Image.asset('images/dice$rightNr.png'),
            ),
          ),
        ],
      ),
    );
  }
}
