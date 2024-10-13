import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/brand.dart';

class BrandAPI {
  static dynamic getBrands() async {
    const url = '${LinkAPI.api}brand/all';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(const Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic getBrandByID(int id) async {
    final url = '${LinkAPI.api}brand/detail?id=$id';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(const Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic addBrand(Brand brand) async {
    var url = "${LinkAPI.api}brand/create";
    final uri = Uri.parse(url);
    var response = await http.post(uri,
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode(<String, String>{
          "brandname": brand.brandName,
          "description": brand.description
        }));
    return response.body;
  }

  static dynamic updateBrand(Brand brand) async {
    var url = "${LinkAPI.api}brand/update";
    final uri = Uri.parse(url);
    var response = await http.put(uri,
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode(<String, dynamic>{
          "brandID": brand.brandID,
          "brandname": brand.brandName,
          "description": brand.description
        }));
    return response.body;
  }

  static dynamic deleteBrandByID(int id) async {
    final url = '${LinkAPI.api}brand/delete?id=$id';
    final uri = Uri.parse(url);
    final response = await http.delete(uri);
    return response.body;
  }
}
