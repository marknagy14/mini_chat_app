import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(title:const Text("login"),),
      body: const Text("hello to login screen"),
    );
  }
}