import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/home.dart';
import '../add_product.dart';
import 'product_notifire.dart';

final productFormProvider = StateNotifierProvider<ProductFormNotifier, ProductFormState>((ref) {
  return ProductFormNotifier(ref.read(productServiceProvider));
});