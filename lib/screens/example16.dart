import 'package:flutter/material.dart';

class Example16 extends StatefulWidget {
  Example16({Key? key}) : super(key: key);

  @override
  State<Example16> createState() => _Example1State();
}

class _Example1State extends State<Example16>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> sizeAnimation;
  late Animation colorAnimation;
  late Animation<Decoration> decorationAnimation;
  late Animation<Decoration> decorationAnimation2;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..repeat(reverse: true);
    sizeAnimation = Tween<double>(begin: 1, end: 1.8)
        .animate(CurvedAnimation(parent: controller, curve: Curves.linear));
    colorAnimation = ColorTween(begin: Colors.yellowAccent, end: Colors.purple)
        .animate(CurvedAnimation(parent: controller, curve: Curves.linear));
    decorationAnimation = DecorationTween(
            begin: BoxDecoration(color: Colors.purple, shape: BoxShape.circle),
            end: BoxDecoration(color: Colors.yellow, shape: BoxShape.circle))
        .animate(CurvedAnimation(parent: controller, curve: Curves.linear));
    decorationAnimation2 = DecorationTween(
            begin: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 30,
                    offset: Offset(10, 10),
                    spreadRadius: 30,
                    color: Colors.grey.withOpacity(0.2),
                    blurStyle: BlurStyle.inner,
                  )
                ]),
            end: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 30,
                      color: Colors.grey.withOpacity(0.2),
                      blurStyle: BlurStyle.inner,
                      spreadRadius: 30)
                ]))
        .animate(CurvedAnimation(parent: controller, curve: Curves.linear));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exapmle 16'),
      ),
      body: Center(
        child: DecoratedBoxTransition(
          decoration: decorationAnimation2,
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            child: ScaleTransition(
              scale: sizeAnimation,
              child: DecoratedBoxTransition(
                decoration: decorationAnimation,
                child: Container(
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
