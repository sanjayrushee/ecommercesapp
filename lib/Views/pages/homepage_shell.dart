import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomepageShell extends StatefulWidget {
  final Widget child;
  const HomepageShell({super.key, required this.child});

  @override
  State<HomepageShell> createState() => _HomepageShellState();
}

class _HomepageShellState extends State<HomepageShell> {
  int currentIndex = 0;
  final List<String> routes = ['/', '/notifications', '/orders', '/profile'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("data"), leading: Icon(Icons.abc_sharp)),
      body: widget.child,
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home_rounded), label: ""),
          NavigationDestination(
            icon: Icon(Icons.notification_important_outlined),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(Icons.receipt_long_rounded),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_outlined),
            label: "",
          ),
        ],
        onDestinationSelected: (int value) {
          setState(() {
            currentIndex = value;
          });
          context.go(routes[currentIndex]);
        },
        selectedIndex: currentIndex,
      ),
    );
  }
}
