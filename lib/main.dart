import 'package:cine/ui/home_screen.dart';
import 'package:cine/ui/settings_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CineApp());

class CineApp extends StatelessWidget {
  const CineApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cine',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      routes: {
        '/settings': (_) => const SettingsScreen(),
      },
    );
  }
}