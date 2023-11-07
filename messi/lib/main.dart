import 'package:flutter/material.dart';
import 'package:messi/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bienvenido',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 55,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'a Messitacion',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'images/messi_sentado.png',
              width: 700,
              height: 350,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                //!prepare for copy/paste this in the future
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const HomePage();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                minimumSize: const Size(340, 40),
              ),
              child: const Text('Comenzar'),
            ),
            //ElevatedButton(
            //onPressed: () {},
            //style: ElevatedButton.styleFrom(
            //backgroundColor: Colors.white,
            //foregroundColor: Colors.green,
            //minimumSize: const Size(340, 40),
            //),
            //child: const Text('Register'),
            //),
          ],
        ),
      ),
    );
  }
}
