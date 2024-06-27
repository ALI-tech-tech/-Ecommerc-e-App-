import 'package:ecommerceapp/core/core.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.all(25),
      child: const Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: primaryColor,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Ruken",
              style: TextStyles.heading2Bold,
            ),
          ),
        ],
      ),
    );
  }
}
