import 'package:flutter/material.dart';

class Example4 extends StatefulWidget {
  const Example4({Key? key}) : super(key: key);

  @override
  State<Example4> createState() => _Example1State();
}

class _Example1State extends State<Example4>
    with SingleTickerProviderStateMixin {
  double opacity = 1;
  bool isFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 4'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              alignment: Alignment.center,
              height: 200,
              width: 200,
              color: isFirst ? Colors.orange : Colors.green,
              child: AnimatedCrossFade(
                firstChild: const Text('This is First widget'),
                secondChild: const Text('This is Second widget'),
                crossFadeState: isFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(seconds: 1),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isFirst = !isFirst;
                });
              },
              child: const Text('Click here'),
            )
          ],
        ),
      ),
    );
  }
}
