import '../linkAPI.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/image.dart';
import 'productAPI.dart';

class ImageAPI {
  static dynamic getImages() async {
    const url = '${LinkAPI.api}image/all';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic getImageByID(int id) async {
    final url = '${LinkAPI.api}image/detail?id=$id';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic addImage(Images image) async {
    dynamic product = await ProductAPI.getProductByID(image.productID);
    var url = "${LinkAPI.api}image/create";
    final uri = Uri.parse(url);
    var response = await http.post(uri,
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode(<String, dynamic>{
          "imageID": 0,
          "product": product,
          "images": image.image
        }));
    return response.body;
  }

  static dynamic updateImage(Images image) async {
    dynamic product = await ProductAPI.getProductByID(image.productID);
    var url = "${LinkAPI.api}image/update";
    final uri = Uri.parse(url);
    var response = await http.put(uri,
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode(<String, dynamic>{
          "imageID": image.imageID,
          "product": product,
          "images": image.image
        }));
    return response.body;
  }

  static dynamic deleteImageByID(int id) async {
    final url = '${LinkAPI.api}image/delete?id=$id';
    final uri = Uri.parse(url);
    final response = await http.delete(uri);
    return response.body;
  }
}
