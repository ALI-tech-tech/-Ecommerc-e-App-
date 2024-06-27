import 'package:riverpod/riverpod.dart';
import '../model/model.dart';
import 'product_servies_provider.dart';

final productsProvider = FutureProvider<List<Product>>((ref) async {
  final productService = ref.read(productServiceProvider);
  return productService.fetchProducts();
});