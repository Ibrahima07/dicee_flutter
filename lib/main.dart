import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      title: const Center(
          child: Text(
        "Dicee",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )),
      backgroundColor: Colors.red,
    ),
    body: const MyApp(),
  )));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceeNumber = 4;
  int rigthDiceeNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceeNumber = Random().nextInt(6) + 1;
      rigthDiceeNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    // ignore: avoid_print
                    onPressed: () => {changeDiceFace()},
                    child: Image.asset("images/dice$leftDiceeNumber.png")))),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: () => {changeDiceFace()},
                    child: Image.asset("images/dice$rigthDiceeNumber.png")))),
      ],
    ));
  }
}
