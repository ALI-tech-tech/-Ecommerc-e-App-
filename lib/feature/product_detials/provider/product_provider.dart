import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/home.dart';

final productProvider = FutureProvider.family<Product,int>((ref,product_id) async {
  final productService = ref.read(productServiceProvider);
  return productService.fetchProduct(id:product_id );
});