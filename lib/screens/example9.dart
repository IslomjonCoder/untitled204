import 'package:flutter/material.dart';

class Example9 extends StatefulWidget {
  Example9({Key? key}) : super(key: key);

  @override
  State<Example9> createState() => _Example9State();
}

class _Example9State extends State<Example9> {
  bool isLarge = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Example 9'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
              textAlign: TextAlign.center,
              child: Text('Hello Flutter world'),
              style: TextStyle(
                  fontSize: isLarge ? 50 : 24,
                  color: isLarge ? Colors.red : Colors.blue),
              duration: Duration(milliseconds: 700)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  isLarge = true;
                  setState(() {});
                },
                child: Icon(Icons.play_arrow),
              ),
              SizedBox(width: 20),
              FloatingActionButton(
                onPressed: () {
                  isLarge = false;
                  setState(() {});
                },
                child: Icon(Icons.lock_reset),
              )
            ],
          )
        ],
      ),
    );
  }
}
