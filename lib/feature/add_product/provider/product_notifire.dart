import 'package:ecommerceapp/services/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../home/home.dart';
import '../model/model.dart';

class ProductFormNotifier extends StateNotifier<ProductFormState> {
  final ProductService _productService;
   List<Product> product=[];
  ProductFormNotifier(this._productService)
      : super(ProductFormState(
          title: '',
          price: 0.0,
          description: '',
          image: '',
          category: '',
        ));

  void updateTitle(String title) {
    state = state.copyWith(title: title);
  }

  void updatePrice(double price) {
    state = state.copyWith(price: price);
  }

  void updateDescription(String description) {
    state = state.copyWith(description: description);
  }

  void updateImage(String image) {
    state = state.copyWith(image: image);
  }

  void updateCategory(String category) {
    state = state.copyWith(category: category);
  }

  Future<void> submitForm() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final product = Product(
        title: state.title,
        price: state.price,
        description: state.description,
        image: state.image,
        category: state.category,
      );
      this.product.add( await _productService.addProduct(product));
      state = ProductFormState(
        title: '',
        price: 0.0,
        description: '',
        image: '',
        category: '',
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}