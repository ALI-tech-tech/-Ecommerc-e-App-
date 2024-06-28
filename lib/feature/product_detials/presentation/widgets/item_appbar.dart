import 'package:ecommerceapp/core/core.dart';
import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () => context.pop(),
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: primaryColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Product",
              style: TextStyles.xLargeBold,
            ),
          )
        ],
      ),
    );
  }
}
