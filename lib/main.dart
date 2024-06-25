import 'package:flutter/material.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Ali Ben Jahlan on 06/2024           ║
║═══════════════════════════════════════════════════║
║ +967 775 892 126                                  ║
║ alibenjhlan@gmail.com                          ║
╚═══════════════════════════════════════════════════╝
*/
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}