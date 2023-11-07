import 'package:flutter/material.dart';

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
              //!estaria bueno agregar un slider
              width: 320,
              height: 320,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [Image.asset('images/sentidos.png')],
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
                        Container(
                          width: 155,
                          height: 195,
                          color: Colors.transparent,
                          child: Column(
                            children: [Image.asset('images/respiracion.png')],
                          ),
                        ),
                        Container(
                          width: 155,
                          height: 140,
                          color: Colors.transparent,
                          child: Column(
                            children: [Image.asset('images/5.png')],
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
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
