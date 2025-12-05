import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("data"));
  }
}
