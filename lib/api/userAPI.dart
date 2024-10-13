import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Model/user.dart';
import '../linkAPI.dart';

class UserAPI {
  static dynamic getUsers() async {
    const url = '${LinkAPI.api}user/all';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic getUserByID(int id) async {
    final url = '${LinkAPI.api}user/detail?id=$id';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic loginUser(String email,String password) async {
      var url = "${LinkAPI.api}login_user?email=$email&password=$password";
      final uri = Uri.parse(url);
      final response = await http.get(uri);
      return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic addUser(User user) async {
    var url = "${LinkAPI.api}user/create";
    final uri = Uri.parse(url);
    var response = await http.post(uri,
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode(<String, dynamic>{
          "userID": 0,
          "user_name": user.userName,
          "full_name": user.fullName,
          "password": user.password,
          "gender": user.gender,
          "email": user.email,
          "image": user.image,
          "phone": user.phone,
          "address": user.address,
          "birthday": user.birthday,
          "role": user.role,
          "status": user.status
        }));
    return response.body;
  }

  static dynamic updateUser(User user) async {
    var url = "${LinkAPI.api}user/update";
    final uri = Uri.parse(url);
    var response = await http.put(uri,
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode(<String, dynamic>{
          "userID": user.userID,
          "user_name": user.userName,
          "full_name": user.fullName,
          "password": user.password,
          "gender": user.gender,
          "email": user.email,
          "image": user.image,
          "phone": user.phone,
          "address": user.address,
          "birthday": user.birthday,
          "role": user.role,
          "status": user.status
        }));
    return response.body;
  }

  static dynamic deleteUserByID(int id) async {
    final url = '${LinkAPI.api}user/delete?id=$id';
    final uri = Uri.parse(url);
    final response = await http.delete(uri);
    return response.body;
  }
}
