import 'package:ecommerceapp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../provider/provider.dart';

class CategoriesWidget extends ConsumerWidget {
  CategoriesWidget({super.key});
  bool isSelected = false;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(selectedQueryProvider.notifier).state;
    final selectedQueryNotifier = ref.read(selectedQueryProvider.notifier);

    return SizedBox(
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categry.length,
          itemBuilder: (context, index) {
            final isSelected = (selectedCategory == categry[index]) ||
                (selectedCategory.isEmpty && index == 0);
            return GestureDetector(
              onTap: () {
                selectedQueryNotifier.setQuery(categry[index]);
              },
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                      color: isSelected ? primaryColor : AppColors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    categry[index],
                    style: TextStyles.xLargeBold.copyWith(
                        color: isSelected ? AppColors.white : primaryColor),
                  )),
            );
          }),
    );
  }
}
