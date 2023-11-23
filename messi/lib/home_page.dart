import 'package:flutter/material.dart';
import 'package:messi/celeste.dart';
import 'package:messi/dolor.dart';
import 'package:messi/emociones.dart';
import 'package:messi/main.dart';
import 'package:messi/naranja.dart';
import 'package:messi/sentidos.dart';
import 'package:messi/respiracion.dart';
import 'package:messi/verde.dart';
import 'package:messi/violeta.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override //dia 19 y 20 de estudio
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const MyApp();
                },
              ),
            );
          },
        ), //dia 17 y 18 dedicado a imagenes
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _mostrarPopup(context,
                        'Bienvenido a Messitación, espero que disfrutes la app. Te recomiendo que empieces con las meditaciones guiadas, es recomandable que hagas por lo menos 10 veces la meditación antes de pasar a la siguiente. Las meditaciones libres están pensadas para practicantes avanzados de meditación que no requieran de una guía y solamente quieran una musica tranquila de fondo.');
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
                    _mostrarPopup(context,
                        'Como mencioné anteriormente, es ideal que hagas por lo menos 10 veces una meditación antes de pasar a la siguiente. Además, te recomiendo meditar sentado en una silla o en el suelo, no te acuestes porque podes llegar a quedarte dormido.');
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
                    _mostrarPopup(context,
                        'Soy un estudiante de primer año de Ingeniería Informática, cualquier sugerencia es bienvenida. Pueden contactarme por instagram: @lovi.santi');
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
                    _mostrarPopup(context,
                        'Este espacio es para aclarar que no soy propietario de ninguna de las imagenes y la aplicación está hecha con un fin educativo (para mi propio aprendizaje) y no tiene ningún fin lucrativo.');
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
                    _mostrarPopup(context,
                        '¡Cambiamos de lenguaje! Pasamos de KivyMD a Kotlin, con mejoras en el rendimiento, cambios en la interfaz y mejores meditaciones');
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

void _mostrarPopup(BuildContext context, String mensaje) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Messitación'),
        content: Text(
          mensaje,
          style: const TextStyle(fontSize: 20.0),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cerrar'),
          ),
        ],
      );
    },
  );
}
