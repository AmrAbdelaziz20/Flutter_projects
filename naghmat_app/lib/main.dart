import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicWidget());
}

class MusicWidget extends StatelessWidget {
  //const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 234, 41, 105),
        appBar: AppBar(
          title: Text('نغمات'),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('assets/music-1.mp3'));
                },
                child: Text('My MUSIC'))
          ],
        ),
      ),
    );
  }
}
