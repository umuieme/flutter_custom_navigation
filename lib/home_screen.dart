import 'package:flutter/material.dart';
import 'package:flutter_navigation/navigation/router_info.dart';
import 'package:flutter_navigation/profile/profile_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Navigator(
              onGenerateRoute: RouterInfo.onGenerateRoute,
              initialRoute: RouterInfo.dashboard,
            );
          } else if (index == 1) {
            return const ProfileTab();
          }
          return const Text("Not found");
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) async {
          await _controller.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
      ),
    );
  }
}
