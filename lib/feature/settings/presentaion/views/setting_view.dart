import 'package:ecommerceapp/core/core.dart';
import 'package:ecommerceapp/feature/add_product/presntation/views/add_product_view.dart';
import 'package:flutter/material.dart';


class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
  static String rout="/setting";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
               context.pushNamed(AddProductView.rout);
              },
              child: const Card(
                child: ListTile(
                  title: Text('Add Product'),
                  leading: Icon(Icons.add_shopping_cart),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                context.showAlertDialog(icon: Icons.assignment_late_sharp, title: "Note", subTitle: "This feature will be added soon !!", buttonLabel: "Ok", onPressed: (p0) => context.pop(),);
              },
              child: const Card(
                child: ListTile(
                  title: Text('Add Category'),
                  leading: Icon(Icons.category),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
