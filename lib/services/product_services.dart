import 'dart:convert';
import 'dart:io';
import '../feature/home/model/model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  Future<List<Product>> fetchProducts() async {
    try {
      final response =
          await http.get(Uri.parse('https://fakestoreapi.com/products'));
      List<Product> products = (jsonDecode(response.body) as List)
          .map((product) => Product.fromJson(product))
          .toList();
      return products;
    } catch (e) {
      if (e is HttpException) {
        print('HttpError: ${e.message}');
      } else {
        print('Error: $e');
      }
      throw Exception('Failed to load products');
    }
  }
}
