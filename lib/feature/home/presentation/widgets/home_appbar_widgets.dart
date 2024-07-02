import 'package:ecommerceapp/core/core.dart';
import 'package:ecommerceapp/feature/settings/presentaion/views/setting_view.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color: primaryColor,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Ruken",
              style: TextStyles.heading2Bold,
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                context.pushNamed(SettingsView.rout);
              },
              icon: const Icon(
                Icons.settings,
                color: primaryColor,
              ))
        ],
      ),
    );
  }
}
