import 'package:flutter/material.dart';

class Example11 extends StatefulWidget {
  const Example11({Key? key}) : super(key: key);

  @override
  State<Example11> createState() => _Example11State();
}

class _Example11State extends State<Example11> {
  bool isLarge = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 11'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: isLarge ? 300 : 100,
              width: isLarge ? 300 : 100,
              color: Colors.cyan,
              alignment: Alignment.center,
              child: AnimatedDefaultTextStyle(
                textAlign: TextAlign.center,
                duration: const Duration(seconds: 1),
                style: TextStyle(fontSize: isLarge ? 40 : 18),
                child: const Text(
                  'Hello Flutter world',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                isLarge = !isLarge;
                setState(() {});
              },
              child: const Text('Change size'),
            )
          ],
        ),
      ),
    );
  }
}
