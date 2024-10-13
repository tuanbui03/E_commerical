
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/feedback.dart';

class FeedbackAPI {
  static dynamic getFeedbacks() async {
    const url = '${LinkAPI.api}feedback/all';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic getFeedbackByID(int id) async {
    final url = '${LinkAPI.api}feedback/detail?id=$id';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic addFeedback(Feedbacks feedback) async {
    dynamic user = await UserAPI.getUserByID(feedback.userID);
    dynamic product = await ProductAPI.getProductByID(feedback.productID);
    var url = "${LinkAPI.api}feedback/create";
    final uri = Uri.parse(url);
    var response = await http.post(uri,
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode(<String, dynamic>{
          "feedbackID": 0,
          "user": user,
          "product": product,
          "content": feedback.content
        }));
    return response.body;
  }

  static dynamic updateFeedback(Feedbacks feedback) async {
    dynamic user = await UserAPI.getUserByID(feedback.userID);
    dynamic product = await ProductAPI.getProductByID(feedback.productID);
    var url = "${LinkAPI.api}feedback/update";
    final uri = Uri.parse(url);
    var response = await http.put(uri,
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode(<String, dynamic>{
          "feedbackID": feedback.feedbackID,
          "user": user,
          "product": product,
          "content": feedback.content
        }));
    return response.body;
  }

  static dynamic deleteFeedbackByID(int id) async {
    final url = '${LinkAPI.api}feedback/delete?id=$id';
    final uri = Uri.parse(url);
    final response = await http.delete(uri);
    return response.body;
  }
}
