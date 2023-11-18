import 'package:flutter/material.dart';
import 'package:messi/celeste.dart';
import 'package:messi/dolor.dart';
import 'package:messi/emociones.dart';
import 'package:messi/naranja.dart';
import 'package:messi/sentidos.dart';
import 'package:messi/respiracion.dart';
import 'package:messi/verde.dart';
import 'package:messi/violeta.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //!prepare for copy/paste this in the future
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const Violeta();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(0, 40),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                  ),
                  child: const Text('¿Cómo usar la app?'),
                ),
                ElevatedButton(
                  onPressed: () {
                    //!prepare for copy/paste this in the future
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const Violeta();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(0, 40),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                  ),
                  child: const Text('Recomendaciones'),
                ),
                ElevatedButton(
                  onPressed: () {
                    //!prepare for copy/paste this in the future
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const Violeta();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(0, 40),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                  ),
                  child: const Text('Autor'),
                ),
                ElevatedButton(
                  onPressed: () {
                    //!prepare for copy/paste this in the future
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const Violeta();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(0, 40),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                  ),
                  child: const Text('Creditos'),
                ),
                ElevatedButton(
                  onPressed: () {
                    //!prepare for copy/paste this in the future
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const Violeta();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(0, 40),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                  ),
                  child: const Text('Novedades de la actualización'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            child: Container(
              width: 320,
              height: 320,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30),
              ),

              //? ACA AGREGAMOS EL ENLACE A SENTIDOS
              child: GestureDetector(
                onTap: () {
                  // Navigate when the first container is tapped
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Sentidos();
                      },
                    ),
                  );
                },

                //! SENTIDOS
                child: Column(
                  children: [Image.asset('images/sentidos.png')],
                ),
              ),
            ),
          ),

          //!Aca segui agregando cosas pa!
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                child: Wrap(
                  spacing: 10,
                  children: [
                    Wrap(
                      spacing: 10,
                      direction: Axis.vertical,
                      children: [
                        //? ACA AGREGAMOS EL ENLACE A RESPIRACION
                        GestureDetector(
                          onTap: () {
                            // Navigate when the first container is tapped
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const Respiracion();
                                },
                              ),
                            );
                          },

                          //! RESPIRACION
                          child: Container(
                            width: 155,
                            height: 195,
                            color: Colors.transparent,
                            child: Column(
                              children: [Image.asset('images/respiracion.png')],
                            ),
                          ),
                        ),

                        Container(
                          width: 155,
                          height: 140,
                          color: Colors.transparent,

                          //? ACA AGREGAMOS EL ENLACE
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

                            //! ACA ESTA LA POS 5
                            child: Column(
                              children: [
                                Image.asset('images/libre_violeta.png')
                              ],
                            ),
                          ),
                        ),

                        Container(
                          width: 155,
                          height: 195,
                          color: Colors.transparent,
                          child: GestureDetector(
                            onTap: () {
                              // Navigate when the first container is tapped
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const Emociones();
                                  },
                                ),
                              );
                            },
                            child: Column(
                              children: [Image.asset('images/emociones.png')],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Wrap(
                      spacing: 10,
                      direction: Axis.vertical,
                      children: [
                        GestureDetector(
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
                          child: Container(
                            width: 155,
                            height: 92.5,
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Image.asset('images/libre_naranja.png')
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 155,
                          height: 140,
                          color: Colors.transparent,
                          //? ACA AGREGAMOS EL ENLACE
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
                            child: Column(
                              children: [Image.asset('images/libre_verde.png')],
                            ),
                          ),
                        ),
                        Container(
                          width: 155,
                          height: 195,
                          color: Colors.transparent,
                          //? ACA AGREGAMOS EL ENLACE
                          child: GestureDetector(
                            onTap: () {
                              // Navigate when the first container is tapped
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const Dolor();
                                  },
                                ),
                              );
                            },
                            child: Column(
                              children: [Image.asset('images/dolor.png')],
                            ),
                          ),
                        ),
                        Container(
                          width: 155,
                          height: 92.5,
                          color: Colors.transparent,
                          //? ACA AGREGAMOS EL ENLACE
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
                            child: Column(
                              children: [
                                Image.asset('images/libre_celeste.png')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
