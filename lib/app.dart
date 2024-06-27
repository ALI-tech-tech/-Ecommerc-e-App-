
import 'package:ecommerceapp/feature/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'core/core.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
<<<<<<< Updated upstream
      home:  const HomeView()
=======
<<<<<<< Updated upstream
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
=======
      home:   HomeView()
>>>>>>> Stashed changes
>>>>>>> Stashed changes
    );
  }
}
