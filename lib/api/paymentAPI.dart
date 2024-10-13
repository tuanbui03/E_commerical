import '../linkAPI.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/brand.dart';
import '../model/payment.dart';
class PaymentAPI {
  static dynamic getPayments() async {
    const url = '${LinkAPI.api}payment/all';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic getPaymentByID(int id) async {
    final url = '${LinkAPI.api}payment/detail?id=$id';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic addPayment(Payment payment) async {
    var url = "${LinkAPI.api}payment/create";
    final uri = Uri.parse(url);
    var response = await http.post(uri,
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode(<String, String>{
          "paymentName": payment.paymentName,
          "description": payment.description
        }));
    return response.body;
  }

  static dynamic updatePayment(Payment payment) async {
    var url = "${LinkAPI.api}payment/update";
    final uri = Uri.parse(url);
    var response = await http.put(uri,
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode(<String, dynamic>{
          "paymentID": payment.paymentID,
          "paymentName": payment.paymentName,
          "description": payment.description
        }));
    return response.body;
  }

  static dynamic deletePaymentByID(int id) async {
    final url = '${LinkAPI.api}payment/delete?id=$id';
    final uri = Uri.parse(url);
    final response = await http.delete(uri);
    return response.body;
  }
}
