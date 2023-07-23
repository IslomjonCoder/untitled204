import 'package:flutter/material.dart';

class Example12 extends StatefulWidget {
  Example12({Key? key}) : super(key: key);

  @override
  State<Example12> createState() => _Example12State();
}

class _Example12State extends State<Example12>
    with SingleTickerProviderStateMixin {
  bool isLarge = false;
  late AnimationController controller;
  late final Animation<Decoration> _decorationAnimation;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..repeat(reverse: true);

    _decorationAnimation = DecorationTween(
            begin: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                border: Border.all(width: 1),
                color: Colors.blue),
            end: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 5),
                color: Colors.yellow))
        .animate(CurvedAnimation(parent: controller, curve: Curves.linear));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example 12'),
      ),
      body: Center(
        child: DecoratedBoxTransition(
          decoration: _decorationAnimation,
          child: Container(
            height: 150,
            width: 150,
          ),
        ),
      ),
    );
  }
}
