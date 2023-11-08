import 'package:flutter/material.dart';

class Sentidos extends StatelessWidget {
  const Sentidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
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
