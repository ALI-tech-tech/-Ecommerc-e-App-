import 'package:ecommerceapp/core/core.dart';
import 'package:ecommerceapp/feature/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../model/model.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key, required this.products});
  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 1,
<<<<<<< Updated upstream
      crossAxisCount: context.width ~/ 280,
=======
      crossAxisCount: context.width ~/ 300,
>>>>>>> Stashed changes
      shrinkWrap: true,
      children: List.generate(
          products.length,
          (index) => ItemCard(
                product: products[index],
              )),
    );
  }
}

