import 'package:ecommerceapp/core/core.dart';
import 'package:ecommerceapp/feature/home/model/model.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(
                product.image!,
                height: 120,
                width: 120,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            alignment: Alignment.bottomLeft,
            child: Text(
              product.title!,
              style: TextStyles.xLargeBold,
<<<<<<< Updated upstream
=======
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
>>>>>>> Stashed changes
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              product.description!,
              style: TextStyles.largeRegular,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${product.price}",
                  style: TextStyles.largeRegular,
                ),
                const Icon(
                  Icons.shopping_cart_checkout,
                  color: primaryColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
