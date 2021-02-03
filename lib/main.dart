import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            buildExpanded(tileColor: Colors.red,noteNumber: 1),
            buildExpanded(tileColor: Colors.orange,noteNumber: 2),
            buildExpanded(tileColor: Colors.yellow,noteNumber: 3),
            buildExpanded(tileColor: Colors.green,noteNumber: 4),
            buildExpanded(tileColor: Colors.teal,noteNumber: 5),
            buildExpanded(tileColor: Colors.blue,noteNumber: 6),
            buildExpanded(tileColor: Colors.purple,noteNumber: 7),

            ]
            ),  
          ),
        ),
      );
    
  }

  Expanded buildExpanded({Color tileColor,int noteNumber}) {
    return Expanded(
            child:Container(
              color: tileColor,
              child: GestureDetector(
                onTap:()
                {
                  final AudioCache player=AudioCache(prefix:'sounds/');
                  player.play('note$noteNumber.wav');
                },
              ),
            )  
          );
  }
}
