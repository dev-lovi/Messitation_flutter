import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:messi/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Respiracion extends StatefulWidget {
  const Respiracion({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RespiracionState createState() => _RespiracionState();
}

class _RespiracionState extends State<Respiracion> {
  AudioPlayer player = AudioPlayer();
  bool isPlaying = false;

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
                      child: Image.asset('images/respiracion_cover.png'),
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
                                'Messitación 1',
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
                                'Sentidos',
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
                  Icon(Icons.repeat),
                  Text('8:23'),
                ],
              ),

              const SizedBox(height: 30),

              //linear bar
              NeuBox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.8,
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
                    const Expanded(
                      child: NeuBox(
                        child: Icon(
                          Icons.skip_previous,
                          size: 32,
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
                              player.stop();
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
                                    Icons.stop,
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
                    const Expanded(
                      child: NeuBox(
                        child: Icon(
                          Icons.skip_next,
                          size: 32,
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
