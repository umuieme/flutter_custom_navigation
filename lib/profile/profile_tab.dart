import 'package:flutter/material.dart';
import 'package:flutter_navigation/screen/second_screen.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Profile Tab"),
        ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const SecondScreen(
                title: "From profile tab",
              ),
            ),
          ),
          child: const Text("go to Second screen"),
        )
      ],
    );
  }
}
