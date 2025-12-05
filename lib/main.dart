import 'package:amar_glass_app/Views/pages/cart_page.dart';
import 'package:amar_glass_app/Views/pages/home_page.dart';
import 'package:amar_glass_app/Views/pages/homepage_shell.dart';
import 'package:amar_glass_app/Views/pages/notification_page.dart';
import 'package:amar_glass_app/Views/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(EcommersApp());
}

class EcommersApp extends StatelessWidget {
  EcommersApp({super.key});

  final GoRouter _route = GoRouter(
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return HomepageShell(child: child);
        },
        routes: [
          GoRoute(
            path: "/",
            builder: (context, state) {
              return const Homepage();
            },
          ),
          GoRoute(
            path: "/notification",
            builder: (context, state) => const NotificationPage(),
          ),
          GoRoute(
            path: "/profile",
            builder: (context, state) => const ProfilePage(),
          ),
          GoRoute(path: "/cart", builder: (context, state) => const CartPage()),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      routerConfig: _route,
    );
  }
}
