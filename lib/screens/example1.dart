import 'dart:math';

import 'package:flutter/material.dart';

class Example1 extends StatefulWidget {
  const Example1({Key? key}) : super(key: key);

  @override
  State<Example1> createState() => _Example1State();
}

class _Example1State extends State<Example1>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exapmle 1'),
      ),
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, child) => Transform.rotate(
          angle: controller.value * pi,
          child: Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
