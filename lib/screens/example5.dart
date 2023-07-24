import 'dart:math';

import 'package:flutter/material.dart';

class Example5 extends StatefulWidget {
  const Example5({Key? key}) : super(key: key);

  @override
  State<Example5> createState() => Example5State();
}

class Example5State extends State<Example5>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 5'),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          duration: const Duration(seconds: 1),
          tween: Tween<double>(begin: 0, end: 2 * pi),
          builder: (context, value, child) => Transform.rotate(
            angle: value,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
