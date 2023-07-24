import 'dart:math';

import 'package:flutter/material.dart';

class Example2 extends StatefulWidget {
  const Example2({Key? key}) : super(key: key);

  @override
  State<Example2> createState() => _Example1State();
}

class _Example1State extends State<Example2> {
  double height = 100;
  double width = 100;
  double radius = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exapmle 2'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          height = Random().nextInt(250).toDouble() + 50;
          width = Random().nextInt(250).toDouble() + 50;
          radius = Random().nextInt(25).toDouble();
          setState(() {});
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
