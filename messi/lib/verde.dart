import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:messi/celeste.dart';
import 'package:messi/home_page.dart';
import 'package:messi/naranja.dart';
import 'package:messi/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Verde extends StatefulWidget {
  const Verde({super.key});

  @override
  // ignore: library_private_types_in_public_api
  VerdeState createState() => VerdeState();
}

class VerdeState extends State<Verde> {
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 10),

              // back button and menu button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const HomePage();
                          },
                        ),
                      );
                    },
                    child: const SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(child: Icon(Icons.arrow_back)),
                    ),
                  ),
                  const Text('L O V I . S A N T I'),
                  const SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(child: Icon(Icons.menu)),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),

              // cover, names

              NeuBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('images/verde_cover.png'),
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
                                'Messitación 3',
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
                            color: Colors.green,
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
                  Icon(Icons.library_music, color: Colors.green),
                  Text('8:23'),
                ],
              ),

              const SizedBox(height: 30),

              //linear bar
              NeuBox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: totalDuration.inSeconds > 0 ? progressValue : 0.00,
                  progressColor: Colors.green,
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
                                return const Naranja();
                              },
                            ),
                          );
                        },
                        child: const NeuBox(
                          child: Icon(
                            Icons.skip_previous,
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
                                return const Celeste();
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
