import 'dart:math';

import 'package:flutter/material.dart';

class Example14 extends StatefulWidget {
  Example14({Key? key}) : super(key: key);

  @override
  State<Example14> createState() => _Example14State();
}

class _Example14State extends State<Example14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 14'),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 1, end: 2),
          duration: Duration(seconds: 1),
          builder: (context, value, child) => Transform.scale(
            scale: value,
            child: Container(
              height: 100,
              width: 100,
              decoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
            ),
          ),
        ),
      ),
    );
  }
}
