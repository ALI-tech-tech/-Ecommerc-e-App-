import 'package:ecommerceapp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../provider/provider.dart';

class CategoriesWidget extends ConsumerWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedQueryNotifier = ref.read(selectedQueryProvider.notifier);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categry.length,
          (index) => InkWell(
            onTap: () {
              String cat=categry[index]=="All"?'':categry[index];
              return selectedQueryNotifier.setQuery(cat);
            },
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    color: AppColors.white ,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  categry[index],
                  style: TextStyles.xLargeBold,
                )),
          ),
        ),
      ),
    );
  }
}
