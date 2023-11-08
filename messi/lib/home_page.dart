import 'package:flutter/material.dart';
import 'package:messi/sentidos.dart';
import 'package:messi/respiracion.dart';
import 'package:messi/playerfive.dart';

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
                  onPressed: () {},
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
                  onPressed: () {},
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
                  onPressed: () {},
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
                  onPressed: () {},
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
                  onPressed: () {},
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

                          //? ACA AGREGAMOS EL ENLACE A CINCO
                          child: GestureDetector(
                            onTap: () {
                              // Navigate when the first container is tapped
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const PlayerFive();
                                  },
                                ),
                              );
                            },

                            //! ACA ESTA LA POS 5
                            child: Column(
                              children: [Image.asset('images/5.png')],
                            ),
                          ),
                        ),

                        Container(
                          width: 155,
                          height: 195,
                          color: Colors.transparent,
                          child: Column(
                            children: [Image.asset('images/pensamientos.png')],
                          ),
                        ),
                      ],
                    ),
                    Wrap(
                      spacing: 10,
                      direction: Axis.vertical,
                      children: [
                        Container(
                          width: 155,
                          height: 92.5,
                          color: Colors.transparent,
                          child: Column(
                            children: [Image.asset('images/3.png')],
                          ),
                        ),
                        Container(
                          width: 155,
                          height: 140,
                          color: Colors.transparent,
                          child: Column(
                            children: [Image.asset('images/10.png')],
                          ),
                        ),
                        Container(
                          width: 155,
                          height: 195,
                          color: Colors.transparent,
                          child: Column(
                            children: [Image.asset('images/dolor.png')],
                          ),
                        ),
                        Container(
                          width: 155,
                          height: 92.5,
                          color: Colors.transparent,
                          child: Column(
                            children: [Image.asset('images/3.png')],
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
