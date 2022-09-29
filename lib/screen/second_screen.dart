import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String title;

  const SecondScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("second screen"),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
