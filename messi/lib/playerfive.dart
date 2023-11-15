import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PlayerFive extends StatefulWidget {
  const PlayerFive({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PlayerFiveState createState() => _PlayerFiveState();
}

class _PlayerFiveState extends State<PlayerFive> {
  AudioPlayer player = AudioPlayer();
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              child: Wrap(
                spacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (isPlaying) {
                        player.stop();
                      } else {
                        player.play(AssetSource('sentidos.mp3'));
                      }

                      setState(() {
                        isPlaying = !isPlaying;
                      });
                    },
                    child: Text(isPlaying ? "Stop" : "Click here to Play"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
