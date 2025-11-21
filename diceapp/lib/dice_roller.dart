import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{

  DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}



class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage = 'assets/Images/Dice_1.png';
  final player = AudioPlayer();

  void rollDIce(){
    var dicenum = randomizer.nextInt(6)+1;
    player.play(AssetSource('sounds/diceroll.mp3'));
    setState((){
      activeDiceImage = 'assets/Images/Dice_$dicenum.png';
    });
  }



  @override
  Widget build(context4){
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Image.asset(activeDiceImage, width: 200,),
        SizedBox(height: 250,),
        ElevatedButton(
          onPressed: rollDIce,
          child: const Text('Roll Dice!', style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontStyle: FontStyle.italic,
            )),)
      ],
      );
  }
}
