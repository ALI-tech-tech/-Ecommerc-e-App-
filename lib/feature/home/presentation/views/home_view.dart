import 'package:ecommerceapp/core/core.dart';
import 'package:ecommerceapp/feature/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerWidget {
  static String route = "/homeView";

  const HomeView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQuery = ref.watch(searchQueryProvider);
    var selectedQuery = ref.watch(selectedQueryProvider);
    final productsAsyncValue = ref.watch(productsProvider);

    return Scaffold(
      body: ListView(
        children: [
          const HomeAppBar(),
          Container(
            height: productsAsyncValue.asData == null ? context.height : null,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: AppColors.grey2,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
            ),
            child: Column(
              children: [
                const CustomSearchBar(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: const Text(
                    "Categories",
                    style: TextStyles.heading2Bold,
                  ),
                ),
                 CategoriesWidget(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: const Text(
                    "Products",
                    style: TextStyles.heading2Bold,
                  ),
                ),
                productsAsyncValue.when(
                  data: (products) {
                    selectedQuery= selectedQuery=="All"?'':selectedQuery;
                    List<Product> filteredProducts = products;
                    if (searchQuery.isNotEmpty) {
                      filteredProducts = products
                          .where((product) => product.title!
                              .toLowerCase()
                              .contains(searchQuery.toLowerCase()))
                          .toList();
                    } else if (selectedQuery.isNotEmpty) {
                      filteredProducts = products
                          .where((product) => product.category == selectedQuery)
                          .toList();
                    }
                    return ItemsWidget(products: filteredProducts);
                  },
                  loading: () => const CircularLoadingWidget(),
                  error: (error, stack) => Center(child: Text('Error: $error')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
