import '../linkAPI.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/brand.dart';
class OrderDetailAPI {
  static dynamic getOrderDetails() async {
    const url = '${LinkAPI.api}orderDetail/all';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic getOrderDetailByID(int id) async {
    final url = '${LinkAPI.api}orderDetail/detail?id=$id';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  // static dynamic addOrderDetail(OrderDetail OrderDetail) async {
  //   var url = "${LinkAPI.api}OrderDetail/create";
  //   final uri = Uri.parse(url);
  //   var response = await http.post(uri,
  //       headers: <String, String>{"Content-Type": "application/json"},
  //       body: jsonEncode(<String, String>{
  //         "OrderDetailname": OrderDetail.OrderDetailName,
  //         "description": OrderDetail.description
  //       }));
  //   return response.body;
  // }

  // static dynamic updateOrderDetail(OrderDetail OrderDetail) async {
  //   var url = "${LinkAPI.api}OrderDetail/update";
  //   final uri = Uri.parse(url);
  //   var response = await http.put(uri,
  //       headers: <String, String>{"Content-Type": "application/json"},
  //       body: jsonEncode(<String, dynamic>{
  //         "OrderDetailID": OrderDetail.OrderDetailID,
  //         "OrderDetailname": OrderDetail.OrderDetailName,
  //         "description": OrderDetail.description
  //       }));
  //   return response.body;
  // }

  static dynamic deleteOrderDetailByID(int id) async {
    final url = '${LinkAPI.api}orderDetail/delete?id=$id';
    final uri = Uri.parse(url);
    final response = await http.delete(uri);
    return response.body;
  }
}
