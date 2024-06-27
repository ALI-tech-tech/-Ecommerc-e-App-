import 'package:ecommerceapp/core/core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/provider.dart';

class CustomSearchBar extends ConsumerWidget {
   const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 50,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(30)),
        child: Row(children: [
          Container(
            margin: const EdgeInsets.only(left: 5),
            height: 50,
            width: 300,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Search here...",
              ),

              onChanged: (value) {
                ref.read(searchQueryProvider.notifier).state = value;
              },

            ),
          ),
          const Spacer(),
          const Icon(
            Icons.search,
            size: 27,
            color: primaryColor,
          )
        ]));
  }
}
