import 'package:flutter/material.dart';

class Example10 extends StatefulWidget {
  Example10({Key? key}) : super(key: key);

  @override
  State<Example10> createState() => _Example10State();
}

class _Example10State extends State<Example10> {
  bool isTop = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example 10'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              height: 200,
              width: 200,
              alignment: isTop ? Alignment.topLeft : Alignment.bottomRight,
              color: Colors.cyan,
              duration: Duration(milliseconds: 1500),
              curve: Curves.bounceInOut,
              child: Text('Text'),
            ),
            TextButton(
                onPressed: () {
                  isTop = !isTop;
                  setState(() {});
                },
                child: Text('Change text align'))
          ],
        ),
      ),
    );
  }
}
