import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Example3 extends StatefulWidget {
  const Example3({Key? key}) : super(key: key);

  @override
  State<Example3> createState() => _Example3State();
}

class _Example3State extends State<Example3>
    with SingleTickerProviderStateMixin {
  double vert = 0;
  double horz = 0;
  int vertCount = 0;
  int horzCount = 0;
  int value = 50;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 3'),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            top: ((height - 300 - 100) / 2) + vert,
            left: ((width - 100) / 2) + horz,
            // bottom: height-300,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (vertCount >= -2) {
                        vertCount--;
                        vert -= value;
                      }

                      setState(() {});
                    },
                    child: const Icon(Icons.arrow_upward),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (horzCount >= -2) {
                            horzCount--;
                            horz -= value;
                          }
                          setState(() {});
                        },
                        child: const Icon(CupertinoIcons.back),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (horzCount <= 2) {
                            horzCount++;
                            horz += value;
                          }

                          setState(() {});
                        },
                        child: const Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (vertCount <= 2) {
                        vertCount++;
                        vert += value;
                      }
                      setState(() {});
                    },
                    child: const Icon(CupertinoIcons.down_arrow),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
