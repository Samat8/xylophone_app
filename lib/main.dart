import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('sounds/assets_note$soundNumber.wav'));
  }

  Expanded buildKey({Color? color,required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.blue, soundNumber: 2),
            buildKey(color: Colors.green, soundNumber: 3),
            buildKey(color: Colors.pink, soundNumber: 4),
            buildKey(color: Colors.teal, soundNumber: 5),
            buildKey(color: Colors.purple, soundNumber: 6),
            buildKey(color: Colors.cyan, soundNumber: 7),
          ]),
        ),
      ),
    );
  }
}
