import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/home.dart';

final productProvider = FutureProvider<Product>((ref) async {
  final productService = ref.read(productServiceProvider);
  final productId =ref.read(productIdProvider.notifier).state;
  return productService.fetchProduct(id:productId! );
});