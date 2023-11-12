import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;
  const NeuBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      //width: 100,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              //? darker shadow on the bottom right
              color: Colors.grey.shade500,
              blurRadius: 15,
              offset: Offset(5, 5),
            ),

            //? lighter shadow on the top left

            const BoxShadow(
              //? darker shadow on the bottom right
              color: Colors.white,
              blurRadius: 15,
              offset: Offset(-5, -5),
            ),
          ]),
      //height: 100,
      //width: 100,
      child: Center(child: child),
    );
  }
}
