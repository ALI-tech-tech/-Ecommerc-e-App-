class ProductFormState {
  final String title;
  final double price;
  final String description;
  final String image;
  final String category;
  final bool isLoading;
  final String? error;

  ProductFormState({
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.category,
    this.isLoading = false,
    this.error,
  });

  ProductFormState copyWith({
    String? title,
    double? price,
    String? description,
    String? image,
    String? category,
    bool? isLoading,
    String? error,
  }) {
    return ProductFormState(
      title: title ?? this.title,
      price: price ?? this.price,
      description: description ?? this.description,
      image: image ?? this.image,
      category: category ?? this.category,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}