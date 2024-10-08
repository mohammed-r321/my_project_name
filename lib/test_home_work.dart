import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text('frist app'),
      backgroundColor: Colors.red[900],
    ),
    backgroundColor: const Color.fromARGB(255, 240, 209, 4),
    body: Center(child: Image(image: AssetImage('img/cat.png'))),
  )));
}
