import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Ali Ben Jahlan on 06/2024           ║
║═══════════════════════════════════════════════════║
║ +967 775 892 126                                  ║
║ alibenjhlan@gmail.com                          ║
╚═══════════════════════════════════════════════════╝
*/
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child:App()));
}
