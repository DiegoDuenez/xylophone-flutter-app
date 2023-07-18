import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {


  Widget NoteKey(int note, Color color){
    return Expanded(
      child: TextButton(

        onPressed: (){
          final player = AudioPlayer();
          player.play(AssetSource('note$note.wav'));
        },
        child: Text(''),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                NoteKey(1, Colors.red),
                NoteKey(2, Colors.orange),
                NoteKey(3, Colors.yellow),
                NoteKey(4, Colors.green),
                NoteKey(5, Colors.teal),
                NoteKey(6, Colors.blue),
                NoteKey(7, Colors.purple),
              ]
          ),
        ),
      ),
    );
  }
}
