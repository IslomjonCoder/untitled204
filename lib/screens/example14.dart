import 'dart:math';

import 'package:flutter/material.dart';

class Example14 extends StatefulWidget {
  const Example14({Key? key}) : super(key: key);

  @override
  State<Example14> createState() => _Example14State();
}

class _Example14State extends State<Example14>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Decoration> _colorAnimation;
  Color firstColor =
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  Color secondColor =
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  late Animation<double> valueAnimation;
  String value = "0";
  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..addListener(() {
            value = (valueAnimation.status == AnimationStatus.completed)
                ? valueAnimation.status.name
                : '${(controller.value * 100).round()}%';
            setState(() {});
          });

    _colorAnimation = DecorationTween(
      begin: BoxDecoration(color: firstColor, shape: BoxShape.circle),
      end: BoxDecoration(color: secondColor, shape: BoxShape.circle),
    ).animate(CurvedAnimation(parent: controller, curve: Curves.linear));
    valueAnimation = Tween<double>(begin: 1, end: 2)
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
        title: const Text('Example 14'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBoxTransition(
              decoration: _colorAnimation,
              child: const SizedBox(
                height: 100,
                width: 100,
              ),
            ),
            Text(value),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  firstColor = secondColor;
                  secondColor =
                      Color((Random().nextDouble() * 0xFFFFFF).toInt())
                          .withOpacity(1.0);
                  _colorAnimation = DecorationTween(
                    begin: BoxDecoration(
                      color: firstColor,
                      shape: BoxShape.circle,
                    ),
                    end: BoxDecoration(
                      color: secondColor,
                      shape: BoxShape.circle,
                    ),
                  ).animate(
                    CurvedAnimation(
                      parent: controller,
                      curve: Curves.linear,
                    ),
                  );
                });
                setState(() {
                  value = controller.status.name;
                });

                controller.reset();
                controller.forward();
              },
              child: const Text('Animate'),
            )
          ],
        ),
      ),
    );
  }
}
