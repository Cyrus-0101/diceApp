import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice App"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // We create the variable name here so as to
  // update the variable number when it changes not when the app. re-renders
  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;

  void randomNumber() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                randomNumber();
              });
            },
            child: Image.asset("assets/images/dice$leftDiceNumber.png"),
          )),
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                randomNumber();
              });
            },
            child: Image.asset("assets/images/dice$rightDiceNumber.png"),
          )),
        ],
      ),
    );
  }
}
