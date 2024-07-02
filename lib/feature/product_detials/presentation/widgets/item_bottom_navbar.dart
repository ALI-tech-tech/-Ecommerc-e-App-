import 'package:ecommerceapp/core/core.dart';
import 'package:ecommerceapp/feature/home/model/model.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    // Product product = Product(
    //     id: 1,
    //     title: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
    //     price: 109.95,
    //     description:
    //         "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
    //     category: "men's clothing",
    //     image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
    //     rating: Rating(rate: 3.9, count: 120));
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: AppColors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0, 3),
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${product.price}",
              style: TextStyles.xLargeBold,
            )
          ],
        ),
      ),
    );
  }
}
