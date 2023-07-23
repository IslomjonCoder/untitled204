import 'package:flutter/material.dart';

class Example11 extends StatefulWidget {
  Example11({Key? key}) : super(key: key);

  @override
  State<Example11> createState() => _Example11State();
}

class _Example11State extends State<Example11> {
  bool isLarge = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example 11'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
                duration: Duration(seconds: 1),
                height: isLarge ? 300 : 100,
                width: isLarge ? 300 : 100,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: AnimatedDefaultTextStyle(
                    child: Text(
                      'Hello Flutter world',
                      textAlign: TextAlign.center,
                    ),
                    style: TextStyle(fontSize: isLarge ? 40 : 18),
                    duration: Duration(seconds: 1))),
            ElevatedButton(
                onPressed: () {
                  isLarge = !isLarge;
                  setState(() {});
                },
                child: Text('Change size'))
          ],
        ),
      ),
    );
  }
}
