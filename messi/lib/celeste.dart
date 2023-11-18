import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:messi/neu_box.dart';
import 'package:messi/verde.dart';
import 'package:messi/violeta.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Celeste extends StatefulWidget {
  const Celeste({super.key});

  @override
  // ignore: library_private_types_in_public_api
  CelesteState createState() => CelesteState();
}

class CelesteState extends State<Celeste> {
  AudioPlayer player = AudioPlayer();
  bool isPlaying = false;
  double progressValue = 0.0;
  Duration totalDuration = Duration.zero;

  Timer? timer;

  @override
  void initState() {
    super.initState();

    player.onDurationChanged.listen((Duration duration) {
      setState(() {
        totalDuration = duration;
      });
    });

    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);

    timer = Timer.periodic(oneSec, (Timer t) async {
      if (totalDuration != Duration.zero) {
        final position = await player.getCurrentPosition();
        setState(() {
          progressValue = (position!.inSeconds / totalDuration.inSeconds);
        });
      }
    });
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is disposed
    timer?.cancel();
    player.dispose(); // Dispose of the audio player to free up resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              //back and menu butons

              const SizedBox(
                height: 25,
              ),

              // cover, names

              NeuBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('images/celeste_cover.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Messitación 4',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Meditación libre',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.lightBlue,
                            size: 32,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // start time, shuffle, repeat and end time

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('0:00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.library_music, color: Colors.lightBlue),
                  Text('8:23'),
                ],
              ),

              const SizedBox(height: 30),

              //linear bar
              NeuBox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: totalDuration.inSeconds > 0 ? progressValue : 0.00,
                  progressColor: Colors.lightBlue,
                  backgroundColor: Colors.transparent,
                ),
              ),

              const SizedBox(height: 30),

              // pause play etc
              SizedBox(
                height: 80,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Navigate when the first container is tapped
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const Verde();
                              },
                            ),
                          );
                        },
                        child: const NeuBox(
                          child: Icon(
                            Icons.skip_next,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            if (isPlaying) {
                              player.pause();
                              progressValue = 0.0;
                            } else {
                              player.play(AssetSource('sentidos.mp3'));
                            }

                            setState(() {
                              isPlaying = !isPlaying;
                            });
                          },
                          child: NeuBox(
                            child: isPlaying
                                ? const Icon(
                                    Icons.pause,
                                    size: 32,
                                  )
                                : const Icon(
                                    Icons.play_arrow,
                                    size: 32,
                                  ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Navigate when the first container is tapped
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const Violeta();
                              },
                            ),
                          );
                        },
                        child: const NeuBox(
                          child: Icon(
                            Icons.skip_next,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
