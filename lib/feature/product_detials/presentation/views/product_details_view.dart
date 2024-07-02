import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:ecommerceapp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../home/model/model.dart';
import '../../product_details.dart';

class ProductDetailsView extends ConsumerWidget {
  const ProductDetailsView({super.key});
  static String rout = "/productdetails";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;
    final productAsyncValue = ref.watch(productProvider(product.id!));
    return Scaffold(
      body: productAsyncValue.when(
        data: (product) => ListView(
          children: [
            const ItemAppBar(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.network(product.image!),
            ),
            Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: 30,
              child: Container(
                width: double.infinity,
                color: AppColors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 48,
                          bottom: 15,
                        ),
                        child: Text(
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          product.title!,
                          style: TextStyles.largeBold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RatingBar.builder(
                              initialRating: product.rating!.rate!,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 20,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, index) => const Icon(
                                Icons.favorite,
                                color: primaryColor,
                              ),
                              onRatingUpdate: (index) {},
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              product.rating!.count.toString(),
                              style: TextStyles.largeMedium,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          textAlign: TextAlign.justify,
                          product.description!,
                          style: TextStyles.mediumBold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        error: (error, stack) => Center(child: Text('Error: $error')),
        loading: () => const CircularLoadingWidget(),
      ),
      bottomNavigationBar: productAsyncValue.when(
        data: (product) => ItemBottomNavBar(
          product: product,
        ),
        error: (error, stack) => Center(child: Text('Error: $error')),
        loading: () => const CircularLoadingWidget(),
      ),
    );
  }
}
