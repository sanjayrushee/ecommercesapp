import 'package:flutter/material.dart';

void main() {
  runApp(const EcommersApp());
}

class EcommersApp extends StatelessWidget {
  const EcommersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const Homepage());
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
