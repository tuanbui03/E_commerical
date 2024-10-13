import 'dart:convert';
import 'package:http/http.dart' as http;
import '../linkAPI.dart';
import '../Model/voucher.dart';

class VoucherAPI {
  static dynamic getVouchers() async {
    const url = '${LinkAPI.api}voucher/all';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic getVoucherByID(int id) async {
    final url = '${LinkAPI.api}voucher/detail?id=$id';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  // static dynamic addVoucher(Voucher Voucher) async {
  //   var url = "${LinkAPI.api}Voucher/create";
  //   final uri = Uri.parse(url);
  //   var response = await http.post(uri,
  //       headers: <String, String>{"Content-Type": "application/json"},
  //       body: jsonEncode(<String, String>{
  //         "Vouchername": Voucher.VoucherName,
  //         "description": Voucher.description
  //       }));
  //   return response.body;
  // }

  // static dynamic updateVoucher(Voucher Voucher) async {
  //   var url = "${LinkAPI.api}Voucher/update";
  //   final uri = Uri.parse(url);
  //   var response = await http.put(uri,
  //       headers: <String, String>{"Content-Type": "application/json"},
  //       body: jsonEncode(<String, dynamic>{
  //         "VoucherID": Voucher.VoucherID,
  //         "Vouchername": Voucher.VoucherName,
  //         "description": Voucher.description
  //       }));
  //   return response.body;
  // }

  static dynamic deleteVoucherByID(int id) async {
    final url = '${LinkAPI.api}voucher/delete?id=$id';
    final uri = Uri.parse(url);
    final response = await http.delete(uri);
    return response.body;
  }
}
