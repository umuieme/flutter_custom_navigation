import 'package:flutter/material.dart';
import 'package:flutter_navigation/navigation/router_info.dart';
import 'package:flutter_navigation/screen/second_screen.dart';

class FirstScreen extends StatelessWidget {
  final String title;

  const FirstScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$title => first screen'),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, RouterInfo.secondScreen),
              child: const Text("Open Second Screen"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute(
                  builder: (_) => SecondScreen(
                      title: "$title ==> From First screen as seperate "),
                ),
              ),
              child: const Text("Open Second Screen seperately"),
            )
          ],
        ),
      ),
    );
  }
}
