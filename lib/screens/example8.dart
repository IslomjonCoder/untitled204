import 'package:flutter/material.dart';

class Example8 extends StatefulWidget {
  Example8({Key? key}) : super(key: key);

  @override
  State<Example8> createState() => _Example8State();
}

class _Example8State extends State<Example8> {
  bool isLarge = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Example 8'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isLarge = !isLarge;
            });
          },
          child: AnimatedContainer(
            height: 150,
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: isLarge ? 150 : width - 20 * 2,
            color: Colors.blue,
            duration: Duration(milliseconds: 700),
          ),
        ),
      ),
    );
  }
}
