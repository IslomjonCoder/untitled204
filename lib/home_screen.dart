import 'package:flutter/material.dart';
import 'package:untitled20/screens/example1.dart';
import 'package:untitled20/screens/example10.dart';
import 'package:untitled20/screens/example11.dart';
import 'package:untitled20/screens/example12.dart';
import 'package:untitled20/screens/example13.dart';
import 'package:untitled20/screens/example14.dart';
import 'package:untitled20/screens/example2.dart';
import 'package:untitled20/screens/example3.dart';
import 'package:untitled20/screens/example4.dart';
import 'package:untitled20/screens/example5.dart';
import 'package:untitled20/screens/example6.dart';
import 'package:untitled20/screens/example7.dart';
import 'package:untitled20/screens/example8.dart';
import 'package:untitled20/screens/example9.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List screens = [
    Example1(),
    Example2(),
    Example3(),
    Example4(),
    Example5(),
    Example6(),
    Example7(),
    Example8(),
    Example9(),
    Example10(),
    Example11(),
    Example12(),
    Example13(),
    Example14(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) => ListTile(
          title: Text('Example ${index + 1}'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => screens[index],
                ));
          },
        ),
        itemCount: screens.length,
      ),
    );
  }
}
