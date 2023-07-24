import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Center(
        child: Hero(
          tag: 'image',
          child: Image.asset(
            'assets/images/Yellow-lightning-bolt-illustration-on-transparent-background-PNG.png',
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
