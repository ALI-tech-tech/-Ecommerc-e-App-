import 'package:dio/dio.dart';

import '../feature/home/model/model.dart';


class ProductService {
  final Dio _dio = Dio();

  Future<List<Product>> fetchProducts() async {
    try {
      final response = await _dio.get('https://fakestoreapi.com/products');
      print(response.data);
      List<Product> products = (response.data as List)
          .map((product) => Product.fromJson(product))
          .toList();
          print(products[0].description);
      return products;
    } catch (e) {
      throw Exception('Failed to load products');
    }
  }
}


// class ProductService {
//   final Dio _dio = Dio();

//   Future<List<Product>> fetchProducts() async {
//     try {
//       final response = await _dio.get('https://fakestoreapi.com/products');
//       print(response.data);
//       List<Product> products = (response.data as List)
//           .map((product) => Product.fromJson(product))
//           .toList();
//       print(products[0].description);
//       return products;
//     } catch (e) {
//       if (e is DioError) {
//         // Print detailed error information
//         print('DioError: ${e.message}');
//         if (e.response != null) {
//           print('Response data: ${e.response?.data}');
//           print('Response headers: ${e.response?.headers}');
//           print('Response status code: ${e.response?.statusCode}');
//         }
//       } else {
//         print('Error: $e');
//       }
//       throw Exception('Failed to load products');
//     }
//   }
// }