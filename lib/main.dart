import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'app.dart';
=======
<<<<<<< Updated upstream
=======
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';
>>>>>>> Stashed changes
>>>>>>> Stashed changes

/*
╔═══════════════════════════════════════════════════╗
║ Created by Ali Ben Jahlan on 06/2024           ║
║═══════════════════════════════════════════════════║
║ +967 775 892 126                                  ║
║ alibenjhlan@gmail.com                          ║
╚═══════════════════════════════════════════════════╝
*/
<<<<<<< Updated upstream
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}
=======
<<<<<<< Updated upstream
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
=======
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child:App()));
}
>>>>>>> Stashed changes
>>>>>>> Stashed changes
