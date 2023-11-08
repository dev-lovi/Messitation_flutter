import 'package:flutter/material.dart';

class Respiracion extends StatelessWidget {
  const Respiracion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: Wrap(),
          )
        ],
      )),
    );
  }
}
