import 'package:flutter/material.dart';
import 'package:multimedia_app/ui/screens/category_detail.screen.dart';
import 'package:multimedia_app/ui/screens/home.screen.dart';
import 'package:multimedia_app/ui/screens/login.screen.dart';
import 'package:multimedia_app/utils/injectable_config.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multimedia App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/category-detail': (context) => const CategoryDetailScreen(),
      },
    );
  }
}
