import '../linkAPI.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/brand.dart';
import '../model/product.dart';
import 'brandAPI.dart';

class ProductAPI {
  static dynamic getProducts() async {
    const url = '${LinkAPI.api}product/all';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic getProductByID(int id) async {
    final url = '${LinkAPI.api}product/detail?id=$id';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic addProduct(Product product) async {
    dynamic brand = await BrandAPI.getBrandByID(product.brandID);
    var url = "${LinkAPI.api}product/create";
    final uri = Uri.parse(url);
    var response = await http.post(uri,
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode(<String, dynamic>{
          "productID": product.productID,
          "brand": brand,
          "productName": product.productName,
          "price": product.price,
          "sale": product.sale,
          "description": product.description,
          "size": product.size,
          "color": product.color,
          "code": product.code,
          "discount": product.discount,
          "status": product.status
        }));
    return response.body;
  }

  static dynamic updateProduct(Product product) async {
    dynamic brand = await BrandAPI.getBrandByID(product.brandID);
    var url = "${LinkAPI.api}product/update";
    final uri = Uri.parse(url);
    var response = await http.put(uri,
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode(<String, dynamic>{
          "productID": product.productID,
          "brand": brand,
          "productName": product.productName,
          "price": product.price,
          "sale": product.sale,
          "description": product.description,
          "size": product.size,
          "color": product.color,
          "code": product.code,
          "discount": product.discount,
          "status": product.status
        }));
    return response.body;
  }

  static dynamic deleteProductByID(int id) async {
    final url = '${LinkAPI.api}product/delete?id=$id';
    final uri = Uri.parse(url);
    final response = await http.delete(uri);
    return response.body;
  }
}
