import 'package:flutter/material.dart';

class Example13 extends StatefulWidget {
  const Example13({Key? key}) : super(key: key);

  @override
  State<Example13> createState() => _Example13State();
}

class _Example13State extends State<Example13> {
  bool isLarge = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 13'),
      ),
      body: Column(
        children: [
          AnimatedDefaultTextStyle(
            style: TextStyle(fontSize: isLarge ? 50 : 18, color: Colors.black),
            duration: const Duration(seconds: 1),
            child: const Text(
              'Hello Flutter developers welcome to this app',
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              isLarge = !isLarge;
              setState(() {});
            },
            child: Text('${isLarge ? "Bigger" : 'Small'} font'),
          )
        ],
      ),
    );
  }
}
