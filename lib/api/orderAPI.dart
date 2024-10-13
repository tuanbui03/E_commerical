import 'dart:convert';
import 'package:http/http.dart' as http;
import '../linkAPI.dart';
import '../Model/order.dart';

class OrderAPI {
  static dynamic getOrders() async {
    const url = '${LinkAPI.api}order/all';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic getOrderByID(int id) async {
    final url = '${LinkAPI.api}order/detail?id=$id';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  // static dynamic addOrder(Order Order) async {
  //   var url = "${LinkAPI.api}Order/create";
  //   final uri = Uri.parse(url);
  //   var response = await http.post(uri,
  //       headers: <String, String>{"Content-Type": "application/json"},
  //       body: jsonEncode(<String, String>{
  //         "Ordername": Order.OrderName,
  //         "description": Order.description
  //       }));
  //   return response.body;
  // }

  // static dynamic updateOrder(Order Order) async {
  //   var url = "${LinkAPI.api}Order/update";
  //   final uri = Uri.parse(url);
  //   var response = await http.put(uri,
  //       headers: <String, String>{"Content-Type": "application/json"},
  //       body: jsonEncode(<String, dynamic>{
  //         "OrderID": Order.OrderID,
  //         "Ordername": Order.OrderName,
  //         "description": Order.description
  //       }));
  //   return response.body;
  // }

  static dynamic deleteOrderByID(int id) async {
    final url = '${LinkAPI.api}order/delete?id=$id';
    final uri = Uri.parse(url);
    final response = await http.delete(uri);
    return response.body;
  }
}
