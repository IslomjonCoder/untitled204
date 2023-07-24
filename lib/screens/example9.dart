import 'package:flutter/material.dart';

class Example9 extends StatefulWidget {
  const Example9({Key? key}) : super(key: key);

  @override
  State<Example9> createState() => _Example9State();
}

class _Example9State extends State<Example9> {
  bool isLarge = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 9'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isLarge ? 50 : 24,
              color: isLarge ? Colors.red : Colors.blue,
            ),
            duration: const Duration(milliseconds: 700),
            child: const Text('Hello Flutter world'),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  isLarge = true;
                  setState(() {});
                },
                child: const Icon(Icons.play_arrow),
              ),
              const SizedBox(width: 20),
              FloatingActionButton(
                onPressed: () {
                  isLarge = false;
                  setState(() {});
                },
                child: const Icon(Icons.lock_reset),
              )
            ],
          )
        ],
      ),
    );
  }
}
