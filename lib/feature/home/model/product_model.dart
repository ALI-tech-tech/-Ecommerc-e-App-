import 'rate_model.dart';

class Product {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  Product(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
      this.rating});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = toNum(json['price']);
    description = json['description'];
    category = json['category'];
    image = json['image'];
    if(json.containsKey("rating")) {
      rating =
        json['rating'] != null ? Rating.fromJson(json['rating']) : null;
    }

        print(this.toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
   
    data['title'] = this.title;
    data['price'] = this.price;
    data['description'] = this.description;
    data['category'] = this.category;
    data['image'] = this.image;
    return data;
  }

  @override
  String toString() {
   return ("${this.title},${this.description},${this.price},${this.image},${this.category},${this.image}");
  }
  toNum(dynamic data){
    return data is int?data.toDouble():data as double; 
  }
}

