import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  const StyledText({super.key});
  @override
  Widget build(context2){
    return const Center(
            child: Text('Hello Sir, Welcome',style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontStyle: FontStyle.italic,
            ),)
          );
  }
}