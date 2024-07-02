import 'dart:convert';
import 'dart:io';
import '../feature/home/model/model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  String baseUrl = 'https://fakestoreapi.com';

  Future<List<Product>> fetchAllProducts() async {
    try {
      final response = await http.get(Uri.parse("$baseUrl/products"));
      print(response.body);
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

  Future<Product> fetchProduct({required int id}) async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/products/$id'));
      print(response.body);
      Product products = Product.fromJson(jsonDecode(response.body));
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

   Future<Product> addProduct(Product product) async {
    final response = await http.post(
      Uri.parse('$baseUrl/products'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode(product.toJson()),
    );

    if (response.statusCode == 200) {
      print(json.decode(response.body));
      return Product.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to add product');
    }
  }
}
