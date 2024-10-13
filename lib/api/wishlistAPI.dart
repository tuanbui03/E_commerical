import 'dart:convert';
import 'package:http/http.dart' as http;
import '../linkAPI.dart';
import '../Model/wishlist.dart';

class WishlistAPI {
  static dynamic getWishlists() async {
    const url = '${LinkAPI.api}wishlist/all';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  static dynamic getWishlistByID(int id) async {
    final url = '${LinkAPI.api}wishlist/detail?id=$id';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return jsonDecode(Utf8Decoder().convert(response.bodyBytes));
  }

  // static dynamic addWishlist(Wishlist Wishlist) async {
  //   var url = "${LinkAPI.api}Wishlist/create";
  //   final uri = Uri.parse(url);
  //   var response = await http.post(uri,
  //       headers: <String, String>{"Content-Type": "application/json"},
  //       body: jsonEncode(<String, String>{
  //         "Wishlistname": Wishlist.WishlistName,
  //         "description": Wishlist.description
  //       }));
  //   return response.body;
  // }

  // static dynamic updateWishlist(Wishlist Wishlist) async {
  //   var url = "${LinkAPI.api}Wishlist/update";
  //   final uri = Uri.parse(url);
  //   var response = await http.put(uri,
  //       headers: <String, String>{"Content-Type": "application/json"},
  //       body: jsonEncode(<String, dynamic>{
  //         "WishlistID": Wishlist.WishlistID,
  //         "Wishlistname": Wishlist.WishlistName,
  //         "description": Wishlist.description
  //       }));
  //   return response.body;
  // }

  static dynamic deleteWishlistByID(int id) async {
    final url = '${LinkAPI.api}wishlist/delete?id=$id';
    final uri = Uri.parse(url);
    final response = await http.delete(uri);
    return response.body;
  }
}
