import 'package:flutter/material.dart';

class PlayerFive extends StatelessWidget {
  const PlayerFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
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
