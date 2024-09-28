import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }
  buttonPressed(int soundNumber,Color color) {
   return Expanded(
      child: MaterialButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
      ),
    );
  }
  getButtons() {
    List<Expanded> buttons = List.empty(growable: true);
    buttons.add(buttonPressed(1, Colors.red));
    buttons.add(buttonPressed(2, Colors.orange));
    buttons.add(buttonPressed(3, Colors.yellow));
    buttons.add(buttonPressed(4, Colors.green));
    buttons.add(buttonPressed(5, Colors.blue));
    buttons.add(buttonPressed(6, Colors.indigo));
    buttons.add(buttonPressed(7, Colors.purple));
    return buttons;
  }

  // XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: getButtons(),
          ),
        ),
      ),
    );
  }
}
