import 'package:flutter/material.dart';
import 'screens/desktop_screen.dart';

void main() {
  runApp(const DexApp());
}

class DexApp extends StatelessWidget {
  const DexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Desktop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const DesktopScreen(),
    );
  }
}