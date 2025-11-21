import 'package:flutter/material.dart';
import 'package:diceapp/gradient_container.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 127, 70, 213),
                                Color.fromARGB(255, 255, 231, 74)),
      )
    ),
  );
}