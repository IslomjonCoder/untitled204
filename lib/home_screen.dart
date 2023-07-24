import 'package:flutter/material.dart';
import 'package:untitled20/screens/example1.dart';
import 'package:untitled20/screens/example10.dart';
import 'package:untitled20/screens/example11.dart';
import 'package:untitled20/screens/example12.dart';
import 'package:untitled20/screens/example13.dart';
import 'package:untitled20/screens/example14.dart';
import 'package:untitled20/screens/example15/welcome_screen.dart';
import 'package:untitled20/screens/example16.dart';
import 'package:untitled20/screens/example17.dart';
import 'package:untitled20/screens/example2.dart';
import 'package:untitled20/screens/example3.dart';
import 'package:untitled20/screens/example4.dart';
import 'package:untitled20/screens/example5.dart';
import 'package:untitled20/screens/example6.dart';
import 'package:untitled20/screens/example7.dart';
import 'package:untitled20/screens/example8.dart';
import 'package:untitled20/screens/example9.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List screens = [
    const Example1(),
    const Example2(),
    const Example3(),
    const Example4(),
    const Example5(),
    const Example6(),
    const Example7(),
    const Example8(),
    const Example9(),
    const Example10(),
    const Example11(),
    const Example12(),
    const Example13(),
    const Example14(),
    const WelcomeScreen(),
    Example16(),
    Example17()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) => ListTile(
          title: Text('Example ${index + 1}'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => screens[index],
              ),
            );
          },
        ),
        itemCount: screens.length,
      ),
    );
  }
}
