import 'package:flutter/material.dart';

class Example17 extends StatefulWidget {
  Example17({Key? key}) : super(key: key);

  @override
  State<Example17> createState() => _Example17State();
}

class _Example17State extends State<Example17> {
  bool reverse = true;
  bool first = true;
  bool second = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exapmle 17'),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(seconds: 1),
            top: reverse ? 10 : height - 180 - 10,
            left: reverse ? 10 : width - 10 - 150,
            child: GestureDetector(
              onTap: () async {
                second = false;
                // second = !second;
                setState(() {
                  reverse = !reverse;
                });
                await Future.delayed(
                  Duration(seconds: 1),
                  () {
                    second = true;
                  },
                );
                setState(() {});
              },
              child: AnimatedOpacity(
                opacity: first ? 1 : 0,
                duration: Duration(seconds: 0),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 100,
                  width: reverse ? 100 : 150,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: reverse ? height - 180 - 10 : 10,
            left: reverse ? width - 10 - 150 : 10,
            duration: Duration(seconds: 1),
            child: GestureDetector(
              onTap: () async {
                first = false;
                setState(() {
                  reverse = !reverse;
                });
                await Future.delayed(
                  Duration(seconds: 1),
                  () {
                    first = true;
                  },
                );
                setState(() {});
              },
              child: AnimatedOpacity(
                opacity: second ? 1 : 0,
                duration: Duration(seconds: 0),
                child: AnimatedContainer(
                  height: 100,
                  width: reverse ? 150 : 100,
                  color: Colors.green,
                  duration: Duration(seconds: 1),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
