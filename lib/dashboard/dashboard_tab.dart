import 'package:flutter/material.dart';
import 'package:flutter_navigation/navigation/router_info.dart';

class DashboardTab extends StatelessWidget {
  const DashboardTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dashboard Tab"),
        ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, RouterInfo.firstScreen,
              arguments: "From Dashboard tab"),
          child: const Text("go to first screen"),
        )
      ],
    );
  }
}
